import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import '/resources/resources.dart';
import 'package:get/get.dart';

class StateHandleWidget extends StatefulWidget {
  /// can override setting Visibility emptyView even if [emptyEnabled] is true
  final bool visibleOnEmpty;

  /// can override setting Visibility emptyView even if [errorEnabled] is true
  final bool visibleOnError;

  /// controller view state "true" mean show loadingView
  final bool loadingEnabled;

  /// controller view state "true" mean show emptyView
  final bool emptyEnabled;

  /// controller view state "true" mean show errorView
  final bool errorEnabled;

  /// loading view that will show if [loadingEnabled] is true
  final Widget? loadingView;

  /// image that will show if [emptyEnabled] is true
  final String? emptyImage;

  /// title that will show if [emptyEnabled] is true
  final String? emptyTitle;

  /// subtitle that will show if [emptyEnabled] is true
  final String? emptySubtitle;

  /// image that will show if [errorEnabled] is true
  final ImageProvider? errorImage;

  /// title that will show if [errorEnabled] is true
  final String? errorTitle;

  /// subtitle that will show if [errorEnabled] is true
  final String? errorSubtitle;

  /// function to controll onPress 'retry' if [errorEnabled] is true
  final void Function()? onRetryPressed;

  /// main body / main content / success view
  /// usualy widget that show data
  final Widget body;

  const StateHandleWidget({
    Key? key,
    required this.body,
    this.emptyImage,
    this.emptyTitle,
    this.emptySubtitle,
    this.onRetryPressed,
    this.loadingView,
    this.emptyEnabled = false,
    this.loadingEnabled = false,
    this.errorEnabled = false,
    this.visibleOnEmpty = true,
    this.visibleOnError = true,
    this.errorImage,
    this.errorSubtitle,
    this.errorTitle,
  }) : super(key: key);

  @override
  _StateHandleWidgetState createState() => _StateHandleWidgetState();
}

class _StateHandleWidgetState extends State<StateHandleWidget> {
  @override
  Widget build(BuildContext context) {
    var loadingWidget = widget.loadingView ?? CircularProgressIndicator();

    return Stack(
      children: [
        getBodyWidget(),
        getErrorView(),
        getEmptyView(),
        getLoadingView(loadingWidget),
      ],
    );
  }

  Widget getBodyWidget() =>
      widget.loadingEnabled || widget.emptyEnabled || widget.errorEnabled
          ? Container()
          : widget.body;

  Widget getLoadingView(Widget loadingWidget) => widget.loadingEnabled
      ? Center(
          child: AnimatedOpacity(
            opacity: widget.loadingEnabled ? 1.0 : 0.0,
            duration: Duration(milliseconds: 200),
            child: loadingWidget,
          ),
        )
      : Container();

  Widget getEmptyView() => widget.visibleOnEmpty &&
          widget.emptyEnabled &&
          !widget.errorEnabled &&
          !widget.loadingEnabled
      ? buildEmpty()
      : Container();

  Widget buildEmpty() => Center(
        heightFactor: 1.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.emptyImage == null
            ? Image(
                width: 64.w,
                fit: BoxFit.fill,
                image: AssetImage(
                  widget.emptyImage ?? AppImages.imgEmpty.path,
                ),
              )
            : SvgPicture.asset(
                widget.emptyImage!,
                width: 64.w,
                fit: BoxFit.fill,
              ),
            Container(
              margin: const EdgeInsets.fromLTRB(24, 40, 24, 20),
              child: Text(
                "txt_general_no_result_found".tr,
                style:  Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: AppColors.colorSecondary
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );

  Widget getErrorView() =>
      widget.visibleOnError && widget.errorEnabled ? buildError() : Container();

  Widget buildError() => Center(
        heightFactor: 1.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 24),
              child: Text(
                "txt_general_oops".tr,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.danger
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Image(
                width: 80.w,
                height: null,
                fit: BoxFit.fill,
                image: widget.errorImage ?? AppImages.imgErrorState.image().image,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(16, 24, 16, 0),
              child: Text(
                "txt_general_something_went_wrong".tr,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: AppColors.colorSecondary
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
}
