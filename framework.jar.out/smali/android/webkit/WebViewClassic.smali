.class public final Landroid/webkit/WebViewClassic;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/webkit/WebViewProvider;
.implements Landroid/webkit/WebViewProvider$ScrollDelegate;
.implements Landroid/webkit/WebViewProvider$ViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewClassic$StylusEventListener;,
        Landroid/webkit/WebViewClassic$InvokeListBox;,
        Landroid/webkit/WebViewClassic$PageSwapDelegate;,
        Landroid/webkit/WebViewClassic$FocusTransitionDrawable;,
        Landroid/webkit/WebViewClassic$PrivateHandler;,
        Landroid/webkit/WebViewClassic$HoverScrollHandler;,
        Landroid/webkit/WebViewClassic$RequestFormData;,
        Landroid/webkit/WebViewClassic$DateTimePicker;,
        Landroid/webkit/WebViewClassic$ColorPickerAdapter;,
        Landroid/webkit/WebViewClassic$ColorPickerDialog;,
        Landroid/webkit/WebViewClassic$SelectionHandleAlpha;,
        Landroid/webkit/WebViewClassic$ViewSizeData;,
        Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;,
        Landroid/webkit/WebViewClassic$DestroyNativeRunnable;,
        Landroid/webkit/WebViewClassic$TitleBarDelegate;,
        Landroid/webkit/WebViewClassic$PackageListener;,
        Landroid/webkit/WebViewClassic$ProxyReceiver;,
        Landroid/webkit/WebViewClassic$TrustStorageListener;,
        Landroid/webkit/WebViewClassic$Factory;,
        Landroid/webkit/WebViewClassic$CmdVal;,
        Landroid/webkit/WebViewClassic$FocusNodeHref;,
        Landroid/webkit/WebViewClassic$OnTrimMemoryListener;,
        Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;,
        Landroid/webkit/WebViewClassic$PastePopupWindow;,
        Landroid/webkit/WebViewClassic$WebViewInputConnection;
    }
.end annotation


# static fields
.field private static final ANGLE_HORIZ:F = 0.0f

.field private static final ANGLE_VERT:F = 2.0f

.field private static final APN_CMWAP:Ljava/lang/String; = "cmwap"

.field static final AUTOFILL_COMPLETE:I = 0x86

.field static final AUTOFILL_FORM:I = 0x94

.field private static final AUTO_REDRAW_HACK:Z = false

.field public static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_NEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusNext"

.field public static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_PREV:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusPrev"

.field public static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_PREV_NEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.BrowserPrevNext"

.field private static final CARET_HANDLE_STAMINA_MS:J = 0xbb8L

.field static final CENTER_FIT_RECT:I = 0x7f

.field private static CHANNEL_DISTANCE:I = 0x0

.field static final CLEAR_CARET_HANDLE:I = 0x90

.field static final CLEAR_TEXT_ENTRY:I = 0x6f

.field private static final CMCC:Ljava/lang/String; = "CMCC"

.field private static final COLOR_GRID_COL_WIDTH:I = 0x32

.field static final COPY_TO_CLIPBOARD:I = 0x8d

.field static final DATE_DIALOG_ID:I = 0x0

.field static final DATE_TIME_DIALOG_ID:I = 0x2

.field private static final DEBUG_TOUCH_HIGHLIGHT:Z = true

.field private static final DEFAULT_SELECT_AUTOSCROLL_VAL:I = 0x28

.field static final DEFAULT_VIEWPORT_WIDTH:I = 0x3d4

.field static final DISPLAY_ACTION_BAR:I = 0xa1

.field private static final DRAG_HELD_MOTIONLESS:I = 0x8

.field private static final DRAG_LAYER_FINGER_DISTANCE:I = 0x4e20

.field private static final DRAW_EXTRAS_CURSOR_RING:I = 0x2

.field private static final DRAW_EXTRAS_NONE:I = 0x0

.field private static final DRAW_EXTRAS_SELECTION:I = 0x1

.field private static final EDIT_RECT_BUFFER:I = 0xa

.field static final EDIT_TEXT_SIZE_CHANGED:I = 0x96

.field private static final EMAIL_FIXED_HEIGHT:I = 0xf0

.field private static final ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String; = null

.field private static ENABLE_SCROLL_PERFORMANCE_PATCH:Z = false

.field private static ENABLE_ZOOM_PERFORMANCE_PATCH:Z = false

.field static final ENTER_FULLSCREEN_VIDEO:I = 0x89

.field static final EXIT_FULLSCREEN_VIDEO:I = 0x8c

.field private static final FIRST_PACKAGE_MSG_ID:I = 0x65

.field private static final FIRST_PRIVATE_MSG_ID:I = 0x1

.field static final FOCUS_NODE_CHANGED:I = 0x93

.field static final HANDLE_ID_LEFT:I = 0x0

.field static final HANDLE_ID_RIGHT:I = 0x1

.field static final HIDE_FULLSCREEN:I = 0x79

.field static final HIGHLIGHT_COLOR:I = 0x66ff9129

.field static final HIT_TEST_RESULT:I = 0x83

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_LEFT:I = 0x3

.field static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x4

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final HSLOPE_TO_BREAK_SNAP:F = 0.4f

.field private static final HSLOPE_TO_START_SNAP:F = 0.25f

.field static final HandlerPackageDebugString:[Ljava/lang/String; = null

.field static final HandlerPrivateDebugString:[Ljava/lang/String; = null

.field static final INIT_EDIT_FIELD:I = 0x8e

.field static final INIT_SELECT_FIELD:I = 0xaa

.field static final INVAL_RECT_MSG_ID:I = 0x75

.field static final KEY_PRESS:I = 0x91

.field private static final LAST_PACKAGE_MSG_ID:I = 0x83

.field private static final LAST_PRIVATE_MSG_ID:I = 0xb

.field static final LOGTAG:Ljava/lang/String; = "webview"

.field static final LONG_PRESS_CENTER:I = 0x72

.field private static final LONG_PRESS_TIMEOUT:I = 0x3e8

.field static final MAGNIFIER_MOVE:I = 0xa5

.field private static final MAX_DURATION:I = 0x2ee

.field private static final METROPCS:Ljava/lang/String; = "MetroPCS"

.field private static final MINIMUM_VELOCITY_RATIO_FOR_ACCELERATION:F = 0.2f

.field private static final MIN_DISPLAY_CHANABLE_VALUE:I = 0x3

.field private static final MIN_FLING_TIME:I = 0xfa

.field private static final MMA_WEIGHT_N:F = 5.0f

.field private static final MOTIONLESS_FALSE:I = 0x0

.field private static final MOTIONLESS_IGNORE:I = 0x3

.field private static final MOTIONLESS_PENDING:I = 0x1

.field private static final MOTIONLESS_TIME:I = 0x64

.field private static final MOTIONLESS_TRUE:I = 0x2

.field private static final NEVER_REMEMBER_PASSWORD:I = 0x2

.field static final NEW_PICTURE_MSG_ID:I = 0x69

.field private static final NEW_SELECTION_DONE:I = 0x0

.field private static final NEW_SELECTION_REQUESTING:I = 0x1

.field private static final NEW_SELECTION_SELECTED:I = 0x2

.field static final NO_BOTTOMEDGE:I = -0x1

.field static final NO_LEFTEDGE:I = -0x1

.field static final NO_RIGHTEDGE:I = -0x1

.field static final NO_TOPEDGE:I = -0x1

.field private static ONEWAY_SCROLL_TRIGGER_BOUNDARY:I = 0x0

.field private static final PAGE_SCROLL_OVERLAP:I = 0x18

.field private static final PREVENT_DEFAULT_TIMEOUT:I = 0xa

.field static final PREVENT_TOUCH_ID:I = 0x73

.field private static final PROPERTY_BROWSER_APN:Ljava/lang/String; = "android.com.browser.apn"

.field private static final PROXY_CMRI_HOST:Ljava/lang/String; = "192.168.230.8"

.field private static final PROXY_CMWAP_HOST:Ljava/lang/String; = "10.0.0.172"

.field private static final PROXY_CMWAP_PORT:I = 0x50

.field private static final PROXY_METROPCS_HOST:Ljava/lang/String; = "proxy.metropcs.net"

.field private static final PROXY_METROPCS_PORT:I = 0xc38

.field private static final RELEASE_SINGLE_TAP:I = 0x5

.field static final RELOCATE_AUTO_COMPLETE_POPUP:I = 0x92

.field private static final REMEMBER_PASSWORD:I = 0x1

.field static final REPLACE_TEXT:I = 0x8f

.field static final REQUEST_COLORPICKER:I = 0x9c

.field static final REQUEST_DATETIMEPICKERS:I = 0x9e

.field private static final REQUEST_FORM_DATA:I = 0x6

.field static final REQUEST_KEYBOARD:I = 0x76

.field static final SAVE_WEBARCHIVE_FINISHED:I = 0x84

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field static final SCREEN_ON:I = 0x88

.field static final SCREEN_ROTATION_RTE:I = 0xa0

.field private static final SCROLLBAR_ALWAYSOFF:I = 0x1

.field private static final SCROLLBAR_ALWAYSON:I = 0x2

.field private static final SCROLLBAR_AUTO:I = 0x0

.field private static final SCROLL_BITS:I = 0x6

.field static final SCROLL_EDIT_TEXT:I = 0x95

.field static final SCROLL_RECT_ON_SCREEN:I = 0xb4

.field private static final SCROLL_SELECT_TEXT:I = 0xb

.field static final SCROLL_TO_MSG_ID:I = 0x65

.field static final SELECTION_STRING_CHANGED:I = 0x82

.field private static final SELECT_AUTOSCROLL_DOWN:I = 0x4

.field private static final SELECT_AUTOSCROLL_LEFT:I = 0x1

.field private static final SELECT_AUTOSCROLL_NONE:I = 0x0

.field private static final SELECT_AUTOSCROLL_RIGHT:I = 0x3

.field private static final SELECT_AUTOSCROLL_THRESOLD_H:I = 0x1e

.field private static final SELECT_AUTOSCROLL_THRESOLD_V:I = 0x28

.field private static final SELECT_AUTOSCROLL_UP:I = 0x2

.field private static final SELECT_CURSOR_OFFSET:I = 0x10

.field private static final SELECT_SCROLL:I = 0x5

.field private static final SELECT_SCROLL_INTERVAL:J = 0x10L

.field static final SET_AUTOFILLABLE:I = 0x85

.field static final SET_SCROLLBAR_MODES:I = 0x81

.field static final SHOW_CARET_HANDLE:I = 0x97

.field static final SHOW_FULLSCREEN:I = 0x78

.field static final SHOW_RECT_MSG_ID:I = 0x71

.field private static final SNAP_BOUND:I = 0x10

.field private static final SNAP_LOCK:I = 0x1

.field private static final SNAP_NONE:I = 0x0

.field private static final SNAP_X:I = 0x2

.field private static final SNAP_Y:I = 0x4

.field private static final SPEN_TEXT_SELECTION_NONE:I = 0x0

.field private static final SPEN_TEXT_SELECTION_REQUESTING:I = 0x1

.field private static final SPEN_TEXT_SELECTION_SELECTED:I = 0x2

.field static final START_TEXTSELECTION_ACTION_MODE:I = 0xa2

.field private static final STD_SPEED:I = 0x1e0

.field private static final SWITCH_TO_LONGPRESS:I = 0x4

.field private static final SWITCH_TO_SHORTPRESS:I = 0x3

.field static final TAKE_FOCUS:I = 0x6e

.field private static final TAP_TIMEOUT:I = 0x12c

.field private static final TEXT_SCROLL_FIRST_SCROLL_MS:J = 0x10L

.field private static final TEXT_SCROLL_RATE:F = 0.01f

.field static final TIME_DIALOG_ID:I = 0x1

.field private static final TOUCH_DONE_MODE:I = 0x7

.field private static final TOUCH_DOUBLE_TAP_MODE:I = 0x6

.field private static final TOUCH_DRAG_LAYER_MODE:I = 0x9

.field private static final TOUCH_DRAG_MODE:I = 0x3

.field private static final TOUCH_DRAG_START_MODE:I = 0x2

.field private static final TOUCH_DRAG_TEXT_MODE:I = 0xa

.field private static final TOUCH_HIGHLIGHT_ELAPSE_TIME:I = 0x7d0

.field private static final TOUCH_INIT_MODE:I = 0x1

.field private static final TOUCH_PINCH_DRAG:I = 0x8

.field private static final TOUCH_SENT_INTERVAL:I = 0x0

.field private static final TOUCH_SHORTPRESS_MODE:I = 0x5

.field private static final TOUCH_SHORTPRESS_START_MODE:I = 0x4

.field private static final TRACKBALL_KEY_TIMEOUT:I = 0x3e8

.field private static final TRACKBALL_MOVE_COUNT:I = 0xa

.field private static final TRACKBALL_MULTIPLIER:I = 0x3

.field private static final TRACKBALL_SCALE:I = 0x190

.field private static final TRACKBALL_SCROLL_COUNT:I = 0x5

.field private static final TRACKBALL_TIMEOUT:I = 0xc8

.field private static final TRACKBALL_WAIT:I = 0x64

.field static final UPDATE_CONTENT_BOUNDS:I = 0x98

.field static final UPDATE_MATCH_COUNT:I = 0x7e

.field static final UPDATE_SELECTION_MSG_ID:I = 0x9b

.field static final UPDATE_SELECTION_MSG_ID_BT_KEYBOARD:I = 0x9d

.field static final UPDATE_TEXTFIELD_TEXT_MSG_ID:I = 0x6c

.field static final UPDATE_TEXT_SELECTION_MSG_ID:I = 0x70

.field static final UPDATE_TEXT_SELECTION_START_END:I = 0xb5

.field static final UPDATE_ZOOM_DENSITY:I = 0x8b

.field static final UPDATE_ZOOM_RANGE:I = 0x6d

.field private static final VSLOPE_TO_BREAK_SNAP:F = 0.95f

.field private static final VSLOPE_TO_START_SNAP:F = 1.25f

.field static final WEBCORE_INITIALIZED_MSG_ID:I = 0x6b

.field static final WEBCORE_NEED_TOUCH_EVENTS:I = 0x74

.field private static final ZOOM_BITS:I = 0x86

.field private static final bNeedToCheckCustomProxy:Z

.field private static mEnableReadersHubStylusEvent:Z

.field static mLogEvent:Z

.field private static mOverScrollBackground:Landroid/graphics/Paint;

.field private static mOverScrollBorder:Landroid/graphics/Paint;

.field private static sGoogleApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sMaxViewportWidth:I

.field private static sNotificationsEnabled:Z

.field private static sPackageInstallationReceiverAdded:Z

.field private static sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;

.field private static sTrustStorageListener:Landroid/webkit/WebViewClassic$TrustStorageListener;


# instance fields
.field private DRAG_LAYER_INVERSE_DENSITY_SQUARED:F

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED_STEP_1:I

.field private HOVERSCROLL_SPEED_STEP_2:I

.field private HOVERSCROLL_SPEED_STEP_3:I

.field private HOVERSCROLL_SPEED_STEP_4:I

.field private actionDown_X:I

.field private actionDown_Y:I

.field private bWebFindDialogEnabled:Z

.field private bWebSelectDialogIsUp:Z

.field private imageSelectRect:Landroid/graphics/Rect;

.field private mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

.field private mActionMove:Z

.field private mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

.field private mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

.field private mAutoRedraw:Z

.field private mAutoScrollX:I

.field private mAutoScrollY:I

.field private mAutoSelection:Z

.field protected mAverageAngle:F

.field mAverageSwapFps:D

.field private mAx:I

.field private mAy:I

.field private mBTKeyBoardOn:Z

.field private mBTWebSelectionOn:Z

.field private mBackgroundColor:I

.field mBatchedTextChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockShowSoftInput:Z

.field private mBlockWebkitViewMessages:Z

.field private mButtonActionOnMouse:Z

.field private mCachedOverlappingActionModeHackRotate:Z

.field private mCachedOverlappingActionModeHeight:I

.field private mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCertificate:Landroid/net/http/SslCertificate;

.field private mCheckHoverScrollStart:Z

.field private mConfirmMove:Z

.field private mContentHeight:I

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mController:I

.field mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

.field private mCurSelEnd:I

.field private mCurSelStart:I

.field private mCurrentScrollingLayerId:I

.field private mCurrentTouchInterval:I

.field private mDatabase:Landroid/webkit/WebViewDatabaseClassic;

.field private mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

.field private mDistanceX:I

.field private mDistanceY:I

.field private mDoubleTapSlopSquare:I

.field private mDrawCursorRing:Z

.field private mDrawHistory:Z

.field mEditTextContent:Landroid/graphics/Rect;

.field mEditTextContentBounds:Landroid/graphics/Rect;

.field mEditTextLayerId:I

.field mEditTextScroller:Landroid/widget/Scroller;

.field private mEnterKeyLongPress:I

.field private mFeatureHoverUI:Z

.field private mFieldPointer:I

.field private mFindCallback:Landroid/webkit/FindActionModeCallback;

.field private mFindIsUp:Z

.field private mFindListener:Landroid/webkit/WebView$FindListener;

.field private mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

.field private mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

.field private mFirstScaleOccured:Z

.field private mFirstTouchX:I

.field private mFirstTouchY:I

.field private mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

.field private mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

.field mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

.field private mGlobalVisibleOffset:Landroid/graphics/Point;

.field private mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mGotCenterDown:Z

.field private mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

.field private mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mHardwareAccelSkia:Z

.field mHeightCanMeasure:Z

.field private mHeldMotionless:I

.field private mHistoryHeight:I

.field private mHistoryPicture:Landroid/graphics/Picture;

.field private mHistoryWidth:I

.field private mHorizontalScrollBarMode:I

.field private mHoverAreaHeight:I

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

.field private mHoverIconStatus:I

.field private mHoverRecognitionCurrentTime:I

.field private mHoverRecognitionDurationTime:I

.field private mHoverRecognitionStartTime:I

.field private mHoverScrollDirection:I

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:I

.field private mHoverScrollTimeInterval:I

.field private mHoverTopAreaTop:I

.field mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

.field public mInActionMove:Z

.field private mInOverScrollMode:Z

.field private mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

.field private mInitialScaleInPercent:I

.field mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

.field private mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

.field private final mInvScreenRect:Landroid/graphics/Rect;

.field mIsBatchingTextChanges:Z

.field private mIsCaretSelection:Z

.field private mIsCtrlPressed:Z

.field mIsEditingText:Z

.field private mIsFitToScreen:Z

.field private mIsMeasureSpecHack:Z

.field private mIsNewInputField:Z

.field private mIsOnewayScrollDown:Z

.field private mIsPaused:Z

.field protected mIsPressingHandle:Z

.field private mIsScreenTouch:Z

.field public mIsSelectFieldNext:Z

.field public mIsSelectFieldPrev:Z

.field mIsSoftkeyboardVisible:Z

.field public mIsTextFieldNext:Z

.field public mIsTextFieldPrev:Z

.field private mIsWebViewVisible:Z

.field private mIsZoomScaleBegin:Z

.field private mKeyboardEnterPress:Z

.field private mKeysPressed:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLastActualHeightSent:I

.field private mLastCursorBounds:Landroid/graphics/Rect;

.field private mLastCursorTime:J

.field private mLastEditScroll:J

.field private mLastGlobalRect:Landroid/graphics/Rect;

.field mLastHeightSent:I

.field private mLastSentTouchTime:J

.field mLastSwapTime:J

.field private mLastTouchTime:J

.field private mLastTouchUpTime:J

.field protected mLastTouchX:I

.field protected mLastTouchY:I

.field private mLastVelX:F

.field private mLastVelY:F

.field private mLastVelocity:F

.field private mLastViewSize:Landroid/graphics/Point;

.field private mLastVisibleRectSent:Landroid/graphics/Rect;

.field mLastWidthSent:I

.field private mListBoxMessage:Landroid/os/Message;

.field private mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

.field private mLongPress:Z

.field protected mMagnifier:Landroid/webkit/WebMagnifier;

.field private mMapTrackballToArrowKeys:Z

.field private mMaxAutoScrollX:I

.field private mMaxAutoScrollY:I

.field private mMaximumFling:I

.field private mMaybeScrollDown:Z

.field private mMinAutoScrollX:I

.field private mMinAutoScrollY:I

.field private mNativeClass:I

.field private mNavSlop:I

.field private mOnewayMode:Z

.field private mOnewayScrollTouchDownX:I

.field private mOnewayScrollTouchDownY:I

.field private mOrientation:I

.field private mOverScrollGlow:Landroid/webkit/OverScrollGlow;

.field private mOverflingDistance:I

.field private mOverlayHorizontalScrollbar:Z

.field private mOverlayVerticalScrollbar:Z

.field private mOverscrollDistance:I

.field protected mPasteEvent:Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;

.field private mPasteWindow:Landroid/webkit/WebViewClassic$PastePopupWindow;

.field private mPerformLongPress:Z

.field private mPictureListener:Landroid/webkit/WebView$PictureListener;

.field private mPictureUpdatePausedForFocusChange:Z

.field public mPinchZoomListener:Landroid/webkit/PinchZoomListener;

.field private mPopupLaunchHitTestType:Z

.field private mPrevTouchEventX:I

.field private mPrevTouchEventX_temp:I

.field private mPrevTouchEventY:I

.field private mPrevTouchEventY_temp:I

.field private mPreviousTouchX:I

.field private mPreviousTouchY:I

.field final mPrivateHandler:Landroid/os/Handler;

.field private mPrivateImeOptions:Ljava/lang/String;

.field private mQwertyInput:Landroid/text/method/QwertyKeyListener;

.field private mReaderArticle:Z

.field private mReaderFlag:Z

.field private mRequestNewSelection:I

.field private mResumeMsg:Landroid/os/Message;

.field private final mScreenRect:Landroid/graphics/Rect;

.field private final mScrollFilter:Landroid/graphics/DrawFilter;

.field private mScrollOffset:Landroid/graphics/Point;

.field mScroller:Landroid/widget/OverScroller;

.field private mScrollingLayerBounds:Landroid/graphics/Rect;

.field private mScrollingLayerRect:Landroid/graphics/Rect;

.field private mSelectAllViaBT:Z

.field private mSelectCallback:Landroid/webkit/SelectActionModeCallback;

.field private mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

.field private mSelectCallbackUser:Landroid/webkit/SelectActionModeCallbackSec;

.field mSelectContentBounds:Landroid/graphics/Rect;

.field private mSelectCursorLeft:Landroid/graphics/Point;

.field private mSelectCursorLeftLayerId:I

.field private mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

.field private mSelectCursorRight:Landroid/graphics/Point;

.field private mSelectCursorRightLayerId:I

.field private mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

.field private mSelectDraggingCursor:Landroid/graphics/Point;

.field private mSelectDraggingOffset:Landroid/graphics/Point;

.field private mSelectDraggingTextQuad:Landroid/webkit/QuadF;

.field private mSelectFieldPointer:I

.field private mSelectFocusMoved:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleCenterOffset:Landroid/graphics/Point;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeftOffset:Landroid/graphics/Point;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRightOffset:Landroid/graphics/Point;

.field private mSelectX:I

.field private mSelectY:I

.field private mSelectingText:Z

.field private mSelectionClearOnRotation:Z

.field private mSelectionStarted:Z

.field private mSendScrollEvent:Z

.field private mSentAutoScrollMessage:Z

.field private mShowTapHighlight:Z

.field private mShowTextSelectionExtra:Z

.field private mSmartSelection:Z

.field private mSnapPositive:Z

.field private mSnapScrollMode:I

.field private mSpenTextSelectionMode:I

.field private mStartDragTime:J

.field protected mStartTouchX:I

.field protected mStartTouchY:I

.field private mStylusEventListener:Landroid/webkit/WebViewClassic$StylusEventListener;

.field private final mTempContentVisibleRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;

.field private final mTempVisibleRectOffset:Landroid/graphics/Point;

.field private mTextGeneration:I

.field private mThemeIsDeviceDefault:Z

.field private mTouchCrossHairColor:Landroid/graphics/Paint;

.field private mTouchHighlightRegion:Landroid/graphics/Region;

.field private mTouchHighlightX:I

.field private mTouchHighlightY:I

.field private mTouchHightlightPaint:Landroid/graphics/Paint;

.field private mTouchInEditText:Z

.field private mTouchMode:I

.field private mTouchSlopSquare:I

.field private mTouchSlopSquareForFinger:I

.field private mTouchSlopSquareForSPen:I

.field private mTrackballDown:Z

.field private mTrackballFirstTime:J

.field private mTrackballLastTime:J

.field private mTrackballRemainsX:F

.field private mTrackballRemainsY:F

.field private mTrackballUpTime:J

.field private mTrackballXMove:I

.field private mTrackballYMove:I

.field private mUrl:Ljava/lang/String;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollBarMode:I

.field mViewManager:Landroid/webkit/ViewManager;

.field private final mVisibleContentRect:Landroid/graphics/RectF;

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWebClipboard:Landroid/webkit/WebClipboard;

.field private mWebSelectDialog:Landroid/webkit/WebSelectDialog;

.field protected mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

.field private mWebSelectionOn:Z

.field private final mWebView:Landroid/webkit/WebView;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field private final mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

.field mWidthCanMeasure:Z

.field private mWrapContent:Z

.field private final mZoomFilter:Landroid/graphics/DrawFilter;

.field private mZoomManager:Landroid/webkit/ZoomManager;

.field private misspelled:Z

.field private prevlen:I

.field private spanComposerText:Landroid/text/SpannableStringBuilder;

.field private spellingOfWord:Landroid/graphics/Point;

.field private textPoint:Landroid/graphics/Point;

.field private textSelected:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1272
    sput-boolean v1, Landroid/webkit/WebViewClassic;->mEnableReadersHubStylusEvent:Z

    .line 1365
    sput-boolean v2, Landroid/webkit/WebViewClassic;->ENABLE_SCROLL_PERFORMANCE_PATCH:Z

    .line 1366
    sput-boolean v2, Landroid/webkit/WebViewClassic;->ENABLE_ZOOM_PERFORMANCE_PATCH:Z

    .line 1374
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Web_EnableMultipleApn4"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebViewClassic;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    .line 1376
    sget-object v0, Landroid/webkit/WebViewClassic;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewClassic;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/webkit/WebViewClassic;->bNeedToCheckCustomProxy:Z

    .line 1717
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "REMEMBER_PASSWORD"

    aput-object v3, v0, v2

    const-string v3, "NEVER_REMEMBER_PASSWORD"

    aput-object v3, v0, v1

    const-string v3, "SWITCH_TO_SHORTPRESS"

    aput-object v3, v0, v5

    const-string v3, "SWITCH_TO_LONGPRESS"

    aput-object v3, v0, v6

    const-string v3, "RELEASE_SINGLE_TAP"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "REQUEST_FORM_DATA"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "RESUME_WEBCORE_PRIORITY"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "DRAG_HELD_MOTIONLESS"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, ""

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "PREVENT_DEFAULT_TIMEOUT"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "SCROLL_SELECT_TEXT"

    aput-object v4, v0, v3

    sput-object v0, Landroid/webkit/WebViewClassic;->HandlerPrivateDebugString:[Ljava/lang/String;

    .line 1731
    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "SCROLL_TO_MSG_ID"

    aput-object v3, v0, v2

    const-string v3, "102"

    aput-object v3, v0, v1

    const-string v3, "103"

    aput-object v3, v0, v5

    const-string v3, "104"

    aput-object v3, v0, v6

    const-string v3, "NEW_PICTURE_MSG_ID"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "UPDATE_TEXT_ENTRY_MSG_ID"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "WEBCORE_INITIALIZED_MSG_ID"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "UPDATE_TEXTFIELD_TEXT_MSG_ID"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "UPDATE_ZOOM_RANGE"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "UNHANDLED_NAV_KEY"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "CLEAR_TEXT_ENTRY"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "UPDATE_TEXT_SELECTION_MSG_ID"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "SHOW_RECT_MSG_ID"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "LONG_PRESS_CENTER"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "PREVENT_TOUCH_ID"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "WEBCORE_NEED_TOUCH_EVENTS"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "INVAL_RECT_MSG_ID"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "REQUEST_KEYBOARD"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string v4, "DO_MOTION_UP"

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const-string v4, "SHOW_FULLSCREEN"

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const-string v4, "HIDE_FULLSCREEN"

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const-string v4, "DOM_FOCUS_CHANGED"

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const-string v4, "REPLACE_BASE_CONTENT"

    aput-object v4, v0, v3

    const/16 v3, 0x17

    const-string v4, "RETURN_LABEL"

    aput-object v4, v0, v3

    const/16 v3, 0x18

    const-string v4, "UPDATE_MATCH_COUNT"

    aput-object v4, v0, v3

    const/16 v3, 0x19

    const-string v4, "CENTER_FIT_RECT"

    aput-object v4, v0, v3

    const/16 v3, 0x1a

    const-string v4, "REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID"

    aput-object v4, v0, v3

    const/16 v3, 0x1b

    const-string v4, "SET_SCROLLBAR_MODES"

    aput-object v4, v0, v3

    const/16 v3, 0x1c

    const-string v4, "SELECTION_STRING_CHANGED"

    aput-object v4, v0, v3

    const/16 v3, 0x1d

    const-string v4, "SET_TOUCH_HIGHLIGHT_RECTS"

    aput-object v4, v0, v3

    const/16 v3, 0x1e

    const-string v4, "SAVE_WEBARCHIVE_FINISHED"

    aput-object v4, v0, v3

    const/16 v3, 0x1f

    const-string v4, "SET_AUTOFILLABLE"

    aput-object v4, v0, v3

    const/16 v3, 0x20

    const-string v4, "AUTOFILL_COMPLETE"

    aput-object v4, v0, v3

    const/16 v3, 0x21

    const-string v4, "SELECT_AT"

    aput-object v4, v0, v3

    const/16 v3, 0x22

    const-string v4, "SCREEN_ON"

    aput-object v4, v0, v3

    const/16 v3, 0x23

    const-string v4, "ENTER_FULLSCREEN_VIDEO"

    aput-object v4, v0, v3

    const/16 v3, 0x24

    const-string v4, "UPDATE_SELECTION"

    aput-object v4, v0, v3

    const/16 v3, 0x25

    const-string v4, "UPDATE_ZOOM_DENSITY"

    aput-object v4, v0, v3

    const/16 v3, 0x26

    const-string v4, "REQUEST_COLORPICKER"

    aput-object v4, v0, v3

    const/16 v3, 0x27

    const-string v4, "REQUEST_DATETIMEPICKERS"

    aput-object v4, v0, v3

    const/16 v3, 0x28

    const-string v4, "MAGNIFIER_MOVE"

    aput-object v4, v0, v3

    const/16 v3, 0x29

    const-string v4, "SCREEN_ROTATION_RTE"

    aput-object v4, v0, v3

    const/16 v3, 0x2a

    const-string v4, "DISPLAY_ACTION_BAR"

    aput-object v4, v0, v3

    const/16 v3, 0x2b

    const-string v4, "INIT_SELECT_FIELD"

    aput-object v4, v0, v3

    sput-object v0, Landroid/webkit/WebViewClassic;->HandlerPackageDebugString:[Ljava/lang/String;

    .line 1792
    const/16 v0, 0x3d4

    sput v0, Landroid/webkit/WebViewClassic;->sMaxViewportWidth:I

    .line 1838
    sput-boolean v1, Landroid/webkit/WebViewClassic;->mLogEvent:Z

    .line 1845
    sput-boolean v1, Landroid/webkit/WebViewClassic;->sNotificationsEnabled:Z

    .line 1951
    const/16 v0, 0x50

    sput v0, Landroid/webkit/WebViewClassic;->ONEWAY_SCROLL_TRIGGER_BOUNDARY:I

    .line 2474
    sput-boolean v2, Landroid/webkit/WebViewClassic;->sPackageInstallationReceiverAdded:Z

    .line 2483
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/webkit/WebViewClassic;->sGoogleApps:Ljava/util/Set;

    .line 2484
    sget-object v0, Landroid/webkit/WebViewClassic;->sGoogleApps:Ljava/util/Set;

    const-string v1, "com.google.android.youtube"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8560
    const/16 v0, 0x10

    sput v0, Landroid/webkit/WebViewClassic;->CHANNEL_DISTANCE:I

    return-void

    :cond_0
    move v0, v2

    .line 1376
    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)V
    .locals 9
    .parameter "webView"
    .parameter "privateAccess"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 1132
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mPasteEvent:Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;

    .line 1198
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsTextFieldNext:Z

    .line 1199
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsTextFieldPrev:Z

    .line 1200
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsSelectFieldNext:Z

    .line 1201
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsSelectFieldPrev:Z

    .line 1203
    iput v4, p0, Landroid/webkit/WebViewClassic;->mSelectFieldPointer:I

    .line 1204
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic;->mSelectFocusMoved:Z

    .line 1205
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->bWebSelectDialogIsUp:Z

    .line 1206
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    .line 1208
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectContentBounds:Landroid/graphics/Rect;

    .line 1236
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic;->bWebFindDialogEnabled:Z

    .line 1241
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    .line 1242
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mScreenRect:Landroid/graphics/Rect;

    .line 1243
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    .line 1244
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    .line 1245
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    .line 1249
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsScreenTouch:Z

    .line 1250
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsNewInputField:Z

    .line 1255
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 1256
    iput v4, p0, Landroid/webkit/WebViewClassic;->prevlen:I

    .line 1257
    iput v4, p0, Landroid/webkit/WebViewClassic;->mCurSelStart:I

    .line 1258
    iput v4, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    .line 1259
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 1261
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    .line 1262
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    .line 1264
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    .line 1265
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsSoftkeyboardVisible:Z

    .line 1266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mBatchedTextChanges:Ljava/util/ArrayList;

    .line 1267
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    .line 1268
    iput-wide v7, p0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    .line 1318
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mReaderFlag:Z

    .line 1332
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsCtrlPressed:Z

    .line 1334
    new-instance v0, Landroid/webkit/WebViewClassic$PrivateHandler;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewClassic$PrivateHandler;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    .line 1370
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    .line 1390
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    .line 1391
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mUrl:Ljava/lang/String;

    .line 1420
    iput v4, p0, Landroid/webkit/WebViewClassic;->mCurrentTouchInterval:I

    .line 1433
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    .line 1444
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 1461
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mPerformLongPress:Z

    .line 1468
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mKeyboardEnterPress:Z

    .line 1471
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 1480
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsZoomScaleBegin:Z

    .line 1530
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mLastViewSize:Landroid/graphics/Point;

    .line 1537
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    .line 1538
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    .line 1551
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    .line 1576
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    .line 1578
    new-instance v0, Landroid/webkit/QuadF;

    invoke-direct {v0}, Landroid/webkit/QuadF;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    .line 1579
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    .line 1581
    new-instance v0, Landroid/webkit/QuadF;

    invoke-direct {v0}, Landroid/webkit/QuadF;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    .line 1595
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    .line 1597
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHightlightPaint:Landroid/graphics/Paint;

    .line 1611
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    .line 1614
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mHardwareAccelSkia:Z

    .line 1689
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mPopupLaunchHitTestType:Z

    .line 1795
    iput v4, p0, Landroid/webkit/WebViewClassic;->mInitialScaleInPercent:I

    .line 1799
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic;->mSendScrollEvent:Z

    .line 1801
    iput v4, p0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 1818
    iput v4, p0, Landroid/webkit/WebViewClassic;->mHorizontalScrollBarMode:I

    .line 1819
    iput v4, p0, Landroid/webkit/WebViewClassic;->mVerticalScrollBarMode:I

    .line 1841
    iput-wide v7, p0, Landroid/webkit/WebViewClassic;->mLastTouchUpTime:J

    .line 1860
    iput v3, p0, Landroid/webkit/WebViewClassic;->mBackgroundColor:I

    .line 1863
    iput v4, p0, Landroid/webkit/WebViewClassic;->mAutoScrollX:I

    .line 1864
    iput v4, p0, Landroid/webkit/WebViewClassic;->mAutoScrollY:I

    .line 1865
    iput v4, p0, Landroid/webkit/WebViewClassic;->mMinAutoScrollX:I

    .line 1866
    iput v4, p0, Landroid/webkit/WebViewClassic;->mMaxAutoScrollX:I

    .line 1867
    iput v4, p0, Landroid/webkit/WebViewClassic;->mMinAutoScrollY:I

    .line 1868
    iput v4, p0, Landroid/webkit/WebViewClassic;->mMaxAutoScrollY:I

    .line 1869
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerBounds:Landroid/graphics/Rect;

    .line 1870
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mSentAutoScrollMessage:Z

    .line 1872
    iput v4, p0, Landroid/webkit/WebViewClassic;->mEnterKeyLongPress:I

    .line 1878
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    .line 1880
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mFeatureHoverUI:Z

    .line 1884
    const/16 v0, 0x1e

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHoverAreaHeight:I

    .line 1885
    const/16 v0, 0x32

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHoverBottomAreaHeight:I

    .line 1886
    iput v4, p0, Landroid/webkit/WebViewClassic;->mHoverTopAreaTop:I

    .line 1890
    iput v4, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionDurationTime:I

    .line 1891
    iput v4, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionCurrentTime:I

    .line 1892
    iput v4, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionStartTime:I

    .line 1893
    iput v3, p0, Landroid/webkit/WebViewClassic;->mHoverScrollDirection:I

    .line 1894
    const/16 v0, 0x12c

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollTimeInterval:I

    .line 1895
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mCheckHoverScrollStart:Z

    .line 1896
    iput v4, p0, Landroid/webkit/WebViewClassic;->mHoverScrollStartTime:I

    .line 1903
    const/16 v0, 0xe

    iput v0, p0, Landroid/webkit/WebViewClassic;->HOVERSCROLL_SPEED_STEP_1:I

    .line 1904
    const/16 v0, 0x10

    iput v0, p0, Landroid/webkit/WebViewClassic;->HOVERSCROLL_SPEED_STEP_2:I

    .line 1905
    const/16 v0, 0x12

    iput v0, p0, Landroid/webkit/WebViewClassic;->HOVERSCROLL_SPEED_STEP_3:I

    .line 1906
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/WebViewClassic;->HOVERSCROLL_SPEED_STEP_4:I

    .line 1907
    iput v4, p0, Landroid/webkit/WebViewClassic;->mHoverScrollSpeed:I

    .line 1910
    iput v4, p0, Landroid/webkit/WebViewClassic;->HOVERSCROLL_DELAY:I

    .line 1913
    iput v6, p0, Landroid/webkit/WebViewClassic;->mHoverIconStatus:I

    .line 1916
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mThemeIsDeviceDefault:Z

    .line 1934
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mPictureUpdatePausedForFocusChange:Z

    .line 1952
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsFitToScreen:Z

    .line 1953
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mOnewayMode:Z

    .line 1954
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic;->mIsOnewayScrollDown:Z

    .line 1955
    iput v4, p0, Landroid/webkit/WebViewClassic;->mOnewayScrollTouchDownX:I

    .line 1956
    iput v4, p0, Landroid/webkit/WebViewClassic;->mOnewayScrollTouchDownY:I

    .line 2216
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mFirstScaleOccured:Z

    .line 2919
    iput v3, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    .line 2921
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHackRotate:Z

    .line 4216
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 4217
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mLastGlobalRect:Landroid/graphics/Rect;

    .line 4218
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    .line 4219
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    .line 4220
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollOffset:Landroid/graphics/Point;

    .line 4266
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    .line 4289
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTempContentVisibleRect:Landroid/graphics/Rect;

    .line 4312
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsMeasureSpecHack:Z

    .line 4848
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    .line 5878
    iput v4, p0, Landroid/webkit/WebViewClassic;->mOrientation:I

    .line 5994
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v1, 0x86

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 5997
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollFilter:Landroid/graphics/DrawFilter;

    .line 6136
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    .line 6137
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    .line 6138
    iput v4, p0, Landroid/webkit/WebViewClassic;->mHistoryWidth:I

    .line 6139
    iput v4, p0, Landroid/webkit/WebViewClassic;->mHistoryHeight:I

    .line 6740
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mGotCenterDown:Z

    .line 7548
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 7549
    iput v3, p0, Landroid/webkit/WebViewClassic;->mPreviousTouchX:I

    .line 7550
    iput v3, p0, Landroid/webkit/WebViewClassic;->mPreviousTouchY:I

    .line 7552
    iput v4, p0, Landroid/webkit/WebViewClassic;->mController:I

    .line 7553
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mSmartSelection:Z

    .line 7554
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic;->mAutoSelection:Z

    .line 7579
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->textPoint:Landroid/graphics/Point;

    .line 7580
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->textSelected:Ljava/lang/String;

    .line 8176
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRectOffset:Landroid/graphics/Point;

    .line 8177
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 8563
    iput v3, p0, Landroid/webkit/WebViewClassic;->mFirstTouchX:I

    .line 8564
    iput v3, p0, Landroid/webkit/WebViewClassic;->mFirstTouchY:I

    .line 8565
    iput v4, p0, Landroid/webkit/WebViewClassic;->mDistanceX:I

    .line 8566
    iput v4, p0, Landroid/webkit/WebViewClassic;->mDistanceY:I

    .line 8955
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mBlockShowSoftInput:Z

    .line 8957
    iput v4, p0, Landroid/webkit/WebViewClassic;->actionDown_X:I

    .line 8958
    iput v4, p0, Landroid/webkit/WebViewClassic;->actionDown_Y:I

    .line 10218
    iput-wide v7, p0, Landroid/webkit/WebViewClassic;->mTrackballFirstTime:J

    .line 10219
    iput-wide v7, p0, Landroid/webkit/WebViewClassic;->mTrackballLastTime:J

    .line 10220
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    .line 10221
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    .line 10222
    iput v4, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    .line 10223
    iput v4, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    .line 10224
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    .line 10225
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mShowTextSelectionExtra:Z

    .line 10226
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 10236
    iput v4, p0, Landroid/webkit/WebViewClassic;->mSelectX:I

    .line 10237
    iput v4, p0, Landroid/webkit/WebViewClassic;->mSelectY:I

    .line 10238
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mTrackballDown:Z

    .line 10239
    iput-wide v7, p0, Landroid/webkit/WebViewClassic;->mTrackballUpTime:J

    .line 10240
    iput-wide v7, p0, Landroid/webkit/WebViewClassic;->mLastCursorTime:J

    .line 10242
    new-instance v0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    invoke-direct {v0, p0, v5}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    .line 10243
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    const-string v1, "alpha"

    new-array v2, v6, [I

    const/16 v3, 0xff

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 10249
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic;->mMapTrackballToArrowKeys:Z

    .line 10979
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mWebClipboard:Landroid/webkit/WebClipboard;

    .line 10980
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->imageSelectRect:Landroid/graphics/Rect;

    .line 11007
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->spellingOfWord:Landroid/graphics/Point;

    .line 11849
    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    .line 12986
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsPressingHandle:Z

    .line 12987
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mWebSelectionOn:Z

    .line 12988
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mSelectionClearOnRotation:Z

    .line 12990
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mBTWebSelectionOn:Z

    .line 12991
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mSelectAllViaBT:Z

    .line 12993
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mLongPress:Z

    .line 12994
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mActionMove:Z

    .line 12996
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mBTKeyBoardOn:Z

    .line 13004
    iput v4, p0, Landroid/webkit/WebViewClassic;->mRequestNewSelection:I

    .line 13569
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mReaderArticle:Z

    .line 13610
    iput v4, p0, Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I

    .line 1975
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    .line 1976
    iput-object p2, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    .line 1977
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    .line 1978
    return-void
.end method

.method private WebkitSelectionAreaValidate(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "Value"

    .prologue
    const/4 v4, 0x0

    .line 7986
    iget v1, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    .line 7987
    .local v1, right:I
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    .line 7988
    .local v0, bottom:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 7989
    .local v2, visibleRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 7990
    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-ge v1, v3, :cond_0

    .line 7991
    iget v1, v2, Landroid/graphics/Rect;->right:I

    .line 7992
    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v3, :cond_1

    .line 7993
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 7994
    :cond_1
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_2

    .line 7995
    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 7996
    :cond_2
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_3

    .line 7997
    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 7998
    :cond_3
    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-le v3, v1, :cond_4

    .line 7999
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 8000
    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-le v3, v0, :cond_5

    .line 8001
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 8002
    :cond_5
    return-void
.end method

.method private abortAnimation()V
    .locals 1

    .prologue
    .line 4179
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4180
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    .line 4181
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget v0, p0, Landroid/webkit/WebViewClassic;->mFieldPointer:I

    return v0
.end method

.method static synthetic access$1000(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    return-object v0
.end method

.method static synthetic access$10000(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    return v0
.end method

.method static synthetic access$10100(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    return v0
.end method

.method static synthetic access$102(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput p1, p0, Landroid/webkit/WebViewClassic;->mFieldPointer:I

    return p1
.end method

.method static synthetic access$10200(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->resetCaretTimer()V

    return-void
.end method

.method static synthetic access$10300(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->showPasteWindow()V

    return-void
.end method

.method static synthetic access$10400(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->scrollEditWithCursor()V

    return-void
.end method

.method static synthetic access$10500(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$SelectionCopiedData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->updateSelectionInfo(Landroid/webkit/WebViewCore$SelectionCopiedData;)V

    return-void
.end method

.method static synthetic access$10600(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->notifySelectionChanged()V

    return-void
.end method

.method static synthetic access$10700(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->updateImageSelectedRect()V

    return-void
.end method

.method static synthetic access$10800(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->displayColorPicker()V

    return-void
.end method

.method static synthetic access$10900(Landroid/webkit/WebViewClassic;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->displayDateTimePickers(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsNewInputField:Z

    return v0
.end method

.method static synthetic access$11000(Landroid/webkit/WebViewClassic;Landroid/view/MotionEvent;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 239
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->onHandleUiEvent(Landroid/view/MotionEvent;II)V

    return-void
.end method

.method static synthetic access$1102(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mIsNewInputField:Z

    return p1
.end method

.method static synthetic access$11100(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z

    return v0
.end method

.method static synthetic access$11102(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z

    return p1
.end method

.method static synthetic access$11200(Landroid/webkit/WebViewClassic;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHightlightPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$11300(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewClassic$FocusTransitionDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    return-object v0
.end method

.method static synthetic access$11302(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$FocusTransitionDrawable;)Landroid/webkit/WebViewClassic$FocusTransitionDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    return-object p1
.end method

.method static synthetic access$11902(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mActionMove:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsScreenTouch:Z

    return v0
.end method

.method static synthetic access$12000(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->setUpAdvSelect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mThemeIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$1500(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/webkit/WebViewClassic;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$1800(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-static {p0}, Landroid/webkit/WebViewClassic;->nativeOnTrimMemory(I)V

    return-void
.end method

.method static synthetic access$1900()V
    .locals 0

    .prologue
    .line 239
    invoke-static {}, Landroid/webkit/WebViewClassic;->handleCertTrustChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->beginTextBatch()V

    return-void
.end method

.method static synthetic access$2100(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-static {p0, p1}, Landroid/webkit/WebViewClassic;->handleProxyBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2300()Ljava/util/Set;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Landroid/webkit/WebViewClassic;->sGoogleApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/webkit/WebViewClassic;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/webkit/WebViewClassic;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$2600(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-static {p0}, Landroid/webkit/WebViewClassic;->nativeDestroy(I)V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkit/WebViewClassic;Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$DrawData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object v0
.end method

.method static synthetic access$2802(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object p1
.end method

.method static synthetic access$2900(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->commitTextBatch()V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/webkit/WebViewClassic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->updateColor(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBTWebSelectionOn:Z

    return v0
.end method

.method static synthetic access$402(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mBTWebSelectionOn:Z

    return p1
.end method

.method static synthetic access$4100(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$AutoFillData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    return-object v0
.end method

.method static synthetic access$4102(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$AutoFillData;)Landroid/webkit/WebViewCore$AutoFillData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    return-object p1
.end method

.method static synthetic access$4200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewDatabaseClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->doHoverScrollMove()V

    return-void
.end method

.method static synthetic access$4700(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    return v0
.end method

.method static synthetic access$4800(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget v0, p0, Landroid/webkit/WebViewClassic;->mAutoScrollX:I

    return v0
.end method

.method static synthetic access$4900(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget v0, p0, Landroid/webkit/WebViewClassic;->mAutoScrollY:I

    return v0
.end method

.method static synthetic access$500(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mWebSelectionOn:Z

    return v0
.end method

.method static synthetic access$5002(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mSentAutoScrollMessage:Z

    return p1
.end method

.method static synthetic access$5100(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget v0, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    return v0
.end method

.method static synthetic access$5200(Landroid/webkit/WebViewClassic;IIZI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 239
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$5400(Landroid/webkit/WebViewClassic;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->scrollLayerTo(II)V

    return-void
.end method

.method static synthetic access$5500(Landroid/webkit/WebViewClassic;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 239
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->contentScrollTo(IIZ)V

    return-void
.end method

.method static synthetic access$5600(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->playTouchSound()V

    return-void
.end method

.method static synthetic access$5700(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->notifySingleTapReleased()V

    return-void
.end method

.method static synthetic access$5800(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/webkit/WebViewClassic;ILjava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 239
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->nativeCreate(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/WebViewClassic;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->copySelectionSec(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$DrawData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object v0
.end method

.method static synthetic access$6002(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object p1
.end method

.method static synthetic access$6100(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$6200(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    return v0
.end method

.method static synthetic access$6300(IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-static {p0, p1}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    return-void
.end method

.method static synthetic access$6400(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewInputDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    return-object v0
.end method

.method static synthetic access$6402(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewInputDispatcher;)Landroid/webkit/WebViewInputDispatcher;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    return-object p1
.end method

.method static synthetic access$6500(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->setAppType()V

    return-void
.end method

.method static synthetic access$6600(Landroid/webkit/WebViewClassic;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->enabledTouchPerformancePatch(Z)V

    return-void
.end method

.method static synthetic access$6700(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    return v0
.end method

.method static synthetic access$6702(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput p1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    return p1
.end method

.method static synthetic access$6800(Landroid/webkit/WebViewClassic;IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 239
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V

    return-void
.end method

.method static synthetic access$6900(Landroid/webkit/WebViewClassic;IILandroid/webkit/WebViewCore$TextInputData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 239
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->updateTextSelectionStartEndFromMessage(IILandroid/webkit/WebViewCore$TextInputData;)V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$7000(Landroid/webkit/WebViewClassic;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 239
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClassic;->viewInvalidate(IIII)V

    return-void
.end method

.method static synthetic access$7102(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mGotCenterDown:Z

    return p1
.end method

.method static synthetic access$7202(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mTrackballDown:Z

    return p1
.end method

.method static synthetic access$7300(Landroid/webkit/WebViewClassic;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->displaySoftKeyboard(Z)V

    return-void
.end method

.method static synthetic access$7400(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockShowSoftInput:Z

    return v0
.end method

.method static synthetic access$7502(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput p1, p0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    return p1
.end method

.method static synthetic access$7600(Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    return-object v0
.end method

.method static synthetic access$7700(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->inFullScreenMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->dismissFullScreenMode()V

    return-void
.end method

.method static synthetic access$7900(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$8002(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput p1, p0, Landroid/webkit/WebViewClassic;->mHorizontalScrollBarMode:I

    return p1
.end method

.method static synthetic access$8102(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput p1, p0, Landroid/webkit/WebViewClassic;->mVerticalScrollBarMode:I

    return p1
.end method

.method static synthetic access$8200(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8300(Landroid/webkit/WebViewClassic;)Landroid/webkit/AccessibilityInjector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->bWebSelectDialogIsUp:Z

    return v0
.end method

.method static synthetic access$8402(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->bWebSelectDialogIsUp:Z

    return p1
.end method

.method static synthetic access$8500(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    return-object v0
.end method

.method static synthetic access$8502(Landroid/webkit/WebViewClassic;Landroid/webkit/WebSelectDialog;)Landroid/webkit/WebSelectDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    return-object p1
.end method

.method static synthetic access$8600(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectFocusMoved:Z

    return v0
.end method

.method static synthetic access$8602(Landroid/webkit/WebViewClassic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mSelectFocusMoved:Z

    return p1
.end method

.method static synthetic access$8700(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget v0, p0, Landroid/webkit/WebViewClassic;->mSelectFieldPointer:I

    return v0
.end method

.method static synthetic access$8702(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput p1, p0, Landroid/webkit/WebViewClassic;->mSelectFieldPointer:I

    return p1
.end method

.method static synthetic access$8802(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)Landroid/webkit/WebViewCore$WebKitHitTest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    return-object p1
.end method

.method static synthetic access$8900(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->setTouchHighlightRects(Landroid/webkit/WebViewCore$WebKitHitTest;)V

    return-void
.end method

.method static synthetic access$900(Landroid/webkit/WebViewClassic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9000(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->setHitTestResult(Landroid/webkit/WebViewCore$WebKitHitTest;)V

    return-void
.end method

.method static synthetic access$902(Landroid/webkit/WebViewClassic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9100(Landroid/webkit/WebViewClassic;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->copyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9200(IILandroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 239
    invoke-static {p0, p1, p2}, Landroid/webkit/WebViewClassic;->nativeMapLayerRect(IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$9300(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->relocateAutoCompletePopup()V

    return-void
.end method

.method static synthetic access$9400(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    return-object v0
.end method

.method static synthetic access$9500(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$FindAllRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    return-object v0
.end method

.method static synthetic access$9600(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView$FindListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFindListener:Landroid/webkit/WebView$FindListener;

    return-object v0
.end method

.method static synthetic access$9700(Landroid/webkit/WebViewClassic;ILandroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->nativeScrollRectOnScreen(ILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$9800(Landroid/webkit/WebViewClassic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget v0, p0, Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I

    return v0
.end method

.method static synthetic access$9802(Landroid/webkit/WebViewClassic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput p1, p0, Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I

    return p1
.end method

.method static synthetic access$9900(Landroid/webkit/WebViewClassic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->setupWebkitSelect()Z

    move-result v0

    return v0
.end method

.method private adjustSelectionCursors()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 7281
    iget-boolean v12, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v12, :cond_0

    .line 7282
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 7310
    :goto_0
    return-void

    .line 7286
    :cond_0
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget-object v13, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    if-ne v12, v13, :cond_4

    move v9, v10

    .line 7287
    .local v9, wasDraggingLeft:Z
    :goto_1
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v6, v12, Landroid/graphics/Point;->x:I

    .line 7288
    .local v6, oldX:I
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v7, v12, Landroid/graphics/Point;->y:I

    .line 7289
    .local v7, oldY:I
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v2, v12, Landroid/graphics/Point;->x:I

    .line 7290
    .local v2, oldLeftX:I
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v3, v12, Landroid/graphics/Point;->y:I

    .line 7291
    .local v3, oldLeftY:I
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v4, v12, Landroid/graphics/Point;->x:I

    .line 7292
    .local v4, oldRightX:I
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v5, v12, Landroid/graphics/Point;->y:I

    .line 7293
    .local v5, oldRightY:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 7295
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    if-ne v4, v12, :cond_1

    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    if-eq v5, v12, :cond_5

    :cond_1
    move v8, v10

    .line 7297
    .local v8, rightChanged:Z
    :goto_2
    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    if-ne v2, v12, :cond_2

    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    if-eq v3, v12, :cond_6

    :cond_2
    move v1, v10

    .line 7299
    .local v1, leftChanged:Z
    :goto_3
    if-eqz v1, :cond_3

    if-eqz v8, :cond_3

    .line 7301
    if-nez v9, :cond_7

    move v0, v10

    .line 7302
    .local v0, draggingLeft:Z
    :goto_4
    if-eqz v0, :cond_8

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    :goto_5
    iput-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    .line 7304
    if-eqz v0, :cond_9

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    :goto_6
    iput-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    .line 7306
    if-eqz v0, :cond_a

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeftOffset:Landroid/graphics/Point;

    :goto_7
    iput-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    .line 7309
    .end local v0           #draggingLeft:Z
    :cond_3
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    invoke-virtual {v10, v6, v7}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .end local v1           #leftChanged:Z
    .end local v2           #oldLeftX:I
    .end local v3           #oldLeftY:I
    .end local v4           #oldRightX:I
    .end local v5           #oldRightY:I
    .end local v6           #oldX:I
    .end local v7           #oldY:I
    .end local v8           #rightChanged:Z
    .end local v9           #wasDraggingLeft:Z
    :cond_4
    move v9, v11

    .line 7286
    goto :goto_1

    .restart local v2       #oldLeftX:I
    .restart local v3       #oldLeftY:I
    .restart local v4       #oldRightX:I
    .restart local v5       #oldRightY:I
    .restart local v6       #oldX:I
    .restart local v7       #oldY:I
    .restart local v9       #wasDraggingLeft:Z
    :cond_5
    move v8, v11

    .line 7295
    goto :goto_2

    .restart local v8       #rightChanged:Z
    :cond_6
    move v1, v11

    .line 7297
    goto :goto_3

    .restart local v1       #leftChanged:Z
    :cond_7
    move v0, v11

    .line 7301
    goto :goto_4

    .line 7302
    .restart local v0       #draggingLeft:Z
    :cond_8
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    goto :goto_5

    .line 7304
    :cond_9
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    goto :goto_6

    .line 7306
    :cond_a
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRightOffset:Landroid/graphics/Point;

    goto :goto_7
.end method

.method private beginScrollEdit()V
    .locals 4

    .prologue
    .line 9923
    iget-wide v0, p0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 9924
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    .line 9926
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->scrollEditWithCursor()V

    .line 9928
    :cond_0
    return-void
.end method

.method private beginTextBatch()V
    .locals 1

    .prologue
    .line 12206
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    .line 12207
    return-void
.end method

.method private calcOurContentVisibleRectF(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 4295
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTempContentVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 4296
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTempContentVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewClassic;->viewToContentVisibleRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 4297
    return-void
.end method

.method private calculateCaretTop()Landroid/graphics/Point;
    .locals 7

    .prologue
    .line 7256
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v5, v5, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v6, v6, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    invoke-static {v3, v4, v5, v6}, Landroid/webkit/WebViewClassic;->scaleAlongSegment(IILandroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 7258
    .local v0, scale:F
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v3, v3, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v4, v4, Landroid/webkit/QuadF;->p2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v3, v4}, Landroid/webkit/WebViewClassic;->scaleCoordinate(FFF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 7260
    .local v1, x:I
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v3, v3, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    iget-object v4, v4, Landroid/webkit/QuadF;->p2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v3, v4}, Landroid/webkit/WebViewClassic;->scaleCoordinate(FFF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 7262
    .local v2, y:I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method private calculateChannelDistance(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/16 v7, 0x10

    .line 2073
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2074
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v3, v4

    int-to-double v3, v3

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    .line 2076
    .local v1, screenSize:D
    const-wide/high16 v3, 0x4008

    cmpg-double v3, v1, v3

    if-gez v3, :cond_1

    .line 2077
    sput v7, Landroid/webkit/WebViewClassic;->CHANNEL_DISTANCE:I

    .line 2085
    :goto_0
    sget v3, Landroid/webkit/WebViewClassic;->CHANNEL_DISTANCE:I

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Landroid/webkit/WebViewClassic;->CHANNEL_DISTANCE:I

    .line 2086
    sget v3, Landroid/webkit/WebViewClassic;->CHANNEL_DISTANCE:I

    if-ge v3, v7, :cond_0

    sput v7, Landroid/webkit/WebViewClassic;->CHANNEL_DISTANCE:I

    .line 2096
    :cond_0
    return-void

    .line 2078
    :cond_1
    const-wide/high16 v3, 0x4014

    cmpg-double v3, v1, v3

    if-gez v3, :cond_2

    .line 2079
    const/16 v3, 0x16

    sput v3, Landroid/webkit/WebViewClassic;->CHANNEL_DISTANCE:I

    goto :goto_0

    .line 2080
    :cond_2
    const-wide/high16 v3, 0x401c

    cmpg-double v3, v1, v3

    if-gez v3, :cond_3

    .line 2081
    const/16 v3, 0x1c

    sput v3, Landroid/webkit/WebViewClassic;->CHANNEL_DISTANCE:I

    goto :goto_0

    .line 2083
    :cond_3
    const/16 v3, 0x22

    sput v3, Landroid/webkit/WebViewClassic;->CHANNEL_DISTANCE:I

    goto :goto_0
.end method

.method private calculateOnewayScrollBoundary(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2102
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const/16 v1, 0x50

    sput v1, Landroid/webkit/WebViewClassic;->ONEWAY_SCROLL_TRIGGER_BOUNDARY:I

    .line 2103
    sget v1, Landroid/webkit/WebViewClassic;->ONEWAY_SCROLL_TRIGGER_BOUNDARY:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Landroid/webkit/WebViewClassic;->ONEWAY_SCROLL_TRIGGER_BOUNDARY:I

    .line 2105
    return-void
.end method

.method private canTextScroll(II)Z
    .locals 8
    .parameter "directionX"
    .parameter "directionY"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 11071
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getTextScrollX()I

    move-result v4

    .line 11072
    .local v4, scrollX:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getTextScrollY()I

    move-result v5

    .line 11073
    .local v5, scrollY:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v2

    .line 11074
    .local v2, maxScrollX:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollY()I

    move-result v3

    .line 11075
    .local v3, maxScrollY:I
    if-lez p1, :cond_3

    if-ge v4, v2, :cond_2

    move v0, v7

    .line 11078
    .local v0, canScrollX:Z
    :goto_0
    if-lez p2, :cond_6

    if-ge v5, v3, :cond_5

    move v1, v7

    .line 11081
    .local v1, canScrollY:Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v6, v7

    :cond_1
    return v6

    .end local v0           #canScrollX:Z
    .end local v1           #canScrollY:Z
    :cond_2
    move v0, v6

    .line 11075
    goto :goto_0

    :cond_3
    if-lez v4, :cond_4

    move v0, v7

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_0

    .restart local v0       #canScrollX:Z
    :cond_5
    move v1, v6

    .line 11078
    goto :goto_1

    :cond_6
    if-lez v5, :cond_7

    move v1, v7

    goto :goto_1

    :cond_7
    move v1, v6

    goto :goto_1
.end method

.method private cancelTouch()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 10133
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 10134
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 10135
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10137
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    if-eqz v0, :cond_1

    .line 10139
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewInputDispatcher;->setClickOnSelectHandleCenter(Z)V

    .line 10141
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_3

    .line 10143
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 10144
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 10145
    invoke-direct {p0, v2}, Landroid/webkit/WebViewClassic;->nativeSetIsScrolling(Z)V

    .line 10147
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 10148
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10149
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10150
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->removeTouchHighlight()V

    .line 10151
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 10152
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 10153
    return-void
.end method

.method private checkForceSecSelection()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2117
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/String;

    const-string v3, "com.google.android.gm"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2118
    new-instance v2, Ljava/lang/String;

    const-string v3, "com.android.settings"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2119
    new-instance v2, Ljava/lang/String;

    const-string v3, "com.osp.app.signin"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2121
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2123
    .local v1, pkgName:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2125
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettingsClassic;->setAdvancedCopyPasteFeature(Z)V

    .line 2126
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettingsClassic;->setUseDefaultClipboard(Z)V

    .line 2128
    :cond_0
    return-void
.end method

.method private checkHoverScrolling(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    .line 8668
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v9, v11

    .line 8669
    .local v9, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v10, v11

    .line 8670
    .local v10, y:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v7

    .line 8671
    .local v7, windowBottom:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v8

    .line 8678
    .local v8, windowRight:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v3

    .line 8679
    .local v3, maxX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v4

    .line 8680
    .local v4, maxY:I
    const/4 v6, 0x0

    .line 8681
    .local v6, onlyVScrollPossible:Z
    const/4 v5, 0x0

    .line 8682
    .local v5, onlyHScrollPossible:Z
    or-int v11, v3, v4

    if-nez v11, :cond_5

    .line 8683
    const/4 v6, 0x0

    .line 8684
    const/4 v5, 0x0

    .line 8700
    :goto_0
    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverAreaHeight:I

    iget v12, p0, Landroid/webkit/WebViewClassic;->mHoverTopAreaTop:I

    add-int/2addr v11, v12

    if-le v10, v11, :cond_0

    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverBottomAreaHeight:I

    sub-int v11, v7, v11

    if-ge v10, v11, :cond_0

    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverAreaHeight:I

    if-le v9, v11, :cond_0

    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverAreaHeight:I

    sub-int v11, v8, v11

    if-lt v9, v11, :cond_1

    :cond_0
    if-nez v6, :cond_8

    if-nez v5, :cond_8

    .line 8702
    :cond_1
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 8703
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->removeMessages(I)V

    .line 8706
    :cond_2
    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverIconStatus:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_3

    .line 8708
    const/4 v11, 0x1

    const/4 v12, -0x1

    :try_start_0
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 8709
    const/4 v11, 0x1

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverIconStatus:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8715
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0, v11}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 8716
    .local v0, contentsX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0, v11}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    .line 8717
    .local v1, contentsY:I
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v12, 0x87

    invoke-virtual {v11, v12, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 8718
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v11, p1}, Landroid/webkit/WebView$PrivateAccess;->super_onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 8852
    .end local v0           #contentsX:I
    .end local v1           #contentsY:I
    :cond_4
    :goto_2
    return-void

    .line 8685
    :cond_5
    if-eqz v3, :cond_6

    if-nez v4, :cond_6

    .line 8686
    const/4 v6, 0x0

    .line 8687
    const/4 v5, 0x1

    goto :goto_0

    .line 8688
    :cond_6
    if-nez v3, :cond_7

    if-eqz v4, :cond_7

    .line 8689
    const/4 v6, 0x1

    .line 8690
    const/4 v5, 0x0

    goto :goto_0

    .line 8692
    :cond_7
    const/4 v6, 0x1

    .line 8693
    const/4 v5, 0x1

    goto :goto_0

    .line 8710
    :catch_0
    move-exception v2

    .line 8711
    .local v2, e:Landroid/os/RemoteException;
    const-string/jumbo v11, "webview"

    const-string v12, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8719
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_8
    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverTopAreaTop:I

    if-lt v10, v11, :cond_9

    if-nez v6, :cond_b

    if-nez v5, :cond_b

    .line 8720
    :cond_9
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 8721
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->removeMessages(I)V

    .line 8724
    :cond_a
    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverIconStatus:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    .line 8726
    const/4 v11, 0x1

    const/4 v12, -0x1

    :try_start_1
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 8727
    const/4 v11, 0x1

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverIconStatus:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 8728
    :catch_1
    move-exception v2

    .line 8729
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string/jumbo v11, "webview"

    const-string v12, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 8733
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 8736
    :pswitch_1
    iget-boolean v11, p0, Landroid/webkit/WebViewClassic;->mCheckHoverScrollStart:Z

    if-nez v11, :cond_c

    .line 8737
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic;->mCheckHoverScrollStart:Z

    .line 8738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverScrollStartTime:I

    .line 8741
    :cond_c
    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverTopAreaTop:I

    if-lt v10, v11, :cond_e

    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverAreaHeight:I

    iget v12, p0, Landroid/webkit/WebViewClassic;->mHoverTopAreaTop:I

    add-int/2addr v11, v12

    if-gt v10, v11, :cond_e

    if-eqz v6, :cond_e

    .line 8743
    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverIconStatus:I

    const/16 v12, 0xb

    if-eq v11, v12, :cond_d

    .line 8745
    const/16 v11, 0xb

    const/4 v12, -0x1

    :try_start_2
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 8746
    const/16 v11, 0xb

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverIconStatus:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 8751
    :cond_d
    :goto_3
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 8753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionStartTime:I

    .line 8754
    const/4 v11, 0x1

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverScrollDirection:I

    .line 8755
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 8747
    :catch_2
    move-exception v2

    .line 8748
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string/jumbo v11, "webview"

    const-string v12, "Failed to change Pen Point to HOVERING_SCROLL_UP"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 8758
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_e
    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverBottomAreaHeight:I

    sub-int v11, v7, v11

    if-lt v10, v11, :cond_10

    if-gt v10, v7, :cond_10

    if-eqz v6, :cond_10

    .line 8760
    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverIconStatus:I

    const/16 v12, 0xf

    if-eq v11, v12, :cond_f

    .line 8762
    const/16 v11, 0xf

    const/4 v12, -0x1

    :try_start_3
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 8763
    const/16 v11, 0xf

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverIconStatus:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 8768
    :cond_f
    :goto_4
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 8770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionStartTime:I

    .line 8771
    const/4 v11, 0x2

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverScrollDirection:I

    .line 8772
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 8764
    :catch_3
    move-exception v2

    .line 8765
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string/jumbo v11, "webview"

    const-string v12, "Failed to change Pen Point to HOVERING_SCROLL_DOWN"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 8774
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_10
    if-ltz v9, :cond_12

    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverAreaHeight:I

    if-gt v9, v11, :cond_12

    if-eqz v5, :cond_12

    .line 8776
    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverIconStatus:I

    const/16 v12, 0x11

    if-eq v11, v12, :cond_11

    .line 8778
    const/16 v11, 0x11

    const/4 v12, -0x1

    :try_start_4
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 8779
    const/16 v11, 0x11

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverIconStatus:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 8784
    :cond_11
    :goto_5
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 8786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionStartTime:I

    .line 8787
    const/4 v11, 0x3

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverScrollDirection:I

    .line 8788
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 8780
    :catch_4
    move-exception v2

    .line 8781
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string/jumbo v11, "webview"

    const-string v12, "Failed to change Pen Point to HOVERING_SCROLL_LEFT"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 8790
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_12
    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverAreaHeight:I

    sub-int v11, v8, v11

    if-lt v9, v11, :cond_14

    if-gt v9, v8, :cond_14

    if-eqz v5, :cond_14

    .line 8792
    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverIconStatus:I

    const/16 v12, 0xd

    if-eq v11, v12, :cond_13

    .line 8794
    const/16 v11, 0xd

    const/4 v12, -0x1

    :try_start_5
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 8795
    const/16 v11, 0xd

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverIconStatus:I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 8800
    :cond_13
    :goto_6
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 8801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionStartTime:I

    .line 8802
    const/4 v11, 0x4

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverScrollDirection:I

    .line 8803
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    iget-object v12, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 8796
    :catch_5
    move-exception v2

    .line 8797
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string/jumbo v11, "webview"

    const-string v12, "Failed to change Pen Point to HOVERING_SCROLL_RIGHT"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 8808
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_14
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 8809
    const/4 v11, 0x0

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionStartTime:I

    .line 8810
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->removeMessages(I)V

    .line 8813
    :cond_15
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic;->mCheckHoverScrollStart:Z

    .line 8815
    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverIconStatus:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    .line 8817
    const/4 v11, 0x1

    const/4 v12, -0x1

    :try_start_6
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 8818
    const/4 v11, 0x1

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverIconStatus:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_2

    .line 8819
    :catch_6
    move-exception v2

    .line 8820
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string/jumbo v11, "webview"

    const-string v12, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 8827
    .end local v2           #e:Landroid/os/RemoteException;
    :pswitch_2
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 8828
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->removeMessages(I)V

    .line 8832
    :cond_16
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic;->mCheckHoverScrollStart:Z

    .line 8834
    iget v11, p0, Landroid/webkit/WebViewClassic;->mHoverIconStatus:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_17

    .line 8836
    const/4 v11, 0x1

    const/4 v12, -0x1

    :try_start_7
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 8837
    const/4 v11, 0x1

    iput v11, p0, Landroid/webkit/WebViewClassic;->mHoverIconStatus:I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 8843
    :cond_17
    :goto_7
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v11, :cond_4

    .line 8844
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {v11}, Landroid/webkit/OverScrollGlow;->releaseAll()V

    goto/16 :goto_2

    .line 8838
    :catch_7
    move-exception v2

    .line 8839
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string/jumbo v11, "webview"

    const-string v12, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 8733
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private clearHelpers()V
    .locals 0

    .prologue
    .line 3059
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V

    .line 3060
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->clearActionModes()V

    .line 3061
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->dismissFullScreenMode()V

    .line 3062
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->dismissWebSelectDialog()V

    .line 3063
    return-void
.end method

.method private commitTextBatch()V
    .locals 2

    .prologue
    .line 12210
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    .line 12211
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mBatchedTextChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessages(Ljava/util/ArrayList;)V

    .line 12213
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mBatchedTextChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12214
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    .line 12215
    return-void
.end method

.method private static computeDuration(II)I
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 5045
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5046
    .local v0, distance:I
    mul-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v1, v2, 0x1e0

    .line 5047
    .local v1, duration:I
    const/16 v2, 0x2ee

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private computeRealHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 4401
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 4402
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHistoryWidth:I

    .line 4405
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private computeRealVerticalScrollRange()I
    .locals 2

    .prologue
    .line 4431
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 4432
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHistoryHeight:I

    .line 4435
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private contentScrollTo(IIZ)V
    .locals 5
    .parameter "cx"
    .parameter "cy"
    .parameter "animate"

    .prologue
    .line 5252
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-eqz v3, :cond_0

    .line 5288
    :goto_0
    return-void

    .line 5260
    :cond_0
    const/4 v1, 0x0

    .line 5261
    .local v1, vx:I
    const/4 v2, 0x0

    .line 5262
    .local v2, vy:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v3

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getOverlappingActionModeHeight()I

    move-result v4

    sub-int v0, v3, v4

    .line 5264
    .local v0, deltaY:I
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mFindIsUp:Z

    if-nez v3, :cond_1

    .line 5265
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v1

    .line 5271
    invoke-virtual {p0, p2}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    .line 5287
    :goto_1
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, p3, v3}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    goto :goto_0

    .line 5276
    :cond_1
    if-gez v0, :cond_2

    .line 5277
    const/4 v0, 0x0

    .line 5279
    :cond_2
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    .line 5280
    invoke-virtual {p0, p2}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v3

    add-int v2, v3, v0

    goto :goto_1
.end method

.method private contentSizeChanged(Z)V
    .locals 2
    .parameter "updateLayout"

    .prologue
    .line 5298
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 5317
    :cond_0
    :goto_0
    return-void

    .line 5302
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-eqz v0, :cond_3

    .line 5303
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 5305
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 5307
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mWidthCanMeasure:Z

    if-eqz v0, :cond_5

    .line 5308
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    if-eqz p1, :cond_0

    .line 5310
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 5315
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->sendViewSizeZoom(Z)Z

    goto :goto_0
.end method

.method private copySelectionSec(Z)Z
    .locals 6
    .parameter "useDefaultClipboard"

    .prologue
    .line 7856
    const/4 v2, 0x0

    .line 7857
    .local v2, copiedSomething:Z
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getUseDefaultClipboard()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7858
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v3

    .line 7859
    .local v3, selection:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    if-eq v3, v4, :cond_1

    .line 7863
    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 7864
    .local v1, clipdata:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v1, v3}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 7865
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v5, "clipboardEx"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 7867
    .local v0, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 7868
    const/4 v2, 0x1

    .line 7877
    .end local v0           #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    .end local v1           #clipdata:Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v3           #selection:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 7871
    :cond_2
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v4, :cond_1

    .line 7872
    const/4 v2, 0x1

    .line 7873
    const-string v4, "Copy"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/webkit/WebViewClassic;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 12828
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 12830
    .local v1, cm:Landroid/content/ClipboardManager;
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 12831
    .local v0, clip:Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 12832
    return-void
.end method

.method private destroyJava()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3110
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->blockMessages()V

    .line 3111
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 3118
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    .line 3120
    monitor-enter p0

    .line 3121
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 3122
    .local v0, webViewCore:Landroid/webkit/WebViewCore;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 3123
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->destroy()V

    .line 3124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3126
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3129
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->shutdown()V

    .line 3132
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    monitor-enter v2

    .line 3133
    :try_start_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 3134
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3137
    .end local v0           #webViewCore:Landroid/webkit/WebViewCore;
    :cond_0
    return-void

    .line 3124
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3134
    .restart local v0       #webViewCore:Landroid/webkit/WebViewCore;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private destroyNative()V
    .locals 3

    .prologue
    .line 3140
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v1, :cond_0

    .line 3149
    :goto_0
    return-void

    .line 3141
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    .line 3142
    .local v0, nptr:I
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    .line 3143
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 3145
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->nativeDestroy(I)V

    goto :goto_0

    .line 3147
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v2, Landroid/webkit/WebViewClassic$DestroyNativeRunnable;

    invoke-direct {v2, v0}, Landroid/webkit/WebViewClassic$DestroyNativeRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static disablePlatformNotifications()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3185
    const-class v2, Landroid/webkit/WebViewClassic;

    monitor-enter v2

    .line 3186
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Landroid/webkit/WebViewClassic;->sNotificationsEnabled:Z

    .line 3187
    invoke-static {}, Landroid/webkit/JniUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3188
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 3189
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->disableProxyListener(Landroid/content/Context;)V

    .line 3190
    :cond_0
    monitor-exit v2

    .line 3191
    return-void

    .line 3190
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static declared-synchronized disableProxyListener(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2418
    const-class v1, Landroid/webkit/WebViewClassic;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2423
    :goto_0
    monitor-exit v1

    return-void

    .line 2421
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2422
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2418
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private dismissFullScreenMode()V
    .locals 1

    .prologue
    .line 8574
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->inFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8575
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v0}, Landroid/webkit/PluginFullScreenHolder;->hide()V

    .line 8576
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    .line 8577
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 8579
    :cond_0
    return-void
.end method

.method private dismissWebSelectDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3076
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->bWebSelectDialogIsUp:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    if-eqz v0, :cond_0

    .line 3077
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    invoke-virtual {v0}, Landroid/webkit/WebSelectDialog;->dismiss()V

    .line 3078
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    .line 3079
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->bWebSelectDialogIsUp:Z

    .line 3080
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7c

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3082
    :cond_0
    return-void
.end method

.method private displayColorPicker()V
    .locals 3

    .prologue
    .line 6248
    const-string/jumbo v1, "webview"

    const-string v2, "displayColorPicker"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6249
    new-instance v0, Landroid/webkit/WebViewClassic$ColorPickerDialog;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/webkit/WebViewClassic$ColorPickerDialog;-><init>(Landroid/webkit/WebViewClassic;Landroid/content/Context;)V

    .line 6250
    .local v0, cpd:Landroid/webkit/WebViewClassic$ColorPickerDialog;
    invoke-virtual {v0}, Landroid/webkit/WebViewClassic$ColorPickerDialog;->show()V

    .line 6251
    return-void
.end method

.method private displayDateTimePickers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "Type"
    .parameter "Value"

    .prologue
    .line 6360
    new-instance v0, Landroid/webkit/WebViewClassic$DateTimePicker;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/webkit/WebViewClassic$DateTimePicker;-><init>(Landroid/webkit/WebViewClassic;Landroid/content/Context;)V

    .line 6362
    .local v0, dt:Landroid/webkit/WebViewClassic$DateTimePicker;
    const-string v1, "date"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6363
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewClassic$DateTimePicker;->show(ILjava/lang/String;)V

    .line 6369
    :cond_0
    :goto_0
    return-void

    .line 6364
    :cond_1
    const-string v1, "datetime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "datetime-local"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6365
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewClassic$DateTimePicker;->show(ILjava/lang/String;)V

    goto :goto_0

    .line 6367
    :cond_3
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6368
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewClassic$DateTimePicker;->show(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private displaySoftKeyboard(Z)V
    .locals 7
    .parameter "isTextView"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6218
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 6222
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    move v1, v2

    .line 6223
    .local v1, zoom:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 6224
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    iget v5, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    int-to-float v5, v5

    iget v6, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 6225
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 6232
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 6233
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsSoftkeyboardVisible:Z

    .line 6234
    return-void

    .end local v1           #zoom:Z
    :cond_1
    move v1, v3

    .line 6222
    goto :goto_0
.end method

.method private distanceSquared(IILandroid/graphics/Point;)F
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "p"

    .prologue
    .line 7313
    iget v2, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p1

    int-to-float v0, v2

    .line 7314
    .local v0, dx:F
    iget v2, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p2

    int-to-float v1, v2

    .line 7315
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method private doDrag(II)Z
    .locals 20
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 10019
    const/4 v12, 0x1

    .line 10020
    .local v12, allDrag:Z
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_0

    .line 10021
    const-string/jumbo v2, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doDrag deltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deltaY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurrentScrollingLayerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mTouchMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getInvScale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10027
    :cond_0
    or-int v2, p1, p2

    if-eqz v2, :cond_3

    .line 10028
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    .line 10029
    .local v5, oldX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    .line 10030
    .local v6, oldY:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v7

    .line 10031
    .local v7, rangeX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v8

    .line 10032
    .local v8, rangeY:I
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v13, v2

    .line 10033
    .local v13, contentX:I
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v14, v2

    .line 10036
    .local v14, contentY:I
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 10039
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mTouchInEditText:Z

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p2}, Landroid/webkit/WebViewClassic;->canTextScroll(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10041
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollX()I

    move-result v5

    .line 10042
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v7

    .line 10043
    move/from16 p1, v13

    .line 10044
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollY()I

    move-result v6

    .line 10045
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollY()I

    move-result v8

    .line 10046
    move/from16 p2, v14

    .line 10047
    const/16 v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 10048
    const/4 v12, 0x0

    .line 10074
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v2, :cond_2

    .line 10075
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/webkit/OverScrollGlow;->setOverScrollDeltas(II)V

    .line 10078
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/webkit/WebViewClassic;->mOverscrollDistance:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/webkit/WebViewClassic;->mOverscrollDistance:I

    const/4 v11, 0x1

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v11}, Landroid/webkit/WebView$PrivateAccess;->overScrollBy(IIIIIIIIZ)V

    .line 10081
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {v2}, Landroid/webkit/OverScrollGlow;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10082
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v15

    .line 10083
    .local v15, detector:Landroid/view/ScaleGestureDetector;
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10084
    const-string/jumbo v2, "webview"

    const-string v3, "mOverScrollGlow.isAnimating invalidate skip during zooming"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10089
    .end local v5           #oldX:I
    .end local v6           #oldY:I
    .end local v7           #rangeX:I
    .end local v8           #rangeY:I
    .end local v13           #contentX:I
    .end local v14           #contentY:I
    .end local v15           #detector:Landroid/view/ScaleGestureDetector;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->keepZoomPickerVisible()V

    .line 10090
    return v12

    .line 10049
    .restart local v5       #oldX:I
    .restart local v6       #oldY:I
    .restart local v7       #rangeX:I
    .restart local v8       #rangeY:I
    .restart local v13       #contentX:I
    .restart local v14       #contentY:I
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    if-eqz v2, :cond_1

    .line 10052
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    .line 10053
    .local v16, maxX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    .line 10054
    .local v17, maxY:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v13

    move/from16 v0, v16

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 10056
    .local v18, resultX:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v14

    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 10059
    .local v19, resultY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move/from16 v0, v19

    if-ne v0, v2, :cond_5

    or-int v2, v13, v14

    if-nez v2, :cond_1

    .line 10063
    :cond_5
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 10064
    move/from16 p1, v13

    .line 10065
    move/from16 p2, v14

    .line 10066
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 10067
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 10068
    move/from16 v7, v16

    .line 10069
    move/from16 v8, v17

    .line 10070
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 10086
    .end local v16           #maxX:I
    .end local v17           #maxY:I
    .end local v18           #resultX:I
    .end local v19           #resultY:I
    .restart local v15       #detector:Landroid/view/ScaleGestureDetector;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto :goto_1
.end method

.method private doFling()V
    .locals 27

    .prologue
    .line 10487
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 10590
    :cond_0
    :goto_0
    return-void

    .line 10490
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v6

    .line 10491
    .local v6, maxX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v8

    .line 10493
    .local v8, maxY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebViewClassic;->mMaximumFling:I

    int-to-float v7, v7

    invoke-virtual {v2, v5, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 10494
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 10495
    .local v25, vx:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v26, v0

    .line 10497
    .local v26, vy:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    .line 10498
    .local v3, scrollX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    .line 10499
    .local v4, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mOverscrollDistance:I

    move/from16 v23, v0

    .line 10500
    .local v23, overscrollDistance:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mOverflingDistance:I

    move/from16 v19, v0

    .line 10503
    .local v19, overflingDistance:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v5, 0x9

    if-ne v2, v5, :cond_7

    .line 10504
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 10505
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 10506
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 10507
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    .line 10509
    const/16 v19, 0x0

    move/from16 v23, v19

    .line 10519
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    if-eqz v2, :cond_3

    .line 10520
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    and-int/lit8 v2, v2, 0x2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_8

    .line 10521
    const/16 v26, 0x0

    .line 10526
    :cond_3
    :goto_2
    if-nez v6, :cond_4

    if-eqz v26, :cond_5

    :cond_4
    if-nez v8, :cond_9

    if-nez v25, :cond_9

    .line 10527
    :cond_5
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 10528
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v2, :cond_6

    .line 10529
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 10531
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10532
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 10510
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v5, 0xa

    if-ne v2, v5, :cond_2

    .line 10511
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollX()I

    move-result v3

    .line 10512
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollY()I

    move-result v4

    .line 10513
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v6

    .line 10514
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollY()I

    move-result v8

    .line 10516
    const/16 v19, 0x0

    move/from16 v23, v19

    goto :goto_1

    .line 10523
    :cond_8
    const/16 v25, 0x0

    goto :goto_2

    .line 10536
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v21

    .line 10537
    .local v21, currentVelocity:F
    move/from16 v0, v25

    int-to-double v9, v0

    move/from16 v0, v26

    int-to-double v11, v0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v24, v0

    .line 10538
    .local v24, velocity:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_b

    const/4 v2, 0x0

    cmpl-float v2, v21, v2

    if-lez v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    const v5, 0x3e4ccccd

    mul-float/2addr v2, v5

    cmpl-float v2, v24, v2

    if-lez v2, :cond_b

    .line 10540
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mLastVelY:F

    float-to-double v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mLastVelX:F

    float-to-double v11, v2

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    move/from16 v0, v26

    int-to-double v11, v0

    move/from16 v0, v25

    int-to-double v13, v0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v22, v0

    .line 10542
    .local v22, deltaR:F
    const v20, 0x40c90fdb

    .line 10543
    .local v20, circle:F
    const v2, 0x40b4f4ab

    cmpl-float v2, v22, v2

    if-gtz v2, :cond_a

    const v2, 0x3f20d97c

    cmpg-float v2, v22, v2

    if-gez v2, :cond_b

    .line 10544
    :cond_a
    move/from16 v0, v25

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebViewClassic;->mLastVelX:F

    mul-float v5, v5, v21

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    div-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v25, v0

    .line 10545
    move/from16 v0, v26

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebViewClassic;->mLastVelY:F

    mul-float v5, v5, v21

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    div-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v26, v0

    .line 10546
    move/from16 v0, v25

    int-to-double v9, v0

    move/from16 v0, v26

    int-to-double v11, v0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v24, v0

    .line 10563
    .end local v20           #circle:F
    .end local v22           #deltaR:F
    :cond_b
    if-eqz v3, :cond_c

    if-ne v3, v6, :cond_d

    :cond_c
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v2, v5, :cond_d

    .line 10564
    const/16 v25, 0x0

    .line 10566
    :cond_d
    if-eqz v4, :cond_e

    if-ne v4, v8, :cond_f

    :cond_e
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v2, v5, :cond_f

    .line 10567
    const/16 v26, 0x0

    .line 10570
    :cond_f
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_15

    .line 10571
    if-lez v25, :cond_10

    move/from16 v0, v23

    neg-int v2, v0

    if-eq v3, v2, :cond_11

    :cond_10
    if-gez v25, :cond_12

    add-int v2, v6, v23

    if-ne v3, v2, :cond_12

    .line 10573
    :cond_11
    const/16 v25, 0x0

    .line 10575
    :cond_12
    if-lez v26, :cond_13

    move/from16 v0, v23

    neg-int v2, v0

    if-eq v4, v2, :cond_14

    :cond_13
    if-gez v26, :cond_15

    add-int v2, v8, v23

    if-ne v4, v2, :cond_15

    .line 10577
    :cond_14
    const/16 v26, 0x0

    .line 10581
    :cond_15
    move/from16 v0, v25

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mLastVelX:F

    .line 10582
    move/from16 v0, v26

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mLastVelY:F

    .line 10583
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    .line 10586
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    move/from16 v0, v25

    neg-int v12, v0

    move/from16 v0, v26

    neg-int v13, v0

    const/4 v14, 0x0

    const/16 v16, 0x0

    if-nez v6, :cond_16

    const/16 v18, 0x0

    :goto_3
    move v10, v3

    move v11, v4

    move v15, v6

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v19}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 10589
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    :cond_16
    move/from16 v18, v19

    .line 10586
    goto :goto_3
.end method

.method private doHoverScrollMove()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 8870
    const/4 v9, 0x0

    .line 8872
    .local v9, offset:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionCurrentTime:I

    .line 8873
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionCurrentTime:I

    iget v2, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionStartTime:I

    sub-int/2addr v0, v2

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionDurationTime:I

    .line 8875
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionCurrentTime:I

    iget v2, p0, Landroid/webkit/WebViewClassic;->mHoverScrollStartTime:I

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/webkit/WebViewClassic;->mHoverScrollTimeInterval:I

    if-ge v0, v2, :cond_1

    .line 8953
    :cond_0
    :goto_0
    return-void

    .line 8878
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionDurationTime:I

    if-le v0, v11, :cond_5

    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionDurationTime:I

    if-ge v0, v10, :cond_5

    .line 8879
    iget v0, p0, Landroid/webkit/WebViewClassic;->HOVERSCROLL_SPEED_STEP_2:I

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollSpeed:I

    .line 8887
    :goto_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v4, :cond_8

    .line 8888
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollSpeed:I

    mul-int/lit8 v9, v0, -0x1

    .line 8890
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverTopAreaTop:I

    if-lez v0, :cond_2

    .line 8891
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v0

    mul-int/lit8 v9, v0, -0x1

    .line 8910
    :cond_2
    :goto_2
    if-gez v9, :cond_3

    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    if-lez v9, :cond_a

    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v11, :cond_a

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 8913
    :cond_4
    invoke-direct {p0, v1, v9, v4, v1}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    .line 8914
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    iget v1, p0, Landroid/webkit/WebViewClassic;->HOVERSCROLL_DELAY:I

    int-to-long v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 8880
    :cond_5
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionDurationTime:I

    if-lt v0, v10, :cond_6

    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionDurationTime:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_6

    .line 8881
    iget v0, p0, Landroid/webkit/WebViewClassic;->HOVERSCROLL_SPEED_STEP_3:I

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollSpeed:I

    goto :goto_1

    .line 8882
    :cond_6
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverRecognitionDurationTime:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_7

    .line 8883
    iget v0, p0, Landroid/webkit/WebViewClassic;->HOVERSCROLL_SPEED_STEP_4:I

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollSpeed:I

    goto :goto_1

    .line 8885
    :cond_7
    iget v0, p0, Landroid/webkit/WebViewClassic;->HOVERSCROLL_SPEED_STEP_1:I

    iput v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollSpeed:I

    goto :goto_1

    .line 8892
    :cond_8
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v12, :cond_9

    .line 8893
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollSpeed:I

    mul-int/lit8 v9, v0, -0x1

    goto :goto_2

    .line 8895
    :cond_9
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollSpeed:I

    mul-int/lit8 v9, v0, 0x1

    goto :goto_2

    .line 8915
    :cond_a
    if-gez v9, :cond_b

    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v12, :cond_b

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    if-gtz v0, :cond_c

    :cond_b
    if-lez v9, :cond_d

    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v10, :cond_d

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 8917
    :cond_c
    invoke-direct {p0, v9, v1, v4, v1}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    .line 8918
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    iget v1, p0, Landroid/webkit/WebViewClassic;->HOVERSCROLL_DELAY:I

    int-to-long v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/webkit/WebViewClassic$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8928
    :cond_d
    const/4 v7, 0x0

    .line 8929
    .local v7, deltaX:I
    const/4 v8, 0x0

    .line 8930
    .local v8, deltaY:I
    const/4 v5, 0x0

    .line 8931
    .local v5, MaxX:I
    const/4 v6, 0x0

    .line 8933
    .local v6, MaxY:I
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverTopAreaTop:I

    if-lez v0, :cond_e

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v4, :cond_e

    .line 8934
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollSpeed:I

    mul-int/lit8 v9, v0, -0x1

    .line 8937
    :cond_e
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollDirection:I

    if-eq v0, v4, :cond_10

    :cond_f
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v2

    if-ne v0, v2, :cond_12

    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v11, :cond_12

    .line 8939
    :cond_10
    move v8, v9

    .line 8940
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v6

    .line 8947
    :cond_11
    :goto_3
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_0

    .line 8948
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {v0, v7, v8}, Landroid/webkit/OverScrollGlow;->setOverScrollDeltas(II)V

    .line 8949
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/OverScrollGlow;->pullGlow(IIIIII)V

    .line 8950
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 8941
    :cond_12
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollDirection:I

    if-eq v0, v12, :cond_14

    :cond_13
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v2

    if-ne v0, v2, :cond_11

    iget v0, p0, Landroid/webkit/WebViewClassic;->mHoverScrollDirection:I

    if-ne v0, v10, :cond_11

    .line 8943
    :cond_14
    move v7, v9

    .line 8944
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v5

    goto :goto_3
.end method

.method private doTrackball(JI)V
    .locals 25
    .parameter "time"
    .parameter "metaState"

    .prologue
    .line 10379
    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/webkit/WebViewClassic;->mTrackballLastTime:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Landroid/webkit/WebViewClassic;->mTrackballFirstTime:J

    sub-long/2addr v5, v7

    long-to-int v12, v5

    .line 10380
    .local v12, elapsed:I
    if-nez v12, :cond_0

    .line 10381
    const/16 v12, 0xc8

    .line 10383
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    const/high16 v5, 0x447a

    mul-float/2addr v3, v5

    int-to-float v5, v12

    div-float v22, v3, v5

    .line 10384
    .local v22, xRate:F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    const/high16 v5, 0x447a

    mul-float/2addr v3, v5

    int-to-float v5, v12

    div-float v24, v3, v5

    .line 10385
    .local v24, yRate:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v19

    .line 10386
    .local v19, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v18

    .line 10387
    .local v18, viewHeight:I
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 10388
    .local v9, ax:F
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 10389
    .local v10, ay:F
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 10397
    .local v15, maxA:F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    sub-int v20, v3, v19

    .line 10398
    .local v20, width:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    sub-int v13, v3, v18

    .line 10399
    .local v13, height:I
    if-gez v20, :cond_1

    const/16 v20, 0x0

    .line 10400
    :cond_1
    if-gez v13, :cond_2

    const/4 v13, 0x0

    .line 10401
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    const/high16 v5, 0x4040

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 10402
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    const/high16 v5, 0x4040

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 10403
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 10404
    const/4 v3, 0x0

    float-to-int v5, v15

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 10405
    .local v11, count:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v16

    .line 10406
    .local v16, oldScrollX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v17

    .line 10407
    .local v17, oldScrollY:I
    if-lez v11, :cond_8

    .line 10408
    cmpg-float v3, v9, v10

    if-gez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    const/16 v4, 0x13

    .line 10412
    .local v4, selectKeyCode:I
    :goto_0
    const/16 v3, 0xa

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 10419
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v3, :cond_7

    .line 10420
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    if-ge v14, v11, :cond_6

    .line 10421
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebViewClassic;->letPageHandleNavKey(IJZI)V

    .line 10420
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 10408
    .end local v4           #selectKeyCode:I
    .end local v14           #i:I
    :cond_3
    const/16 v4, 0x14

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5

    const/16 v4, 0x15

    goto :goto_0

    :cond_5
    const/16 v4, 0x16

    goto :goto_0

    .line 10423
    .restart local v4       #selectKeyCode:I
    .restart local v14       #i:I
    :cond_6
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebViewClassic;->letPageHandleNavKey(IJZI)V

    .line 10425
    .end local v14           #i:I
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    .line 10427
    .end local v4           #selectKeyCode:I
    :cond_8
    const/4 v3, 0x5

    if-lt v11, v3, :cond_c

    .line 10428
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebViewClassic;->scaleTrackballX(FI)I

    move-result v21

    .line 10429
    .local v21, xMove:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v13}, Landroid/webkit/WebViewClassic;->scaleTrackballY(FI)I

    move-result v23

    .line 10438
    .local v23, yMove:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    sub-int v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v3, v5, :cond_9

    .line 10439
    const/16 v21, 0x0

    .line 10441
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    sub-int v3, v3, v17

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v3, v5, :cond_a

    .line 10442
    const/16 v23, 0x0

    .line 10444
    :cond_a
    if-nez v21, :cond_b

    if-eqz v23, :cond_c

    .line 10445
    :cond_b
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    .line 10448
    .end local v21           #xMove:I
    .end local v23           #yMove:I
    :cond_c
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 5498
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-eqz v2, :cond_1

    .line 5499
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5500
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 5616
    :cond_0
    :goto_0
    return-void

    .line 5503
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v2, :cond_0

    .line 5505
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v11

    .line 5506
    .local v11, animateZoom:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_10

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_10

    :cond_3
    const/4 v10, 0x1

    .line 5510
    .local v10, animateScroll:Z
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 5511
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 5512
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5513
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 5515
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    if-nez v2, :cond_5

    .line 5516
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5518
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 5521
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v16

    .line 5522
    .local v16, saveCount:I
    if-eqz v11, :cond_11

    .line 5523
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/webkit/ZoomManager;->animateZoom(Landroid/graphics/Canvas;)V

    .line 5528
    :cond_6
    :goto_2
    const/4 v9, 0x0

    .line 5531
    .local v9, UIAnimationsRunning:Z
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebViewClassic;->nativeEvaluateLayersAnimations(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5533
    const/4 v9, 0x1

    .line 5538
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xc4

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5539
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 5543
    :cond_7
    const/4 v8, 0x0

    .line 5544
    .local v8, extras:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mFindIsUp:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mShowTextSelectionExtra:Z

    if-eqz v2, :cond_8

    .line 5545
    const/4 v8, 0x1

    .line 5549
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5550
    const/4 v2, 0x1

    if-ne v8, v2, :cond_9

    .line 5551
    const/4 v8, 0x0

    .line 5555
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebViewClassic;->calcOurContentVisibleRectF(Landroid/graphics/RectF;)V

    .line 5556
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5557
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    .line 5558
    .local v4, invScreenRect:Landroid/graphics/Rect;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebViewClassic;->mScreenRect:Landroid/graphics/Rect;

    .line 5559
    .local v5, screenRect:Landroid/graphics/Rect;
    :goto_4
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_a

    .line 5560
    const-string/jumbo v2, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start DrawGL functor!! Scale = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  ScrollX = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  ScrollY = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5562
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebViewClassic;->nativeCreateDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)I

    move-result v14

    .local v14, functor:I
    move-object/from16 v2, p1

    .line 5564
    check-cast v2, Landroid/view/HardwareCanvas;

    invoke-virtual {v2, v14}, Landroid/view/HardwareCanvas;->callDrawGLFunction(I)I

    .line 5565
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mHardwareAccelSkia:Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getHardwareAccelSkiaEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_b

    .line 5566
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getHardwareAccelSkiaEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebViewClassic;->mHardwareAccelSkia:Z

    .line 5567
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mHardwareAccelSkia:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebViewClassic;->nativeUseHardwareAccelSkia(Z)V

    .line 5570
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v12

    .line 5571
    .local v12, detector:Landroid/view/ScaleGestureDetector;
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5572
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/ZoomManager;->setHandleMoveEvForZooming(Z)V

    .line 5575
    :cond_c
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_d

    .line 5576
    const-string/jumbo v2, "webview"

    const-string v3, "Finish DrawGL functor!!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5589
    .end local v4           #invScreenRect:Landroid/graphics/Rect;
    .end local v5           #screenRect:Landroid/graphics/Rect;
    .end local v12           #detector:Landroid/view/ScaleGestureDetector;
    .end local v14           #functor:I
    :cond_d
    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5591
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mFindIsUp:Z

    if-nez v2, :cond_e

    .line 5592
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebViewClassic;->drawTextSelectionHandles(Landroid/graphics/Canvas;)V

    .line 5596
    :cond_e
    const/4 v2, 0x2

    if-ne v8, v2, :cond_f

    .line 5597
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_f

    .line 5598
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 5603
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebViewClassic;->mBTKeyBoardOn:Z

    if-eqz v2, :cond_18

    .line 5604
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebViewClassic;->mBTKeyBoardOn:Z

    .line 5611
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    instance-of v2, v2, Landroid/webkit/HtmlComposerView;

    if-eqz v2, :cond_0

    .line 5612
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v15

    check-cast v15, Landroid/webkit/HtmlComposerView;

    .line 5613
    .local v15, htmlComposerView:Landroid/webkit/HtmlComposerView;
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/webkit/HtmlComposerView;->HtmlComposerDrawContent(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 5506
    .end local v8           #extras:I
    .end local v9           #UIAnimationsRunning:Z
    .end local v10           #animateScroll:Z
    .end local v15           #htmlComposerView:Landroid/webkit/HtmlComposerView;
    .end local v16           #saveCount:I
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5524
    .restart local v10       #animateScroll:Z
    .restart local v16       #saveCount:I
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_6

    .line 5525
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_2

    .line 5557
    .restart local v8       #extras:I
    .restart local v9       #UIAnimationsRunning:Z
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 5558
    .restart local v4       #invScreenRect:Landroid/graphics/Rect;
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 5578
    .end local v4           #invScreenRect:Landroid/graphics/Rect;
    :cond_14
    const/4 v13, 0x0

    .line 5579
    .local v13, df:Landroid/graphics/DrawFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->isZoomAnimating()Z

    move-result v2

    if-nez v2, :cond_15

    if-eqz v9, :cond_17

    .line 5580
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 5584
    :cond_16
    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 5585
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mBackgroundColor:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v8}, Landroid/webkit/WebViewClassic;->nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V

    .line 5586
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    goto/16 :goto_5

    .line 5581
    :cond_17
    if-eqz v10, :cond_16

    .line 5582
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic;->mScrollFilter:Landroid/graphics/DrawFilter;

    goto :goto_7

    .line 5607
    .end local v13           #df:Landroid/graphics/DrawFilter;
    :cond_18
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebViewClassic;->drawSelectionHandles(Landroid/graphics/Canvas;)V

    goto :goto_6
.end method

.method private drawOverScrollBackground(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 5623
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBackground:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 5624
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBackground:Landroid/graphics/Paint;

    .line 5625
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080735

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 5628
    .local v6, bm:Landroid/graphics/Bitmap;
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v6, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5630
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    .line 5631
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5632
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5633
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    const v1, -0x444445

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5636
    .end local v6           #bm:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v9, 0x0

    .line 5637
    .local v9, top:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealHorizontalScrollRange()I

    move-result v8

    .line 5638
    .local v8, right:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v0

    add-int v7, v9, v0

    .line 5640
    .local v7, bottom:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5641
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5642
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    sub-int v0, v9, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    sub-int v0, v8, v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    sub-int v0, v7, v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 5644
    sget-object v0, Landroid/webkit/WebViewClassic;->mOverScrollBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 5645
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5647
    const/high16 v1, -0x4080

    const/4 v0, -0x1

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v7

    sget-object v5, Landroid/webkit/WebViewClassic;->mOverScrollBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5649
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v9, v8, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 5650
    return-void
.end method

.method private drawSelectionHandles(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 7966
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mWebSelectionOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_0

    .line 7968
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mLongPress:Z

    if-nez v0, :cond_1

    const/4 v9, 0x1

    .line 7969
    .local v9, bDisaplayController:Z
    :goto_0
    new-instance v10, Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 7971
    .local v10, regionRect:Landroid/graphics/Rect;
    invoke-direct {p0, v10}, Landroid/webkit/WebViewClassic;->WebkitSelectionAreaValidate(Landroid/graphics/Rect;)V

    .line 7972
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v10}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 7973
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v2, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mCharacterSelectRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->mIsPressingHandle:Z

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v7, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    iget v8, p0, Landroid/webkit/WebViewClassic;->mController:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V

    .line 7979
    .end local v9           #bDisaplayController:Z
    .end local v10           #regionRect:Landroid/graphics/Rect;
    :cond_0
    return-void

    .line 7968
    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private drawTextSelectionHandles(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 6080
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->getAlpha()I

    move-result v5

    if-nez v5, :cond_1

    .line 6122
    :cond_0
    :goto_0
    return-void

    .line 6084
    :cond_1
    iget-boolean v5, p0, Landroid/webkit/WebViewClassic;->mIsScreenTouch:Z

    if-eqz v5, :cond_0

    .line 6088
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V

    .line 6089
    iget-boolean v5, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v5, :cond_2

    .line 6090
    const/4 v5, 0x4

    new-array v2, v5, [I

    .line 6091
    .local v2, handles:[I
    invoke-direct {p0, v2}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 6092
    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v3

    .line 6093
    .local v3, start_x:I
    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v4

    .line 6094
    .local v4, start_y:I
    const/4 v5, 0x2

    aget v5, v2, v5

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v0

    .line 6095
    .local v0, end_x:I
    const/4 v5, 0x3

    aget v5, v2, v5

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v1

    .line 6097
    .local v1, end_y:I
    iget-boolean v5, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v5, :cond_3

    .line 6099
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 6100
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6116
    .end local v0           #end_x:I
    .end local v1           #end_y:I
    .end local v2           #handles:[I
    .end local v3           #start_x:I
    .end local v4           #start_y:I
    :cond_2
    :goto_1
    iget-boolean v5, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v5, :cond_4

    .line 6117
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 6105
    .restart local v0       #end_x:I
    .restart local v1       #end_y:I
    .restart local v2       #handles:[I
    .restart local v3       #start_x:I
    .restart local v4       #start_y:I
    :cond_3
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v3, v5

    .line 6106
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6109
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v0, v5

    .line 6110
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 6119
    .end local v0           #end_x:I
    .end local v1           #end_y:I
    .end local v2           #handles:[I
    .end local v3           #start_x:I
    .end local v4           #start_y:I
    :cond_4
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6120
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public static enablePlatformNotifications()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3172
    const-class v2, Landroid/webkit/WebViewClassic;

    monitor-enter v2

    .line 3173
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Landroid/webkit/WebViewClassic;->sNotificationsEnabled:Z

    .line 3174
    invoke-static {}, Landroid/webkit/JniUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3175
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 3176
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->setupProxyListener(Landroid/content/Context;)V

    .line 3177
    :cond_0
    monitor-exit v2

    .line 3178
    return-void

    .line 3177
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private enabledTouchPerformancePatch(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 8478
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->isBrowserApp()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/webkit/DebugFlags;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    if-eqz v0, :cond_1

    .line 8479
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/WebViewInputDispatcher;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    .line 8483
    :goto_0
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 8484
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabledTouchPerformancePatch  DebugFlags.ENABLE_TOUCH_PERFORMANCE_PATCH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/webkit/DebugFlags;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WebViewInputDispatcher.ENABLE_TOUCH_PERFORMANCE_PATCH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/webkit/WebViewInputDispatcher;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  getSettings().isBrowserApp() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->isBrowserApp()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8488
    :cond_0
    return-void

    .line 8481
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewInputDispatcher;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    goto :goto_0
.end method

.method private endScrollEdit()V
    .locals 2

    .prologue
    .line 9931
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    .line 9932
    return-void
.end method

.method private endSelectingText()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6037
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    .line 6038
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mShowTextSelectionExtra:Z

    .line 6039
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 6040
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 6041
    return-void
.end method

.method private ensureFunctorDetached()V
    .locals 3

    .prologue
    .line 3100
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3101
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v2}, Landroid/webkit/WebViewClassic;->nativeGetDrawGLFunction(I)I

    move-result v0

    .line 3102
    .local v0, drawGLFunction:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 3103
    .local v1, viewRoot:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 3104
    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->detachFunctor(I)V

    .line 3107
    .end local v0           #drawGLFunction:I
    .end local v1           #viewRoot:Landroid/view/ViewRootImpl;
    :cond_0
    return-void
.end method

.method private ensureSelectionHandles()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6044
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 6046
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_1

    .line 6047
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080a0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    .line 6050
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080a0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 6053
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080a0d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 6069
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    neg-int v1, v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenterOffset:Landroid/graphics/Point;

    .line 6071
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    neg-int v1, v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeftOffset:Landroid/graphics/Point;

    .line 6073
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    neg-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRightOffset:Landroid/graphics/Point;

    .line 6077
    :cond_0
    return-void

    .line 6057
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108078d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    .line 6060
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108078c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 6063
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108078f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 6066
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->setAlpha(I)V

    goto :goto_0
.end method

.method private extendScroll(I)Z
    .locals 4
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 3767
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    .line 3768
    .local v0, finalY:I
    add-int v3, v0, p1

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result v1

    .line 3769
    .local v1, newY:I
    if-ne v1, v0, :cond_0

    .line 3772
    :goto_0
    return v2

    .line 3770
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3, v1}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 3771
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-static {v2, p1}, Landroid/webkit/WebViewClassic;->computeDuration(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/OverScroller;->extendDuration(I)V

    .line 3772
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "addr"

    .prologue
    .line 4871
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/webkit/WebViewClassic;->findAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findAddress(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "addr"
    .parameter "caseInsensitive"

    .prologue
    .line 4896
    invoke-static {p0, p1}, Landroid/webkit/WebViewCore;->nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findAllBody(Ljava/lang/String;Z)I
    .locals 6
    .parameter "find"
    .parameter "isAsync"

    .prologue
    const/16 v4, 0xdd

    const/4 v1, 0x0

    .line 4770
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_1

    .line 4789
    :cond_0
    :goto_0
    return v1

    .line 4771
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    .line 4772
    if-eqz p1, :cond_0

    .line 4773
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 4774
    new-instance v2, Landroid/webkit/WebViewCore$FindAllRequest;

    invoke-direct {v2, p1}, Landroid/webkit/WebViewCore$FindAllRequest;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    .line 4775
    if-eqz p2, :cond_2

    .line 4776
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    invoke-virtual {v2, v4, v3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 4779
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    monitor-enter v2

    .line 4781
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0xdd

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 4782
    :goto_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    iget v3, v3, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchCount:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 4783
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4786
    :catch_0
    move-exception v0

    .line 4787
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    monitor-exit v2

    goto :goto_0

    .line 4790
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4789
    :cond_3
    :try_start_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    iget v1, v1, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchCount:I

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "webView"

    .prologue
    .line 2311
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewProvider()Landroid/webkit/WebViewProvider;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClassic;

    goto :goto_0
.end method

.method private getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;
    .locals 1

    .prologue
    .line 2708
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    if-nez v0, :cond_0

    .line 2709
    new-instance v0, Landroid/webkit/AccessibilityInjector;

    invoke-direct {v0, p0}, Landroid/webkit/AccessibilityInjector;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    .line 2711
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    return-object v0
.end method

.method private getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;
    .locals 2
    .parameter "contentX"
    .parameter "contentY"
    .parameter "extendSelection"
    .parameter "selectionMove"
    .parameter "zoomScale"

    .prologue
    .line 13014
    new-instance v0, Landroid/webkit/WebViewCore$CopyParams;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$CopyParams;-><init>()V

    .line 13015
    .local v0, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    if-eqz v0, :cond_0

    .line 13016
    iput p1, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    .line 13017
    iput p2, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    .line 13018
    iput-boolean p3, v0, Landroid/webkit/WebViewCore$CopyParams;->mSmartSelection:Z

    .line 13019
    iput-boolean p4, v0, Landroid/webkit/WebViewCore$CopyParams;->mSelectionMove:Z

    .line 13020
    iput p5, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    .line 13021
    iget v1, p0, Landroid/webkit/WebViewClassic;->mController:I

    iput v1, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    .line 13022
    const/4 v1, -0x1

    iput v1, v0, Landroid/webkit/WebViewCore$CopyParams;->mGranularity:I

    .line 13024
    :cond_0
    return-object v0
.end method

.method private getCopyParams(IIZZFI)Landroid/webkit/WebViewCore$CopyParams;
    .locals 1
    .parameter "contentX"
    .parameter "contentY"
    .parameter "extendSelection"
    .parameter "selectionMove"
    .parameter "zoomScale"
    .parameter "granularity"

    .prologue
    .line 13035
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebViewClassic;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v0

    .line 13037
    .local v0, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iput p6, v0, Landroid/webkit/WebViewCore$CopyParams;->mGranularity:I

    .line 13038
    return-object v0
.end method

.method private getMaxTextScrollX()I
    .locals 3

    .prologue
    .line 11093
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getMaxTextScrollY()I
    .locals 3

    .prologue
    .line 11097
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getMovementDirection(II)I
    .locals 4
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 13462
    const/4 v2, 0x0

    .line 13463
    .local v2, movementDirection:I
    iget v3, p0, Landroid/webkit/WebViewClassic;->mPreviousTouchX:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 13464
    .local v0, deltaX:I
    iget v3, p0, Landroid/webkit/WebViewClassic;->mPreviousTouchY:I

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 13470
    .local v1, deltaY:I
    iget v3, p0, Landroid/webkit/WebViewClassic;->mPreviousTouchX:I

    if-ge p1, v3, :cond_2

    if-lt v0, v1, :cond_2

    .line 13471
    const/4 v2, 0x1

    .line 13478
    :cond_0
    :goto_0
    iget v3, p0, Landroid/webkit/WebViewClassic;->mPreviousTouchY:I

    if-ge p2, v3, :cond_3

    if-le v1, v0, :cond_3

    .line 13479
    const/4 v2, 0x2

    .line 13485
    :cond_1
    :goto_1
    return v2

    .line 13473
    :cond_2
    iget v3, p0, Landroid/webkit/WebViewClassic;->mPreviousTouchX:I

    if-le p1, v3, :cond_0

    if-lt v0, v1, :cond_0

    .line 13474
    const/4 v2, 0x3

    goto :goto_0

    .line 13481
    :cond_3
    iget v3, p0, Landroid/webkit/WebViewClassic;->mPreviousTouchY:I

    if-le p2, v3, :cond_1

    if-le v1, v0, :cond_1

    .line 13482
    const/4 v2, 0x4

    goto :goto_1
.end method

.method private getOverlappingActionModeHeight()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 2924
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    if-nez v1, :cond_0

    .line 2945
    :goto_0
    return v0

    .line 2929
    :cond_0
    iget v1, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    if-lez v1, :cond_2

    .line 2930
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHackRotate:Z

    if-ne v1, v4, :cond_1

    .line 2931
    const/4 v1, -0x1

    iput v1, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    .line 2932
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHackRotate:Z

    .line 2934
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 2935
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v1}, Landroid/webkit/FindActionModeCallback;->getActionModeGlobalRight()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_2

    .line 2936
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHackRotate:Z

    .line 2940
    :cond_2
    iget v1, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    if-gez v1, :cond_3

    .line 2941
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 2942
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v1}, Landroid/webkit/FindActionModeCallback;->getActionModeGlobalBottom()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    .line 2945
    :cond_3
    iget v0, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    goto :goto_0
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5474
    const-class v1, Landroid/webkit/WebViewClassic;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/webkit/PluginList;

    invoke-direct {v0}, Landroid/webkit/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getScaledMaxXScroll()I
    .locals 3

    .prologue
    .line 12659
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 12660
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    .line 12667
    .local v1, width:I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v2

    return v2

    .line 12662
    .end local v1           #width:I
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12663
    .local v0, visRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 12664
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #width:I
    goto :goto_0
.end method

.method private getScaledMaxYScroll()I
    .locals 4

    .prologue
    .line 12672
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 12673
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    .line 12682
    .local v0, height:I
    :goto_0
    int-to-float v2, v0

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    .line 12675
    .end local v0           #height:I
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 12676
    .local v1, visRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 12677
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .restart local v0       #height:I
    goto :goto_0
.end method

.method private getSelectionHandles([I)V
    .locals 2
    .parameter "handles"

    .prologue
    .line 6129
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    aput v1, p1, v0

    .line 6130
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    aput v1, p1, v0

    .line 6131
    const/4 v0, 0x2

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    aput v1, p1, v0

    .line 6132
    const/4 v0, 0x3

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    aput v1, p1, v0

    .line 6133
    return-void
.end method

.method private static getTextScrollDelta(FJ)I
    .locals 7
    .parameter "speed"
    .parameter "deltaT"

    .prologue
    .line 9935
    long-to-float v3, p1

    mul-float v0, p0, v3

    .line 9936
    .local v0, distance:F
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 9937
    .local v1, intDistance:I
    int-to-float v3, v1

    sub-float v2, v0, v3

    .line 9938
    .local v2, probability:F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    float-to-double v5, v2

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 9939
    add-int/lit8 v1, v1, 0x1

    .line 9941
    :cond_0
    return v1
.end method

.method private static getTextScrollSpeed(III)F
    .locals 2
    .parameter "coordinate"
    .parameter "min"
    .parameter "max"

    .prologue
    const v1, 0x3c23d70a

    .line 9913
    if-ge p0, p1, :cond_0

    .line 9914
    sub-int v0, p0, p1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 9918
    :goto_0
    return v0

    .line 9915
    :cond_0
    if-lt p0, p2, :cond_1

    .line 9916
    sub-int v0, p0, p2

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    goto :goto_0

    .line 9918
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextScrollX()I
    .locals 1

    .prologue
    .line 11085
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    return v0
.end method

.method private getTextScrollY()I
    .locals 1

    .prologue
    .line 11089
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    return v0
.end method

.method private getVisibleTitleHeightImpl()I
    .locals 3

    .prologue
    .line 2915
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getOverlappingActionModeHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private goBackOrForward(IZ)V
    .locals 3
    .parameter "steps"
    .parameter "ignoreSnapshot"

    .prologue
    .line 3746
    if-eqz p1, :cond_0

    .line 3747
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 3748
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x6a

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3751
    :cond_0
    return-void

    .line 3748
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goBackOrForwardImpl(I)V
    .locals 1
    .parameter "steps"

    .prologue
    .line 3742
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewClassic;->goBackOrForward(IZ)V

    .line 3743
    return-void
.end method

.method private static handleCertTrustChanged()V
    .locals 2

    .prologue
    .line 2363
    const/16 v0, 0xdc

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    .line 2364
    return-void
.end method

.method private static handleProxyBroadcast(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3
    .parameter "intent"
    .parameter "context"

    .prologue
    const/16 v2, 0xc1

    .line 2427
    sget-boolean v1, Landroid/webkit/WebViewClassic;->bNeedToCheckCustomProxy:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/webkit/WebViewClassic;->setLocalProxy(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2468
    :goto_0
    return-void

    .line 2431
    :cond_0
    const-string/jumbo v1, "proxy"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyProperties;

    .line 2463
    .local v0, proxyProperties:Landroid/net/ProxyProperties;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2464
    :cond_1
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 2467
    :cond_2
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleTextSelectionAutoScroll(II)Z
    .locals 12
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    .line 13400
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 13401
    .local v7, visibleContentRect:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 13402
    .local v8, visibleContentRectFloat:Landroid/graphics/RectF;
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    iget v10, p0, Landroid/webkit/WebViewClassic;->mController:I

    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    invoke-virtual {v9, p1, p2, v10, v11}, Landroid/webkit/WebTextSelectionControls;->getHandleExtendPoint(IIILandroid/webkit/WebViewCore$SelectionCopiedData;)Landroid/graphics/Point;

    move-result-object v0

    .line 13403
    .local v0, extendedPoint:Landroid/graphics/Point;
    invoke-direct {p0, v8}, Landroid/webkit/WebViewClassic;->calcOurContentVisibleRectF(Landroid/graphics/RectF;)V

    .line 13404
    invoke-virtual {v8, v7}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 13405
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-virtual {v9}, Landroid/webkit/WebTextSelectionControls;->getHandleHeight()I

    move-result v1

    .line 13406
    .local v1, handleHeight:I
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-virtual {v9}, Landroid/webkit/WebTextSelectionControls;->getHandleWidth()I

    move-result v2

    .line 13407
    .local v2, handleWidth:I
    const/4 v4, 0x0

    .line 13408
    .local v4, sX:I
    const/4 v5, 0x0

    .line 13409
    .local v5, sY:I
    const/4 v6, 0x0

    .line 13415
    .local v6, scrollUpdated:Z
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->getMovementDirection(II)I

    move-result v3

    .line 13421
    .local v3, movementDirection:I
    packed-switch v3, :pswitch_data_0

    .line 13447
    const/4 v6, 0x0

    .line 13451
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 13455
    const/4 v9, 0x1

    const/16 v10, 0x190

    invoke-direct {p0, v4, v5, v9, v10}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    .line 13458
    :cond_1
    const/4 v9, 0x1

    return v9

    .line 13423
    :pswitch_0
    iget v9, v7, Landroid/graphics/Rect;->left:I

    if-eqz v9, :cond_0

    iget v9, v0, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v2

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v9

    const/16 v10, 0x1e

    if-gt v9, v10, :cond_0

    .line 13424
    add-int/lit8 v4, v4, -0x28

    .line 13425
    const/4 v6, 0x1

    goto :goto_0

    .line 13429
    :pswitch_1
    iget v9, v7, Landroid/graphics/Rect;->top:I

    if-eqz v9, :cond_0

    iget v9, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v1

    iget v10, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v9

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v10

    add-int/lit8 v10, v10, 0x28

    if-gt v9, v10, :cond_0

    .line 13430
    add-int/lit8 v5, v5, -0x28

    .line 13431
    const/4 v6, 0x1

    goto :goto_0

    .line 13435
    :pswitch_2
    iget v9, v7, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Point;->x:I

    add-int/2addr v10, v2

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v9

    const/16 v10, 0x1e

    if-gt v9, v10, :cond_0

    .line 13436
    add-int/lit8 v4, v4, 0x28

    .line 13437
    const/4 v6, 0x1

    goto :goto_0

    .line 13441
    :pswitch_3
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v1

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v9

    const/16 v10, 0x28

    if-gt v9, v10, :cond_0

    .line 13442
    add-int/lit8 v5, v5, 0x28

    .line 13443
    const/4 v6, 0x1

    goto :goto_0

    .line 13421
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleTouchEventCommon(Landroid/view/MotionEvent;III)V
    .locals 44
    .parameter "event"
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 9107
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v22

    .line 9109
    .local v22, detector:Landroid/view/ScaleGestureDetector;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    .line 9111
    .local v24, eventTime:J
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v4, :cond_0

    .line 9112
    const-string/jumbo v4, "webview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleTouchEventCommon "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " at "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " mTouchMode="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "  mLastTouchY = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " numPointers="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "  mConfirmMove = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9120
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 9121
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, p4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 9123
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    sub-int v20, v4, p3

    .line 9124
    .local v20, deltaX:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    sub-int v21, v4, p4

    .line 9125
    .local v21, deltaY:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    add-int v4, v4, p3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v6

    .line 9126
    .local v6, contentX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    add-int v4, v4, p4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v7

    .line 9128
    .local v7, contentY:I
    packed-switch p2, :pswitch_data_0

    .line 9903
    :cond_1
    :goto_0
    return-void

    .line 9132
    :pswitch_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mPerformLongPress:Z

    .line 9136
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mButtonActionOnMouse:Z

    .line 9137
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mKeyboardEnterPress:Z

    .line 9141
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mPrevTouchEventX_temp:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mFirstTouchX:I

    .line 9142
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mPrevTouchEventY_temp:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mFirstTouchY:I

    .line 9146
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getOnewayScrollEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9147
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mIsFitToScreen:Z

    .line 9148
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mOnewayScrollTouchDownX:I

    .line 9149
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mOnewayScrollTouchDownY:I

    .line 9151
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->getMinZoomScale()F

    move-result v5

    sub-float v39, v4, v5

    .line 9154
    .local v39, scaleDiff:F
    move/from16 v0, v39

    float-to-double v4, v0

    const-wide v8, 0x3f947ae147ae147bL

    cmpg-double v4, v4, v8

    if-gez v4, :cond_2

    move/from16 v0, v39

    float-to-double v4, v0

    const-wide v8, -0x406b851eb851eb85L

    cmpl-double v4, v4, v8

    if-lez v4, :cond_2

    .line 9155
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mIsFitToScreen:Z

    .line 9159
    .end local v39           #scaleDiff:F
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mEditTextScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 9160
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mEditTextScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 9164
    :cond_3
    move/from16 v0, p3

    int-to-float v8, v0

    move/from16 v0, p4

    int-to-float v9, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Landroid/webkit/WebViewClassic;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9170
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    instance-of v4, v4, Landroid/webkit/HtmlComposerView;

    if-eqz v4, :cond_5

    .line 9172
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    check-cast v3, Landroid/webkit/HtmlComposerView;

    .line 9173
    .local v3, htmlcomposer:Landroid/webkit/HtmlComposerView;
    move/from16 v0, p3

    iput v0, v3, Landroid/webkit/HtmlComposerView;->x_lastPosition:I

    .line 9174
    move/from16 v0, p4

    iput v0, v3, Landroid/webkit/HtmlComposerView;->y_lastPosition:I

    .line 9176
    const/4 v10, 0x1

    move/from16 v0, p3

    int-to-float v8, v0

    move/from16 v0, p4

    int-to-float v9, v0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v3 .. v9}, Landroid/webkit/HtmlComposerView;->singleCursorHandlerTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v4

    if-ne v10, v4, :cond_4

    iget-boolean v4, v3, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 9178
    const-string/jumbo v4, "webview"

    const-string v5, " singleCursorHandlerTouchEvent return TRUE , SCH is touched "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9179
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    .line 9180
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    .line 9181
    iput v7, v3, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_handle_y:I

    .line 9182
    iget-object v4, v3, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    if-eqz v4, :cond_1

    .line 9184
    const-string/jumbo v4, "webview"

    const-string v5, " singleCursorHandlerTouchEvent -  SCH_TOUCH_DOWN"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9185
    iget-object v4, v3, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    iget-object v5, v3, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    goto/16 :goto_0

    .line 9191
    :cond_4
    const-string/jumbo v4, "webview"

    const-string v5, " singleCursorHandlerTouchEvent return FALSE "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9192
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    .line 9193
    iget-object v4, v3, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    if-eqz v4, :cond_5

    .line 9194
    const-string/jumbo v4, "webview"

    const-string v5, " singleCursorHandlerTouchEvent -  SCH_TOUCH_DOWN"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9195
    iget-object v4, v3, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    iget-object v5, v3, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    .line 9200
    .end local v3           #htmlcomposer:Landroid/webkit/HtmlComposerView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_e

    .line 9204
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 9205
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 9206
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    .line 9207
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/webkit/WebViewClassic;->nativeSetIsScrolling(Z)V

    .line 9270
    :cond_6
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 9272
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mButtonActionOnMouse:Z

    .line 9277
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_9

    .line 9279
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    const-wide/16 v8, 0x12c

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9281
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    const-wide/16 v8, 0x3e8

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9286
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_c

    .line 9287
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 9288
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 9290
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v28

    .line 9291
    .local v28, hitTest:Landroid/webkit/WebView$HitTestResult;
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    instance-of v4, v4, Landroid/webkit/HtmlComposerView;

    if-eqz v4, :cond_b

    if-eqz v28, :cond_a

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v4

    if-nez v4, :cond_b

    .line 9293
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->performLongClick()Z

    .line 9294
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->notifyDoubleTapped()V

    .line 9297
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v4, v5, v8}, Landroid/webkit/ZoomManager;->handleDoubleTap(FF)V

    .line 9298
    const/4 v4, 0x7

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 9303
    .end local v28           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    move/from16 v36, v0

    .line 9305
    .local v36, prevSnapScrollMode:I
    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, p4

    int-to-float v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v4, v5, v1, v2}, Landroid/webkit/WebViewClassic;->startTouch(FFJ)V

    .line 9307
    sget-boolean v4, Landroid/webkit/DebugFlags;->CHANNEL_SCROLL_ENABLE:Z

    if-eqz v4, :cond_d

    .line 9308
    if-eqz v36, :cond_d

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    if-ne v4, v5, :cond_d

    .line 9310
    or-int/lit8 v4, v36, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 9315
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v4, :cond_1

    .line 9316
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mTouchInEditText:Z

    goto/16 :goto_0

    .line 9208
    .end local v36           #prevSnapScrollMode:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 9209
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 9210
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->removeTouchHighlight()V

    .line 9212
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    .line 9213
    mul-int v4, v20, v20

    mul-int v5, v21, v21

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebViewClassic;->mDoubleTapSlopSquare:I

    mul-int/lit8 v5, v5, 0x10

    if-ge v4, v5, :cond_f

    .line 9214
    const/4 v4, 0x6

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    goto/16 :goto_1

    .line 9216
    :cond_f
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    goto/16 :goto_1

    .line 9219
    :cond_10
    mul-int v4, v20, v20

    mul-int v5, v21, v21

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebViewClassic;->mDoubleTapSlopSquare:I

    if-ge v4, v5, :cond_11

    .line 9220
    const/4 v4, 0x6

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    goto/16 :goto_1

    .line 9222
    :cond_11
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    goto/16 :goto_1

    .line 9227
    :cond_12
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 9228
    sget-boolean v4, Landroid/webkit/WebViewClassic;->mLogEvent:Z

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/webkit/WebViewClassic;->mLastTouchUpTime:J

    sub-long v4, v24, v4

    const-wide/16 v8, 0x3e8

    cmp-long v4, v4, v8

    if-gez v4, :cond_13

    .line 9229
    const v4, 0x111d6

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/webkit/WebViewClassic;->mLastTouchUpTime:J

    sub-long v9, v24, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 9232
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 9233
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v4, :cond_6

    .line 9234
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V

    .line 9235
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v4

    sub-int v4, p4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v5

    add-int v41, v4, v5

    .line 9236
    .local v41, shiftedY:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    add-int v40, p3, v4

    .line 9237
    .local v40, shiftedX:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 9239
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 9240
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewInputDispatcher;->setClickOnSelectHandleCenter(Z)V

    .line 9241
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    .line 9242
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectHandleCenterOffset:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    .line 9243
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    .line 9244
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x90

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 9245
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->hidePasteButton()V

    goto/16 :goto_1

    .line 9246
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 9249
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 9250
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectHandleLeftOffset:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    .line 9251
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    .line 9252
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    goto/16 :goto_1

    .line 9253
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 9256
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 9257
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectHandleRightOffset:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    .line 9258
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    .line 9259
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    goto/16 :goto_1

    .line 9260
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v4, :cond_6

    .line 9261
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_1

    .line 9336
    .end local v40           #shiftedX:I
    .end local v41           #shiftedY:I
    :pswitch_1
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mPrevTouchEventX_temp:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mPrevTouchEventX:I

    .line 9337
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mPrevTouchEventY_temp:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mPrevTouchEventY:I

    .line 9338
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mPrevTouchEventX_temp:I

    .line 9339
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mPrevTouchEventY_temp:I

    .line 9341
    move/from16 v0, p3

    int-to-float v13, v0

    move/from16 v0, p4

    int-to-float v14, v0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move v11, v6

    move v12, v7

    invoke-direct/range {v8 .. v14}, Landroid/webkit/WebViewClassic;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9345
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    if-nez v4, :cond_19

    mul-int v4, v20, v20

    mul-int v5, v21, v21

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebViewClassic;->mTouchSlopSquare:I

    if-lt v4, v5, :cond_19

    .line 9347
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 9348
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 9349
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    .line 9351
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_18

    .line 9352
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 9354
    :cond_18
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->removeTouchHighlight()V

    .line 9356
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    if-eqz v4, :cond_21

    .line 9358
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v4, :cond_1a

    .line 9359
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v42

    .line 9360
    .local v42, text:Landroid/text/Editable;
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v43

    .line 9361
    .local v43, textEditField:Ljava/lang/String;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 9368
    .end local v42           #text:Landroid/text/Editable;
    .end local v43           #textEditField:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v35

    .line 9369
    .local v35, parent:Landroid/view/ViewParent;
    if-eqz v35, :cond_1b

    .line 9370
    const/4 v4, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 9372
    :cond_1b
    if-nez v20, :cond_1c

    if-eqz v21, :cond_1

    .line 9373
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v4

    add-int v26, v6, v4

    .line 9375
    .local v26, handleX:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v4

    add-int v27, v7, v4

    .line 9377
    .local v27, handleY:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 9378
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    move/from16 v0, v26

    int-to-float v5, v0

    move/from16 v0, v27

    int-to-float v8, v0

    invoke-virtual {v4, v5, v8}, Landroid/webkit/QuadF;->containsPoint(FF)Z

    move-result v30

    .line 9380
    .local v30, inCursorText:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v31

    .line 9382
    .local v31, inEditBounds:Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v4, :cond_20

    if-nez v31, :cond_20

    .line 9383
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->beginScrollEdit()V

    .line 9387
    :goto_2
    if-nez v30, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v4, :cond_1e

    if-nez v31, :cond_1e

    .line 9388
    :cond_1d
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->snapDraggingCursor()V

    .line 9390
    :cond_1e
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->updateWebkitSelection()V

    .line 9391
    if-nez v30, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v4, :cond_1f

    if-eqz v31, :cond_1f

    .line 9393
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->snapDraggingCursor()V

    .line 9395
    :cond_1f
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    .line 9396
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    .line 9397
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 9385
    :cond_20
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->endScrollEdit()V

    goto :goto_2

    .line 9402
    .end local v26           #handleX:I
    .end local v27           #handleY:I
    .end local v30           #inCursorText:Z
    .end local v31           #inEditBounds:Z
    .end local v35           #parent:Landroid/view/ViewParent;
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    instance-of v4, v4, Landroid/webkit/HtmlComposerView;

    if-eqz v4, :cond_2d

    .line 9404
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    check-cast v3, Landroid/webkit/HtmlComposerView;

    .line 9409
    .restart local v3       #htmlcomposer:Landroid/webkit/HtmlComposerView;
    const/4 v4, 0x1

    iget-boolean v5, v3, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    if-ne v4, v5, :cond_22

    const/4 v4, 0x1

    iget-boolean v5, v3, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    if-ne v4, v5, :cond_22

    iget v4, v3, Landroid/webkit/HtmlComposerView;->x_lastPosition:I

    add-int/lit8 v4, v4, -0x5

    move/from16 v0, p3

    if-ge v4, v0, :cond_22

    iget v4, v3, Landroid/webkit/HtmlComposerView;->x_lastPosition:I

    add-int/lit8 v4, v4, 0x5

    move/from16 v0, p3

    if-ge v0, v4, :cond_22

    iget v4, v3, Landroid/webkit/HtmlComposerView;->y_lastPosition:I

    add-int/lit8 v4, v4, -0x5

    move/from16 v0, p4

    if-ge v4, v0, :cond_22

    iget v4, v3, Landroid/webkit/HtmlComposerView;->y_lastPosition:I

    add-int/lit8 v4, v4, 0x5

    move/from16 v0, p4

    if-lt v0, v4, :cond_1

    .line 9415
    :cond_22
    const/4 v4, 0x1

    iget-boolean v5, v3, Landroid/webkit/HtmlComposerView;->resizingHandlerInActionMove:Z

    if-eq v4, v5, :cond_1

    .line 9418
    const/4 v4, 0x1

    iget-boolean v5, v3, Landroid/webkit/HtmlComposerView;->isTouchedImage:Z

    if-ne v4, v5, :cond_23

    iget-boolean v4, v3, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    if-nez v4, :cond_23

    const/4 v4, 0x1

    iget-boolean v5, v3, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eq v4, v5, :cond_24

    :cond_23
    iget-boolean v4, v3, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c

    const/4 v10, 0x1

    move/from16 v0, p3

    int-to-float v8, v0

    move/from16 v0, p4

    int-to-float v9, v0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v3 .. v9}, Landroid/webkit/HtmlComposerView;->singleCursorHandlerTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v4

    if-eq v10, v4, :cond_24

    iget-boolean v4, v3, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c

    .line 9421
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 9425
    iget-boolean v4, v3, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-nez v4, :cond_2b

    iget-object v4, v3, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    if-eqz v4, :cond_2b

    .line 9427
    iget v4, v3, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_handle_y:I

    sub-int v34, v7, v4

    .line 9429
    .local v34, nNewCursorPosY_offset:I
    const/16 v4, 0x14

    move/from16 v0, v34

    if-ge v0, v4, :cond_25

    const/16 v4, -0x14

    move/from16 v0, v34

    if-le v0, v4, :cond_25

    .line 9430
    const/16 v34, 0x0

    .line 9433
    :cond_25
    iget-object v4, v3, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v3, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v33, v34, v4

    .line 9435
    .local v33, nNewCursorPosY:I
    iget-boolean v4, v3, Landroid/webkit/HtmlComposerView;->mIsInReverse:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_26

    move/from16 v0, v33

    if-ge v0, v7, :cond_26

    .line 9436
    iget v4, v3, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_handle_y:I

    iget-object v5, v3, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v8, v3, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v8

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int v33, v33, v4

    .line 9439
    :cond_26
    iget-boolean v4, v3, Landroid/webkit/HtmlComposerView;->mIsInReverse:Z

    if-nez v4, :cond_27

    move/from16 v0, v33

    if-le v0, v7, :cond_27

    .line 9440
    iget-object v4, v3, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v3, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, v3, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_handle_y:I

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    sub-int v33, v33, v4

    .line 9443
    :cond_27
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    move/from16 v0, v33

    if-lt v0, v4, :cond_28

    .line 9444
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    add-int/lit8 v33, v4, -0x14

    .line 9447
    :cond_28
    const-string/jumbo v4, "webview"

    const-string v5, " singleCursorHandlerTouchEvent -MOVE the cursor as per tocuh move  "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9448
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    .line 9449
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/webkit/HtmlComposerView;->isSCHCompletelyDrawn:Z

    .line 9455
    .end local v34           #nNewCursorPosY_offset:I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    const/16 v5, 0x21c

    move/from16 v0, v33

    invoke-virtual {v4, v5, v6, v0}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 9456
    const-string/jumbo v4, "webview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " singleCursorHandlerTouchEvent -MOVE the cursor as per tocuh move  contentHeight="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", curY="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9458
    const/4 v4, 0x1

    iget-boolean v5, v3, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-ne v4, v5, :cond_2a

    const/4 v4, 0x1

    iget-boolean v5, v3, Landroid/webkit/HtmlComposerView;->isTouchedImage:Z

    if-ne v4, v5, :cond_2a

    iget-boolean v4, v3, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    if-nez v4, :cond_2a

    iget-object v4, v3, Landroid/webkit/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v6, v4, :cond_29

    iget-object v4, v3, Landroid/webkit/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-gt v6, v4, :cond_29

    iget-object v4, v3, Landroid/webkit/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v7, v4, :cond_29

    iget-object v4, v3, Landroid/webkit/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_2a

    .line 9459
    :cond_29
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    .line 9460
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    .line 9463
    :cond_2a
    iget-object v4, v3, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Landroid/webkit/HtmlComposerView;->mMoveIsStarted:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 9465
    const-string/jumbo v4, "webview"

    const-string/jumbo v5, "singleCursorHandlerTouchEvent- SCH_TOUCH_MOVE"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9466
    iget-object v4, v3, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    iget-object v5, v3, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    .line 9467
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/webkit/HtmlComposerView;->mMoveIsStarted:Z

    goto/16 :goto_0

    .line 9451
    .end local v33           #nNewCursorPosY:I
    :cond_2b
    move/from16 v33, v7

    .restart local v33       #nNewCursorPosY:I
    goto/16 :goto_3

    .line 9474
    .end local v33           #nNewCursorPosY:I
    :cond_2c
    const-string/jumbo v4, "webview"

    const-string v5, " singleCursorHandlerTouchEvent return FALSE "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9475
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    .line 9476
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkit/HtmlComposerView;->mMoveIsStarted:Z

    .line 9481
    .end local v3           #htmlcomposer:Landroid/webkit/HtmlComposerView;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    if-eqz v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->GetIsActionPU()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 9482
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v4, :cond_1

    .line 9483
    const-string/jumbo v4, "webview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetIsActionPU = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8}, Landroid/webkit/ZoomManager;->GetIsActionPU()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9487
    :cond_2e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1

    .line 9492
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_33

    .line 9493
    const-string/jumbo v4, "webview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got null mVelocityTracker when  mTouchMode = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9500
    :goto_4
    const/16 v32, 0x0

    .line 9504
    .local v32, keepScrollBarsVisible:Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_31

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_31

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v5, 0xa

    if-eq v4, v5, :cond_31

    .line 9508
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    if-eqz v4, :cond_1

    .line 9518
    sget-boolean v4, Landroid/webkit/DebugFlags;->CHANNEL_SCROLL_ENABLE:Z

    if-eqz v4, :cond_30

    .line 9519
    if-eqz v22, :cond_2f

    invoke-virtual/range {v22 .. v22}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v4

    if-nez v4, :cond_30

    :cond_2f
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    if-nez v4, :cond_30

    .line 9525
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mFirstTouchX:I

    sub-int v4, p3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 9526
    .local v16, ax:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mFirstTouchY:I

    sub-int v4, p4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v17

    .line 9528
    .local v17, ay:I
    sget-boolean v4, Landroid/webkit/WebViewClassic;->ENABLE_SCROLL_PERFORMANCE_PATCH:Z

    if-eqz v4, :cond_35

    .line 9529
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mAx:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_34

    .line 9530
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 9560
    .end local v16           #ax:I
    .end local v17           #ay:I
    :cond_30
    :goto_5
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 9561
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    .line 9562
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    .line 9567
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mPrevTouchEventX:I

    sub-int v20, v4, p3

    .line 9568
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mPrevTouchEventY:I

    sub-int v21, v4, p4

    .line 9569
    const/16 v32, 0x1

    .line 9572
    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, p4

    int-to-float v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/webkit/WebViewClassic;->startScrollingLayer(FF)V

    .line 9573
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->startDrag()V

    .line 9575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/webkit/WebViewClassic;->mStartDragTime:J

    .line 9580
    :cond_31
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    if-eqz v4, :cond_32

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/webkit/WebViewClassic;->mStartDragTime:J

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x64

    cmp-long v4, v4, v8

    if-lez v4, :cond_32

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v4

    if-lez v4, :cond_32

    .line 9588
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 9596
    :cond_32
    if-nez v20, :cond_38

    if-nez v21, :cond_38

    .line 9597
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 9496
    .end local v32           #keepScrollBarsVisible:Z
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    .line 9531
    .restart local v16       #ax:I
    .restart local v17       #ay:I
    .restart local v32       #keepScrollBarsVisible:Z
    :cond_34
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mAy:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_30

    .line 9532
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    goto :goto_5

    .line 9535
    :cond_35
    const/16 v4, 0x10

    move/from16 v0, v16

    if-ge v0, v4, :cond_36

    const/16 v4, 0x10

    move/from16 v0, v17

    if-lt v0, v4, :cond_1

    .line 9537
    :cond_36
    const/16 v4, 0x10

    move/from16 v0, v16

    if-ge v0, v4, :cond_37

    .line 9538
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    goto/16 :goto_5

    .line 9539
    :cond_37
    const/16 v4, 0x10

    move/from16 v0, v17

    if-ge v0, v4, :cond_30

    .line 9540
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    goto/16 :goto_5

    .line 9600
    .end local v16           #ax:I
    .end local v17           #ay:I
    :cond_38
    sget-boolean v4, Landroid/webkit/DebugFlags;->CHANNEL_SCROLL_ENABLE:Z

    if-eqz v4, :cond_3a

    .line 9601
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_39

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3a

    .line 9602
    :cond_39
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mDistanceX:I

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mDistanceX:I

    .line 9603
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mDistanceY:I

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mDistanceY:I

    .line 9604
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_40

    .line 9605
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mDistanceY:I

    sget v5, Landroid/webkit/WebViewClassic;->CHANNEL_DISTANCE:I

    if-le v4, v5, :cond_3f

    .line 9606
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 9652
    :cond_3a
    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    if-eqz v4, :cond_3b

    .line 9653
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_42

    .line 9654
    const/16 v21, 0x0

    .line 9659
    :cond_3b
    :goto_7
    mul-int v4, v20, v20

    mul-int v5, v21, v21

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebViewClassic;->mTouchSlopSquare:I

    if-le v4, v5, :cond_43

    .line 9660
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 9667
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mIsFitToScreen:Z

    if-eqz v4, :cond_3e

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    if-eqz v4, :cond_3e

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getOnewayScrollEnabled()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 9670
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mOnewayMode:Z

    if-nez v4, :cond_3d

    .line 9671
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mOnewayScrollTouchDownX:I

    sub-int v23, v4, p3

    .line 9672
    .local v23, distance:I
    sget v4, Landroid/webkit/WebViewClassic;->ONEWAY_SCROLL_TRIGGER_BOUNDARY:I

    move/from16 v0, v23

    if-gt v0, v4, :cond_3c

    sget v4, Landroid/webkit/WebViewClassic;->ONEWAY_SCROLL_TRIGGER_BOUNDARY:I

    neg-int v4, v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_3d

    .line 9673
    :cond_3c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mOnewayMode:Z

    .line 9674
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mOnewayScrollTouchDownY:I

    sub-int v4, v4, p4

    if-lez v4, :cond_3d

    .line 9675
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mIsOnewayScrollDown:Z

    .line 9680
    .end local v23           #distance:I
    :cond_3d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mOnewayMode:Z

    if-eqz v4, :cond_3e

    .line 9681
    mul-int v4, v20, v20

    mul-int v5, v21, v21

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v21, v0

    .line 9682
    const/16 v20, 0x0

    .line 9683
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mIsOnewayScrollDown:Z

    if-eqz v4, :cond_3e

    .line 9684
    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    .line 9689
    :cond_3e
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    .line 9690
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebViewClassic;->doDrag(II)Z

    move-result v15

    .line 9691
    .local v15, allDrag:Z
    if-eqz v15, :cond_44

    .line 9692
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    .line 9693
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    goto/16 :goto_0

    .line 9607
    .end local v15           #allDrag:Z
    :cond_3f
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mDistanceX:I

    sget v5, Landroid/webkit/WebViewClassic;->CHANNEL_DISTANCE:I

    if-le v4, v5, :cond_3a

    .line 9608
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mDistanceY:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mDistanceX:I

    goto/16 :goto_6

    .line 9611
    :cond_40
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mDistanceX:I

    sget v5, Landroid/webkit/WebViewClassic;->CHANNEL_DISTANCE:I

    if-le v4, v5, :cond_41

    .line 9612
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    goto/16 :goto_6

    .line 9613
    :cond_41
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mDistanceY:I

    sget v5, Landroid/webkit/WebViewClassic;->CHANNEL_DISTANCE:I

    if-le v4, v5, :cond_3a

    .line 9614
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mDistanceY:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mDistanceX:I

    goto/16 :goto_6

    .line 9656
    :cond_42
    const/16 v20, 0x0

    goto/16 :goto_7

    .line 9662
    :cond_43
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 9663
    const/16 v32, 0x1

    goto/16 :goto_8

    .line 9695
    .restart local v15       #allDrag:Z
    :cond_44
    move/from16 v0, v20

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v18, v0

    .line 9696
    .local v18, contentDeltaX:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v37

    .line 9697
    .local v37, roundedDeltaX:I
    move/from16 v0, v21

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v19, v0

    .line 9698
    .local v19, contentDeltaY:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v38

    .line 9699
    .local v38, roundedDeltaY:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    sub-int v4, v4, v37

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    .line 9700
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    sub-int v4, v4, v38

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    goto/16 :goto_0

    .line 9708
    .end local v15           #allDrag:Z
    .end local v18           #contentDeltaX:I
    .end local v19           #contentDeltaY:I
    .end local v32           #keepScrollBarsVisible:Z
    .end local v37           #roundedDeltaX:I
    .end local v38           #roundedDeltaY:I
    :pswitch_2
    move/from16 v0, p3

    int-to-float v13, v0

    move/from16 v0, p4

    int-to-float v14, v0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move v11, v6

    move v12, v7

    invoke-direct/range {v8 .. v14}, Landroid/webkit/WebViewClassic;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9710
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebViewClassic;->mRequestNewSelection:I

    if-ne v4, v5, :cond_45

    .line 9712
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mLongPress:Z

    .line 9717
    :cond_45
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v4, :cond_47

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v4, :cond_47

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    if-eqz v4, :cond_47

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v4, :cond_47

    .line 9718
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v4, v5, :cond_46

    .line 9719
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 9720
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x25d

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 9722
    :cond_46
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->updateWebkitSelection()V

    .line 9727
    :cond_47
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mButtonActionOnMouse:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4a

    .line 9729
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v28

    .line 9731
    .restart local v28       #hitTest:Landroid/webkit/WebView$HitTestResult;
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v4

    if-eqz v4, :cond_49

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mAutoSelection:Z

    if-eqz v4, :cond_49

    if-eqz v28, :cond_48

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_49

    .line 9734
    :cond_48
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->selectLastTouchText()Z

    .line 9735
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->resetTextSelectionTouchHandleFlag()V

    goto/16 :goto_0

    .line 9737
    :cond_49
    if-eqz v28, :cond_1

    .line 9738
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->performLongClick()Z

    goto/16 :goto_0

    .line 9748
    .end local v28           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :cond_4a
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mFirstTouchX:I

    .line 9749
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mFirstTouchY:I

    .line 9750
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mDistanceX:I

    .line 9751
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mDistanceY:I

    .line 9755
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mIsFitToScreen:Z

    .line 9756
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mOnewayMode:Z

    .line 9757
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/WebViewClassic;->mIsOnewayScrollDown:Z

    .line 9758
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mOnewayScrollTouchDownX:I

    .line 9759
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mOnewayScrollTouchDownY:I

    .line 9762
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->endScrollEdit()V

    .line 9764
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    instance-of v4, v4, Landroid/webkit/HtmlComposerView;

    if-eqz v4, :cond_4d

    .line 9766
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v29

    check-cast v29, Landroid/webkit/HtmlComposerView;

    .line 9767
    .local v29, htmlComposerView:Landroid/webkit/HtmlComposerView;
    const-string/jumbo v4, "webview"

    const-string v5, " singleCursorHandlerTouchEvent -  ACTION_UP event - Set the Cursor "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9769
    const/4 v4, 0x1

    move-object/from16 v0, v29

    iput-boolean v4, v0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    .line 9770
    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    if-eqz v4, :cond_4b

    move-object/from16 v0, v29

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4b

    .line 9772
    const-string/jumbo v4, "webview"

    const-string v5, " singleCursorHandlerTouchEvent -  SCH_TOUCH_UP"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9773
    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    move-object/from16 v0, v29

    iget-object v5, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    .line 9774
    const/4 v4, 0x0

    move-object/from16 v0, v29

    iput-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mMoveIsStarted:Z

    .line 9777
    :cond_4b
    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v4}, Ljava/util/TimerTask;->cancel()Z

    .line 9778
    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->purge()I

    .line 9779
    const/4 v4, 0x0

    move-object/from16 v0, v29

    iput-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 9780
    new-instance v4, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;-><init>(Landroid/webkit/HtmlComposerView;)V

    move-object/from16 v0, v29

    iput-object v4, v0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    .line 9781
    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    move-object/from16 v0, v29

    iget-object v5, v0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v4, v5, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 9782
    const/16 v4, 0x66

    move-object/from16 v0, v29

    iput v4, v0, Landroid/webkit/HtmlComposerView;->iAlpha:I

    .line 9784
    move-object/from16 v0, v29

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4c

    .line 9785
    const/4 v4, 0x1

    move-object/from16 v0, v29

    iput-boolean v4, v0, Landroid/webkit/HtmlComposerView;->isSCHCompletelyDrawn:Z

    .line 9789
    :cond_4c
    const/4 v4, 0x0

    move-object/from16 v0, v29

    iput-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    .line 9791
    move-object/from16 v0, v29

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    if-eqz v4, :cond_4e

    .line 9794
    const-string/jumbo v4, "webview"

    const-string v5, " singleCursorHandlerTouchEvent -SCH is tocuhed so It will not operate the Touch event on Editor "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9800
    .end local v29           #htmlComposerView:Landroid/webkit/HtmlComposerView;
    :cond_4d
    const-string/jumbo v4, "webview"

    const-string v5, " singleCursorHandlerTouchEvent -getEditableSupport  FASLE "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9803
    :cond_4e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    if-nez v4, :cond_4f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v4, :cond_4f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    if-eqz v4, :cond_4f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v4, :cond_4f

    .line 9805
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->showPasteWindow()V

    .line 9806
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->stopTouch()V

    goto/16 :goto_0

    .line 9809
    :cond_4f
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebViewClassic;->mLastTouchUpTime:J

    .line 9810
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mSentAutoScrollMessage:Z

    if-eqz v4, :cond_50

    .line 9811
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mAutoScrollY:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mAutoScrollX:I

    .line 9813
    :cond_50
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    packed-switch v4, :pswitch_data_1

    .line 9887
    :cond_51
    :goto_9
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->stopTouch()V

    goto/16 :goto_0

    .line 9817
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 9818
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 9819
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    if-nez v4, :cond_55

    .line 9821
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v4, :cond_52

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v4

    if-nez v4, :cond_52

    .line 9824
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    if-nez v4, :cond_51

    .line 9825
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_9

    .line 9831
    :cond_52
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_54

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->canZoomIn()Z

    move-result v4

    if-nez v4, :cond_53

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->canZoomOut()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 9833
    :cond_53
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9

    .line 9840
    :cond_54
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mPerformLongPress:Z

    if-nez v4, :cond_51

    .line 9841
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->playTouchSound()V

    goto :goto_9

    .line 9850
    :cond_55
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 9853
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    sub-long v4, v24, v4

    const-wide/16 v8, 0xfa

    cmp-long v4, v4, v8

    if-gtz v4, :cond_57

    .line 9854
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_56

    .line 9855
    const-string/jumbo v4, "webview"

    const-string v5, "Got null mVelocityTracker"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9862
    :goto_a
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 9863
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->doFling()V

    goto/16 :goto_9

    .line 9857
    :cond_56
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_a

    .line 9866
    :cond_57
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v14

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 9869
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 9873
    :cond_58
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mHeldMotionless:I

    .line 9874
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 9880
    :pswitch_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    .line 9881
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 9882
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v4, :cond_51

    .line 9883
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v4}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_9

    .line 9891
    :pswitch_7
    move/from16 v0, p3

    int-to-float v13, v0

    move/from16 v0, p4

    int-to-float v14, v0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move v11, v6

    move v12, v7

    invoke-direct/range {v8 .. v14}, Landroid/webkit/WebViewClassic;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9894
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_59

    .line 9895
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v14

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 9897
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 9899
    :cond_59
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->cancelTouch()V

    goto/16 :goto_0

    .line 9128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 9813
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private hidePasteButton()V
    .locals 1

    .prologue
    .line 7266
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPasteWindow:Landroid/webkit/WebViewClassic$PastePopupWindow;

    if-eqz v0, :cond_0

    .line 7267
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPasteWindow:Landroid/webkit/WebViewClassic$PastePopupWindow;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic$PastePopupWindow;->hide()V

    .line 7269
    :cond_0
    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6238
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 6239
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6240
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 6241
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsSoftkeyboardVisible:Z

    .line 6243
    :cond_0
    return-void
.end method

.method private inFullScreenMode()Z
    .locals 1

    .prologue
    .line 8570
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2571
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/webkit/WebViewClassic$OnTrimMemoryListener;->init(Landroid/content/Context;)V

    .line 2572
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 2573
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v7}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 2574
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v7}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 2576
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 2577
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    .line 2580
    .local v4, slop:I
    mul-int v5, v4, v4

    iput v5, p0, Landroid/webkit/WebViewClassic;->mTouchSlopSquare:I

    .line 2582
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2583
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2584
    .local v0, config:Landroid/content/res/Configuration;
    iget v5, p0, Landroid/webkit/WebViewClassic;->mTouchSlopSquare:I

    iput v5, p0, Landroid/webkit/WebViewClassic;->mTouchSlopSquareForFinger:I

    .line 2585
    add-int/lit8 v4, v4, 0x4

    .line 2586
    mul-int v5, v4, v4

    iput v5, p0, Landroid/webkit/WebViewClassic;->mTouchSlopSquareForSPen:I

    .line 2587
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2588
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v5

    div-int/lit8 v4, v5, 0x4

    .line 2594
    :goto_0
    mul-int v5, v4, v4

    iput v5, p0, Landroid/webkit/WebViewClassic;->mDoubleTapSlopSquare:I

    .line 2595
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 2600
    .local v2, density:F
    const/high16 v5, 0x4080

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    .line 2602
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5, v2}, Landroid/webkit/ZoomManager;->init(F)V

    .line 2603
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Landroid/webkit/WebViewClassic;->mMaximumFling:I

    .line 2606
    const/high16 v5, 0x3f80

    mul-float v6, v2, v2

    div-float/2addr v5, v6

    iput v5, p0, Landroid/webkit/WebViewClassic;->DRAG_LAYER_INVERSE_DENSITY_SQUARED:F

    .line 2608
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v5

    iput v5, p0, Landroid/webkit/WebViewClassic;->mOverscrollDistance:I

    .line 2609
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v5

    iput v5, p0, Landroid/webkit/WebViewClassic;->mOverflingDistance:I

    .line 2611
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v5}, Landroid/webkit/WebView$PrivateAccess;->super_getScrollBarStyle()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->setScrollBarStyle(I)V

    .line 2614
    new-instance v5, Ljava/util/Vector;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/Vector;-><init>(I)V

    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    .line 2615
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 2616
    new-instance v5, Landroid/webkit/WebClipboard;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/webkit/WebClipboard;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/webkit/WebViewClassic;->mWebClipboard:Landroid/webkit/WebClipboard;

    .line 2617
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebClipboard:Landroid/webkit/WebClipboard;

    invoke-virtual {v5}, Landroid/webkit/WebClipboard;->initWebClipboard()V

    .line 2618
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->setAppType()V

    .line 2619
    return-void

    .line 2590
    .end local v2           #density:F
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    goto :goto_0
.end method

.method private invalidateContentRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 4173
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->viewInvalidate(IIII)V

    .line 4174
    return-void
.end method

.method private isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 2704
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private isEnterActionKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 6759
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHoverScrollOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8621
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_hovering"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_hovering_list_scroll"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 8623
    .local v0, isHoveringOn:Z
    :goto_0
    return v0

    .end local v0           #isHoveringOn:Z
    :cond_0
    move v0, v1

    .line 8621
    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 3

    .prologue
    .line 2715
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTextSelectionControlerForward(II)Z
    .locals 8
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 13159
    const/4 v0, 0x0

    .line 13161
    .local v0, moveForward:Z
    iget v4, p0, Landroid/webkit/WebViewClassic;->mController:I

    if-ne v4, v7, :cond_3

    .line 13162
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 13163
    .local v2, startX:I
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 13166
    .local v3, startY:I
    if-le p2, v3, :cond_2

    .line 13167
    const/4 v0, 0x1

    .line 13209
    .end local v2           #startX:I
    .end local v3           #startY:I
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 13210
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-virtual {v4}, Landroid/webkit/WebTextSelectionControls;->toggleHandleCrossing()V

    .line 13211
    iget v4, p0, Landroid/webkit/WebViewClassic;->mController:I

    if-ne v4, v6, :cond_9

    .line 13212
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    iput v7, v4, Landroid/webkit/WebMagnifier;->mMode:I

    iput v7, p0, Landroid/webkit/WebViewClassic;->mController:I

    .line 13217
    :cond_1
    :goto_1
    return v0

    .line 13168
    .restart local v2       #startX:I
    .restart local v3       #startY:I
    :cond_2
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt p2, v4, :cond_0

    add-int/lit8 v4, v2, 0x5

    if-le p1, v4, :cond_0

    .line 13170
    const/4 v0, 0x1

    goto :goto_0

    .line 13172
    .end local v2           #startX:I
    .end local v3           #startY:I
    :cond_3
    iget v4, p0, Landroid/webkit/WebViewClassic;->mController:I

    if-ne v4, v6, :cond_5

    .line 13173
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 13174
    .restart local v2       #startX:I
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 13178
    .restart local v3       #startY:I
    if-ge p2, v3, :cond_4

    .line 13179
    const/4 v0, 0x1

    goto :goto_0

    .line 13180
    :cond_4
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v4, :cond_0

    add-int/lit8 v4, v2, -0x5

    if-ge p1, v4, :cond_0

    .line 13182
    const/4 v0, 0x1

    goto :goto_0

    .line 13184
    .end local v2           #startX:I
    .end local v3           #startY:I
    :cond_5
    iget v4, p0, Landroid/webkit/WebViewClassic;->mController:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    .line 13185
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 13186
    .local v1, selectRect:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 13187
    .restart local v3       #startY:I
    add-int/lit8 v4, v3, -0x2

    if-ge p2, v4, :cond_0

    .line 13188
    const/4 v0, 0x1

    goto :goto_0

    .line 13190
    .end local v1           #selectRect:Landroid/graphics/Rect;
    .end local v3           #startY:I
    :cond_6
    iget v4, p0, Landroid/webkit/WebViewClassic;->mController:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    .line 13191
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 13192
    .restart local v1       #selectRect:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 13193
    .restart local v3       #startY:I
    add-int/lit8 v4, v3, 0x2

    if-le p2, v4, :cond_0

    .line 13194
    const/4 v0, 0x1

    goto :goto_0

    .line 13196
    .end local v1           #selectRect:Landroid/graphics/Rect;
    .end local v3           #startY:I
    :cond_7
    iget v4, p0, Landroid/webkit/WebViewClassic;->mController:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 13197
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 13198
    .restart local v1       #selectRect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 13199
    .restart local v2       #startX:I
    add-int/lit8 v4, v2, -0x2

    if-ge p1, v4, :cond_0

    .line 13200
    const/4 v0, 0x1

    goto :goto_0

    .line 13202
    .end local v1           #selectRect:Landroid/graphics/Rect;
    .end local v2           #startX:I
    :cond_8
    iget v4, p0, Landroid/webkit/WebViewClassic;->mController:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 13203
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 13204
    .restart local v1       #selectRect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 13205
    .restart local v2       #startX:I
    add-int/lit8 v4, v2, 0x2

    if-le p1, v4, :cond_0

    .line 13206
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 13213
    .end local v1           #selectRect:Landroid/graphics/Rect;
    .end local v2           #startX:I
    :cond_9
    iget v4, p0, Landroid/webkit/WebViewClassic;->mController:I

    if-ne v4, v7, :cond_1

    .line 13214
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    iput v6, v4, Landroid/webkit/WebMagnifier;->mMode:I

    iput v6, p0, Landroid/webkit/WebViewClassic;->mController:I

    goto/16 :goto_1
.end method

.method private keyCodeToSoundsEffect(I)I
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 10365
    packed-switch p1, :pswitch_data_0

    .line 10375
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 10367
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 10369
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 10371
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 10373
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 10365
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private letPageHandleNavKey(IJZI)V
    .locals 12
    .parameter "keyCode"
    .parameter "time"
    .parameter "down"
    .parameter "metaState"

    .prologue
    .line 12698
    if-eqz p4, :cond_0

    .line 12699
    const/4 v5, 0x0

    .line 12704
    .local v5, keyEventAction:I
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    and-int/lit8 v1, p5, 0x1

    and-int/lit8 v2, p5, 0x2

    or-int/2addr v1, v2

    and-int/lit8 v2, p5, 0x4

    or-int v8, v1, v2

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v1, p2

    move-wide v3, p2

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 12709
    .local v0, event:Landroid/view/KeyEvent;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->sendKeyEvent(Landroid/view/KeyEvent;)V

    .line 12710
    return-void

    .line 12701
    .end local v0           #event:Landroid/view/KeyEvent;
    .end local v5           #keyEventAction:I
    :cond_0
    const/4 v5, 0x1

    .restart local v5       #keyEventAction:I
    goto :goto_0
.end method

.method private loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 3578
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3579
    .local v0, dataUrl:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3580
    const-string v1, "base64"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3581
    const-string v1, ";base64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3583
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3584
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->loadUrlImpl(Ljava/lang/String;)V

    .line 3586
    return-void
.end method

.method private loadUrlImpl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 3540
    if-nez p1, :cond_0

    .line 3544
    :goto_0
    return-void

    .line 3543
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewClassic;->loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3516
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 3518
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mUrl:Ljava/lang/String;

    .line 3519
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3529
    :goto_0
    return-void

    .line 3523
    :cond_0
    const-string v1, "WebView"

    const-string v2, "loadUrlImpl: called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    new-instance v0, Landroid/webkit/WebViewCore$GetUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$GetUrlData;-><init>()V

    .line 3525
    .local v0, arg:Landroid/webkit/WebViewCore$GetUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    .line 3526
    iput-object p2, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    .line 3527
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3528
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    goto :goto_0
.end method

.method private native nativeCopyBaseContentToPicture(Landroid/graphics/Picture;)V
.end method

.method private native nativeCreate(ILjava/lang/String;Z)V
.end method

.method private native nativeCreateDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)I
.end method

.method private native nativeDebugDump()V
.end method

.method private static native nativeDestroy(I)V
.end method

.method private native nativeDiscardAllTextures()V
.end method

.method private native nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V
.end method

.method private native nativeDumpDisplayTree(Ljava/lang/String;)V
.end method

.method private native nativeEvaluateLayersAnimations(I)Z
.end method

.method private static native nativeFindMaxVisibleRect(IILandroid/graphics/Rect;)V
.end method

.method private native nativeGetBackgroundColor(I)I
.end method

.method private native nativeGetBaseLayer(I)I
.end method

.method private native nativeGetClosestWordPosition(II)Landroid/graphics/Point;
.end method

.method private native nativeGetDrawGLFunction(I)I
.end method

.method private static native nativeGetHandleLayerId(IILandroid/graphics/Point;Landroid/webkit/QuadF;)I
.end method

.method private native nativeGetSelection()Ljava/lang/String;
.end method

.method private native nativeHasContent()Z
.end method

.method private static native nativeMapLayerRect(IILandroid/graphics/Rect;)V
.end method

.method private static native nativeOnTrimMemory(I)V
.end method

.method private native nativeScrollLayer(IIII)Z
.end method

.method private native nativeScrollRectOnScreen(ILandroid/graphics/Rect;)V
.end method

.method private native nativeScrollableLayer(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)I
.end method

.method private native nativeSelectableText()Landroid/graphics/Point;
.end method

.method private native nativeSetBaseLayer(IIZZI)Z
.end method

.method private native nativeSetHeightCanMeasure(Z)V
.end method

.method private static native nativeSetHwAccelerated(IZ)I
.end method

.method private native nativeSetIsScrolling(Z)V
.end method

.method private static native nativeSetPauseDrawing(IZ)V
.end method

.method private static native nativeSetTextSelection(II)V
.end method

.method private native nativeStopGL(I)V
.end method

.method private native nativeTileProfilingClear()V
.end method

.method private native nativeTileProfilingGetFloat(IILjava/lang/String;)F
.end method

.method private native nativeTileProfilingGetInt(IILjava/lang/String;)I
.end method

.method private native nativeTileProfilingNumFrames()I
.end method

.method private native nativeTileProfilingNumTilesInFrame(I)I
.end method

.method private native nativeTileProfilingStart()V
.end method

.method private native nativeTileProfilingStop()F
.end method

.method private native nativeUpdateDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)V
.end method

.method private native nativeUseHardwareAccelSkia(Z)V
.end method

.method private notifyDoubleTapped()V
    .locals 1

    .prologue
    .line 10945
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_0

    .line 10946
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->onRecieveWebViewDoubleTapped()V

    .line 10948
    :cond_0
    return-void
.end method

.method private notifySelectionChanged()V
    .locals 1

    .prologue
    .line 10933
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_0

    .line 10934
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->onRecieveWebViewSelectionChanged()V

    .line 10936
    :cond_0
    return-void
.end method

.method private notifySingleTapReleased()V
    .locals 1

    .prologue
    .line 10939
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_0

    .line 10940
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->onRecieveWebviewShortTouchUp()V

    .line 10942
    :cond_0
    return-void
.end method

.method private onHandleUiEvent(Landroid/view/MotionEvent;II)V
    .locals 2
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    .line 2182
    packed-switch p2, :pswitch_data_0

    .line 2214
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2185
    :pswitch_1
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mButtonActionOnMouse:Z

    if-nez v1, :cond_0

    .line 2189
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 2190
    .local v0, hitTest:Landroid/webkit/WebView$HitTestResult;
    if-eqz v0, :cond_0

    .line 2191
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->performLongClick()Z

    goto :goto_0

    .line 2199
    .end local v0           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->onHandleUiTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 2203
    :pswitch_3
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mButtonActionOnMouse:Z

    if-nez v1, :cond_0

    .line 2207
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mIntentUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2210
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mIntentUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->overrideLoading(Ljava/lang/String;)V

    goto :goto_0

    .line 2182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private onHandleUiTouchEvent(Landroid/view/MotionEvent;)V
    .locals 19
    .parameter "ev"

    .prologue
    .line 2218
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v8

    .line 2220
    .local v8, detector:Landroid/view/ScaleGestureDetector;
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mIsScreenTouch:Z

    .line 2221
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/ZoomManager;->getTiltListener()Landroid/webkit/TiltListener;

    move-result-object v7

    .line 2223
    .local v7, currentTiltListener:Landroid/webkit/TiltListener;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 2224
    .local v4, action:I
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ne v4, v0, :cond_1

    const/4 v11, 0x1

    .line 2225
    .local v11, pointerUp:Z
    :goto_0
    const/16 v17, 0x6

    move/from16 v0, v17

    if-eq v4, v0, :cond_0

    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v4, v0, :cond_2

    :cond_0
    const/4 v5, 0x1

    .line 2228
    .local v5, configChanged:Z
    :goto_1
    if-eqz v11, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    .line 2231
    .local v12, skipIndex:I
    :goto_2
    const/4 v13, 0x0

    .local v13, sumX:F
    const/4 v14, 0x0

    .line 2232
    .local v14, sumY:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 2233
    .local v6, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    if-ge v10, v6, :cond_5

    .line 2234
    if-ne v12, v10, :cond_4

    .line 2233
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2224
    .end local v5           #configChanged:Z
    .end local v6           #count:I
    .end local v10           #i:I
    .end local v11           #pointerUp:Z
    .end local v12           #skipIndex:I
    .end local v13           #sumX:F
    .end local v14           #sumY:F
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 2225
    .restart local v11       #pointerUp:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 2228
    .restart local v5       #configChanged:Z
    :cond_3
    const/4 v12, -0x1

    goto :goto_2

    .line 2235
    .restart local v6       #count:I
    .restart local v10       #i:I
    .restart local v12       #skipIndex:I
    .restart local v13       #sumX:F
    .restart local v14       #sumY:F
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    add-float v13, v13, v17

    .line 2236
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    add-float v14, v14, v17

    goto :goto_4

    .line 2238
    :cond_5
    if-eqz v11, :cond_9

    add-int/lit8 v9, v6, -0x1

    .line 2239
    .local v9, div:I
    :goto_5
    int-to-float v0, v9

    move/from16 v17, v0

    div-float v15, v13, v17

    .line 2240
    .local v15, x:F
    int-to-float v0, v9

    move/from16 v17, v0

    div-float v16, v14, v17

    .line 2242
    .local v16, y:F
    if-eqz v5, :cond_6

    .line 2243
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    .line 2244
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    .line 2245
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    .line 2246
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->cancelLongPress()V

    .line 2247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 2250
    :cond_6
    if-eqz v8, :cond_c

    .line 2251
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2252
    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v17

    if-nez v17, :cond_7

    invoke-virtual {v7}, Landroid/webkit/TiltListener;->getTiltUse()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 2253
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    .line 2254
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/ZoomManager;->supportsPanDuringZoom()Z

    move-result v17

    if-nez v17, :cond_a

    .line 2283
    :cond_8
    :goto_6
    return-void

    .end local v9           #div:I
    .end local v15           #x:F
    .end local v16           #y:F
    :cond_9
    move v9, v6

    .line 2238
    goto :goto_5

    .line 2257
    .restart local v9       #div:I
    .restart local v15       #x:F
    .restart local v16       #y:F
    :cond_a
    const/16 v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 2258
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    .line 2259
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2262
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mFirstScaleOccured:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 2263
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mFirstScaleOccured:Z

    .line 2264
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->cancelTouch()V

    .line 2265
    const/4 v4, 0x0

    .line 2272
    :cond_c
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v4, v0, :cond_e

    .line 2273
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->cancelTouch()V

    .line 2274
    const/4 v4, 0x0

    .line 2282
    :cond_d
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/webkit/WebViewClassic;->handleTouchEventCommon(Landroid/view/MotionEvent;III)V

    goto :goto_6

    .line 2275
    :cond_e
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_d

    .line 2277
    const/16 v17, 0x0

    cmpg-float v17, v15, v17

    if-ltz v17, :cond_8

    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_d

    goto :goto_6
.end method

.method private onZoomAnimationEnd()V
    .locals 2

    .prologue
    .line 5973
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5974
    return-void
.end method

.method private onZoomAnimationStart()V
    .locals 1

    .prologue
    .line 5967
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 5968
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 5970
    :cond_0
    return-void
.end method

.method private overrideLoading(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 10727
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    .line 10728
    return-void
.end method

.method private pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 17
    .parameter "data"

    .prologue
    .line 1159
    invoke-virtual/range {p1 .. p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v13

    .line 1160
    .local v13, dataFormat:I
    const/4 v15, 0x0

    .line 1162
    .local v15, pasteText:Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1177
    :goto_0
    :pswitch_0
    if-eqz v15, :cond_0

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v1, :cond_0

    .line 1178
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const v4, 0x1040783

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1179
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v1, v15}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    .line 1182
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1183
    .local v2, eventTime:J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    move-wide v4, v2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic;->sendKeyEvent(Landroid/view/KeyEvent;)V

    .line 1188
    .end local v2           #eventTime:J
    :cond_0
    return-void

    :pswitch_1
    move-object/from16 v16, p1

    .line 1164
    check-cast v16, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 1165
    .local v16, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual/range {v16 .. v16}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v15

    .line 1166
    goto :goto_0

    .end local v16           #textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :pswitch_2
    move-object/from16 v14, p1

    .line 1169
    check-cast v14, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 1170
    .local v14, htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v14}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v15

    .line 1171
    goto :goto_0

    .line 1162
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static pinLoc(III)I
    .locals 1
    .parameter "x"
    .parameter "viewMax"
    .parameter "docMax"

    .prologue
    .line 4021
    if-ge p2, p1, :cond_1

    .line 4023
    const/4 p0, 0x0

    .line 4032
    :cond_0
    :goto_0
    return p0

    .line 4025
    :cond_1
    if-gez p0, :cond_2

    .line 4026
    const/4 p0, 0x0

    goto :goto_0

    .line 4028
    :cond_2
    add-int v0, p0, p1

    if-le v0, p2, :cond_0

    .line 4029
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private pinScrollBy(IIZI)Z
    .locals 2
    .parameter "dx"
    .parameter "dy"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 5053
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    move-result v0

    return v0
.end method

.method private pinScrollTo(IIZI)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 5058
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->abortAnimation()V

    .line 5059
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result p1

    .line 5060
    invoke-virtual {p0, p2}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result p2

    .line 5061
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    sub-int v3, p1, v0

    .line 5062
    .local v3, dx:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    sub-int v4, p2, v0

    .line 5064
    .local v4, dy:I
    or-int v0, v3, v4

    if-nez v0, :cond_0

    .line 5065
    const/4 v0, 0x0

    .line 5075
    :goto_0
    return v0

    .line 5067
    :cond_0
    if-eqz p3, :cond_2

    .line 5069
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    if-lez p4, :cond_1

    move v5, p4

    :goto_1
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5071
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 5075
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 5069
    :cond_1
    invoke-static {v3, v4}, Landroid/webkit/WebViewClassic;->computeDuration(II)I

    move-result v5

    goto :goto_1

    .line 5073
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_2
.end method

.method private playTouchSound()V
    .locals 2

    .prologue
    .line 3041
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 3049
    :cond_0
    :goto_0
    return-void

    .line 3044
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mEditable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v0, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v0, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 3046
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->playSoundEffect(I)V

    goto :goto_0
.end method

.method private postInvalidate()V
    .locals 1

    .prologue
    .line 12929
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->postInvalidate()V

    .line 12930
    return-void
.end method

.method private recordNewContentSize(IIZ)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "updateLayout"

    .prologue
    .line 4188
    or-int v0, p1, p2

    if-nez v0, :cond_0

    .line 4189
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 4213
    :goto_0
    return-void

    .line 4194
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    if-eq v0, p2, :cond_3

    .line 4196
    :cond_1
    iput p1, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    .line 4197
    iput p2, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    .line 4200
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-nez v0, :cond_2

    .line 4202
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebViewClassic;->updateScrollCoordinates(II)Z

    .line 4203
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4206
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setFinalX(I)V

    .line 4207
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 4210
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 4212
    :cond_3
    invoke-direct {p0, p3}, Landroid/webkit/WebViewClassic;->contentSizeChanged(Z)V

    goto :goto_0
.end method

.method private registerForStylusPenEvent()V
    .locals 3

    .prologue
    .line 13803
    const-string/jumbo v1, "webview"

    const-string/jumbo v2, "registerForStylusPenEvent START"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13804
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 13805
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mStylusEventListener:Landroid/webkit/WebViewClassic$StylusEventListener;

    if-eqz v1, :cond_0

    .line 13811
    :goto_0
    return-void

    .line 13808
    :cond_0
    new-instance v1, Landroid/webkit/WebViewClassic$StylusEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebViewClassic$StylusEventListener;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewClassic;->mStylusEventListener:Landroid/webkit/WebViewClassic$StylusEventListener;

    .line 13809
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mStylusEventListener:Landroid/webkit/WebViewClassic$StylusEventListener;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewTreeObserver;->addOnStylusButtonEventListener(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    .line 13810
    const-string/jumbo v1, "webview"

    const-string/jumbo v2, "registerForStylusPenEvent END"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private relocateAutoCompletePopup()V
    .locals 2

    .prologue
    .line 6207
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    if-eqz v0, :cond_0

    .line 6208
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    invoke-virtual {v0}, Landroid/webkit/AutoCompletePopup;->resetRect()V

    .line 6209
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/AutoCompletePopup;->setText(Ljava/lang/CharSequence;)V

    .line 6211
    :cond_0
    return-void
.end method

.method private removeForStylusPenEvent()V
    .locals 3

    .prologue
    .line 13814
    const-string/jumbo v1, "webview"

    const-string/jumbo v2, "removeForStylusPenEvent START"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13815
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 13816
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mStylusEventListener:Landroid/webkit/WebViewClassic$StylusEventListener;

    if-nez v1, :cond_0

    .line 13822
    :goto_0
    return-void

    .line 13819
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mStylusEventListener:Landroid/webkit/WebViewClassic$StylusEventListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    .line 13820
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebViewClassic;->mStylusEventListener:Landroid/webkit/WebViewClassic$StylusEventListener;

    .line 13821
    const-string/jumbo v1, "webview"

    const-string/jumbo v2, "removeForStylusPenEvent END"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeTouchHighlight()V
    .locals 1

    .prologue
    .line 5732
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->setTouchHighlightRects(Landroid/webkit/WebViewCore$WebKitHitTest;)V

    .line 5733
    return-void
.end method

.method private resetCaretTimer()V
    .locals 2

    .prologue
    .line 7354
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v0, v1}, Landroid/webkit/WebViewClassic;->resetCaretTimer(J)V

    .line 7355
    return-void
.end method

.method private resetCaretTimer(J)V
    .locals 2
    .parameter "delayedTime"

    .prologue
    const/16 v1, 0x90

    .line 7358
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7359
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    if-nez v0, :cond_0

    .line 7360
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7363
    :cond_0
    return-void
.end method

.method private resetTextSelectionTouchHandleFlag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13223
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mLongPress:Z

    .line 13224
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsPressingHandle:Z

    .line 13225
    iput v1, p0, Landroid/webkit/WebViewClassic;->mRequestNewSelection:I

    .line 13226
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextSelectionControls;->setHandleCrossing(Z)V

    .line 13227
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 13228
    return-void
.end method

.method private restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 5
    .parameter "p"
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    .line 3318
    const-string/jumbo v3, "scrollX"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3319
    .local v1, sx:I
    const-string/jumbo v3, "scrollY"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3321
    .local v2, sy:I
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    .line 3322
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    .line 3324
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->setScrollXRaw(I)V

    .line 3325
    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->setScrollYRaw(I)V

    .line 3326
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3, p2}, Landroid/webkit/ZoomManager;->restoreZoomState(Landroid/os/Bundle;)V

    .line 3327
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    .line 3328
    .local v0, scale:F
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic;->mHistoryWidth:I

    .line 3329
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic;->mHistoryHeight:I

    .line 3331
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 3332
    return-void
.end method

.method private saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 3
    .parameter "basename"
    .parameter "autoname"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3641
    .local p3, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x93

    new-instance v2, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;

    invoke-direct {v2, p1, p2, p3}, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;-><init>(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3643
    return-void
.end method

.method private static scaleAlongSegment(IILandroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 7239
    iget v7, p3, Landroid/graphics/PointF;->x:F

    iget v8, p2, Landroid/graphics/PointF;->x:F

    sub-float v2, v7, v8

    .line 7240
    .local v2, abX:F
    iget v7, p3, Landroid/graphics/PointF;->y:F

    iget v8, p2, Landroid/graphics/PointF;->y:F

    sub-float v3, v7, v8

    .line 7241
    .local v3, abY:F
    mul-float v7, v2, v2

    mul-float v8, v3, v3

    add-float v0, v7, v8

    .line 7244
    .local v0, ab2:F
    int-to-float v7, p0

    iget v8, p2, Landroid/graphics/PointF;->x:F

    sub-float v4, v7, v8

    .line 7245
    .local v4, apX:F
    int-to-float v7, p1

    iget v8, p2, Landroid/graphics/PointF;->y:F

    sub-float v5, v7, v8

    .line 7246
    .local v5, apY:F
    mul-float v7, v4, v2

    mul-float v8, v5, v3

    add-float v1, v7, v8

    .line 7247
    .local v1, abDotAP:F
    div-float v6, v1, v0

    .line 7248
    .local v6, scale:F
    return v6
.end method

.method private static scaleCoordinate(FFF)F
    .locals 2
    .parameter "scale"
    .parameter "coord1"
    .parameter "coord2"

    .prologue
    .line 10178
    sub-float v0, p2, p1

    .line 10179
    .local v0, diff:F
    mul-float v1, p0, v0

    add-float/2addr v1, p1

    return v1
.end method

.method private scaleTrackballX(FI)I
    .locals 4
    .parameter "xRate"
    .parameter "width"

    .prologue
    .line 10337
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 10338
    .local v1, xMove:I
    move v0, v1

    .line 10339
    .local v0, nextXMove:I
    if-lez v1, :cond_1

    .line 10340
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    if-le v1, v2, :cond_0

    .line 10341
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    sub-int/2addr v1, v2

    .line 10346
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    .line 10347
    return v1

    .line 10343
    :cond_1
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    if-ge v1, v2, :cond_0

    .line 10344
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scaleTrackballY(FI)I
    .locals 4
    .parameter "yRate"
    .parameter "height"

    .prologue
    .line 10351
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 10352
    .local v1, yMove:I
    move v0, v1

    .line 10353
    .local v0, nextYMove:I
    if-lez v1, :cond_1

    .line 10354
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    if-le v1, v2, :cond_0

    .line 10355
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    sub-int/2addr v1, v2

    .line 10360
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    .line 10361
    return v1

    .line 10357
    :cond_1
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    if-ge v1, v2, :cond_0

    .line 10358
    iget v2, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scrollEditIntoView()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 8313
    const/4 v5, 0x0

    .line 8322
    .local v5, visibleRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    .end local v5           #visibleRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v9

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0, v9}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8328
    .restart local v5       #visibleRect:Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8403
    :cond_0
    :goto_0
    return-void

    .line 8331
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 8332
    iget v6, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget v7, p0, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    invoke-static {v6, v7, v5}, Landroid/webkit/WebViewClassic;->nativeFindMaxVisibleRect(IILandroid/graphics/Rect;)V

    .line 8333
    const/4 v6, 0x1

    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8334
    .local v0, buffer:I
    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v0

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v0

    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v0

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8339
    .local v4, showRect:Landroid/graphics/Rect;
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->calculateCaretTop()Landroid/graphics/Point;

    move-result-object v1

    .line 8340
    .local v1, caretTop:Landroid/graphics/Point;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 8342
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    if-ge v6, v7, :cond_3

    .line 8343
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 8344
    iget v6, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v0

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 8350
    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 8353
    iget v6, v1, Landroid/graphics/Point;->y:I

    if-nez v6, :cond_4

    .line 8354
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->revealSelection()V

    goto :goto_0

    .line 8346
    :cond_3
    iget v6, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 8347
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v0

    iput v6, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 8358
    :cond_4
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_8

    .line 8359
    iget v6, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 8360
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v0

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 8367
    :cond_5
    :goto_2
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 8371
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v2

    .line 8372
    .local v2, scrollX:I
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_9

    .line 8374
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 8379
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v3

    .line 8386
    .local v3, scrollY:I
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_a

    .line 8387
    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 8402
    :cond_7
    :goto_4
    invoke-direct {p0, v2, v3, v11}, Landroid/webkit/WebViewClassic;->contentScrollTo(IIZ)V

    goto/16 :goto_0

    .line 8362
    .end local v2           #scrollX:I
    .end local v3           #scrollY:I
    :cond_8
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 8363
    iget v6, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v0

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 8375
    .restart local v2       #scrollX:I
    :cond_9
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_6

    .line 8377
    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    add-int/2addr v2, v6

    goto :goto_3

    .line 8393
    .restart local v3       #scrollY:I
    :cond_a
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_7

    .line 8394
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    add-int/2addr v3, v6

    goto :goto_4
.end method

.method private scrollEditText(II)V
    .locals 6
    .parameter "scrollX"
    .parameter "scrollY"

    .prologue
    .line 12198
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v2

    int-to-float v0, v2

    .line 12199
    .local v0, maxScrollX:F
    int-to-float v2, p1

    div-float v1, v2, v0

    .line 12200
    .local v1, scrollPercentX:F
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    neg-int v3, p1

    neg-int v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 12201
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v3, v4, p2, v5}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V

    .line 12203
    return-void
.end method

.method private scrollEditWithCursor()V
    .locals 19

    .prologue
    .line 9948
    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_0

    .line 9949
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v13

    .line 9950
    .local v13, x:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/webkit/WebViewClassic;->getTextScrollSpeed(III)F

    move-result v7

    .line 9952
    .local v7, scrollSpeedX:F
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingOffset:Landroid/graphics/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v14

    .line 9953
    .local v14, y:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/webkit/WebViewClassic;->getTextScrollSpeed(III)F

    move-result v8

    .line 9955
    .local v8, scrollSpeedY:F
    const/4 v15, 0x0

    cmpl-float v15, v7, v15

    if-nez v15, :cond_1

    const/4 v15, 0x0

    cmpl-float v15, v8, v15

    if-nez v15, :cond_1

    .line 9956
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->endScrollEdit()V

    .line 9990
    .end local v7           #scrollSpeedX:F
    .end local v8           #scrollSpeedY:F
    .end local v13           #x:I
    .end local v14           #y:I
    :cond_0
    :goto_0
    return-void

    .line 9958
    .restart local v7       #scrollSpeedX:F
    .restart local v8       #scrollSpeedY:F
    .restart local v13       #x:I
    .restart local v14       #y:I
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 9959
    .local v1, currentTime:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    sub-long v11, v1, v15

    .line 9960
    .local v11, timeSinceLastUpdate:J
    invoke-static {v7, v11, v12}, Landroid/webkit/WebViewClassic;->getTextScrollDelta(FJ)I

    move-result v5

    .line 9961
    .local v5, deltaX:I
    invoke-static {v8, v11, v12}, Landroid/webkit/WebViewClassic;->getTextScrollDelta(FJ)I

    move-result v6

    .line 9962
    .local v6, deltaY:I
    move-object/from16 v0, p0

    iput-wide v1, v0, Landroid/webkit/WebViewClassic;->mLastEditScroll:J

    .line 9963
    if-nez v5, :cond_2

    if-nez v6, :cond_2

    .line 9965
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v16, 0x95

    const-wide/16 v17, 0x10

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 9968
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollX()I

    move-result v15

    add-int v9, v15, v5

    .line 9969
    .local v9, scrollX:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v15

    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 9970
    const/4 v15, 0x0

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 9971
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTextScrollY()I

    move-result v15

    add-int v10, v15, v6

    .line 9972
    .local v10, scrollY:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollY()I

    move-result v15

    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 9973
    const/4 v15, 0x0

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 9974
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Landroid/webkit/WebViewClassic;->scrollEditText(II)V

    .line 9975
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v3, v15, Landroid/graphics/Point;->x:I

    .line 9976
    .local v3, cursorX:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v4, v15, Landroid/graphics/Point;->y:I

    .line 9978
    .local v4, cursorY:I
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Landroid/webkit/WebViewClassic;->canTextScroll(II)Z

    move-result v15

    if-nez v15, :cond_3

    .line 9979
    const-string/jumbo v15, "webview"

    const-string v16, "Do not add the extra delta when nothing to scroll:"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9980
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    invoke-virtual {v15, v13, v14}, Landroid/graphics/Point;->set(II)V

    .line 9985
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->updateWebkitSelection()V

    .line 9986
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    invoke-virtual {v15, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 9982
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    sub-int v16, v13, v5

    sub-int v17, v14, v6

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Point;->set(II)V

    goto :goto_1
.end method

.method private scrollLayerTo(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5012
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, p1

    .line 5013
    .local v0, dx:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, p2

    .line 5014
    .local v1, dy:I
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_2

    .line 5042
    :cond_1
    :goto_0
    return-void

    .line 5017
    :cond_2
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v2, :cond_6

    .line 5018
    iget v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftLayerId:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    if-ne v2, v3, :cond_3

    .line 5019
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->offset(II)V

    .line 5020
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/webkit/QuadF;->offset(FF)V

    .line 5022
    :cond_3
    iget v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightLayerId:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    if-ne v2, v3, :cond_4

    .line 5023
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->offset(II)V

    .line 5024
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/webkit/QuadF;->offset(FF)V

    .line 5030
    :cond_4
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    if-ne v2, v3, :cond_5

    .line 5032
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 5033
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    invoke-virtual {v2}, Landroid/webkit/AutoCompletePopup;->resetRect()V

    .line 5035
    :cond_5
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    invoke-direct {p0, v2, v3, p1, p2}, Landroid/webkit/WebViewClassic;->nativeScrollLayer(IIII)Z

    .line 5036
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iput p1, v2, Landroid/graphics/Rect;->left:I

    .line 5037
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iput p2, v2, Landroid/graphics/Rect;->top:I

    .line 5038
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xc6

    iget v4, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    .line 5040
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/webkit/WebView$PrivateAccess;->onScrollChanged(IIII)V

    .line 5041
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto :goto_0

    .line 5026
    :cond_6
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mHandleAlpha:Landroid/webkit/WebViewClassic$SelectionHandleAlpha;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->getAlpha()I

    move-result v2

    if-lez v2, :cond_4

    .line 5028
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_1
.end method

.method private scrollSelectIntoView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 8407
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8411
    .local v4, visibleRect:Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8443
    :cond_0
    :goto_0
    return-void

    .line 8415
    :cond_1
    iget v5, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget v6, p0, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    invoke-static {v5, v6, v4}, Landroid/webkit/WebViewClassic;->nativeFindMaxVisibleRect(IILandroid/graphics/Rect;)V

    .line 8416
    const/4 v5, 0x1

    const/16 v6, 0xa

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8417
    .local v0, buffer:I
    new-instance v3, Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectContentBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v0

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectContentBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v0

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectContentBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v0

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mSelectContentBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v0

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8423
    .local v3, showRect:Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8427
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    .line 8428
    .local v1, scrollX:I
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-le v5, v6, :cond_4

    .line 8430
    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 8435
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v2

    .line 8436
    .local v2, scrollY:I
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-le v5, v6, :cond_5

    .line 8437
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 8442
    :cond_3
    :goto_2
    invoke-direct {p0, v1, v2, v10}, Landroid/webkit/WebViewClassic;->contentScrollTo(IIZ)V

    goto :goto_0

    .line 8431
    .end local v2           #scrollY:I
    :cond_4
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-ge v5, v6, :cond_2

    .line 8433
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    goto :goto_1

    .line 8438
    .restart local v2       #scrollY:I
    :cond_5
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v6, :cond_3

    .line 8439
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    goto :goto_2
.end method

.method private selectClosestWord(II)Z
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 7640
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7737
    :cond_0
    :goto_0
    return v4

    .line 7642
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_7

    .line 7643
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v8

    check-cast v8, Landroid/webkit/HtmlComposerView;

    .line 7644
    .local v8, htmlcomposerview:Landroid/webkit/HtmlComposerView;
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 7646
    :cond_2
    iput-boolean v12, v8, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 7647
    iget-object v0, v8, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 7648
    iget-object v0, v8, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 7649
    iput-boolean v4, v8, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    .line 7653
    new-instance v9, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v9, v8, v5, v0}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7654
    .local v9, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v9

    .line 7655
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x224

    invoke-virtual {v0, v1, p1, p2, v9}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7657
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7661
    :goto_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7664
    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v12, v0, :cond_3

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_7

    .line 7665
    :cond_3
    const-string/jumbo v0, "webview"

    const-string v1, " WebViewCore.ACTION_LONGPRESS(HTML_COMPOSER) : selectClosestWord() is not called "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7668
    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v3, v0, :cond_0

    .line 7671
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 7674
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 7676
    .local v11, selectedType:Ljava/lang/Integer;
    new-instance v10, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v8, v5, v11}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7677
    .local v10, resTr:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v10

    .line 7678
    :try_start_3
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 7679
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x213

    invoke-virtual {v0, v1, v10}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7684
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 7689
    :goto_2
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 7691
    invoke-virtual {v10}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    .line 7694
    iget-object v0, v8, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    if-eqz v0, :cond_4

    iget-boolean v0, v8, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    if-nez v0, :cond_4

    .line 7695
    iget-object v0, v8, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    iget-object v1, v8, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    .line 7697
    :cond_4
    iput-boolean v4, v8, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 7698
    iput-boolean v12, v8, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    .line 7700
    new-instance v0, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v8}, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, v8, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    .line 7701
    iget-object v0, v8, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    iget-object v1, v8, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 7702
    const/16 v0, 0x66

    iput v0, v8, Landroid/webkit/HtmlComposerView;->iAlpha:I

    .line 7704
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 7707
    :cond_5
    invoke-virtual {v8}, Landroid/webkit/HtmlComposerView;->onRecieveWebviewLongTouchUp()V

    move v4, v12

    .line 7708
    goto/16 :goto_0

    .line 7658
    .end local v10           #resTr:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v11           #selectedType:Ljava/lang/Integer;
    :catch_0
    move-exception v7

    .line 7659
    .local v7, e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string/jumbo v0, "webview"

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7661
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 7681
    .restart local v10       #resTr:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .restart local v11       #selectedType:Ljava/lang/Integer;
    :cond_6
    :try_start_7
    monitor-exit v10

    goto/16 :goto_0

    .line 7689
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 7685
    :catch_1
    move-exception v7

    .line 7686
    .restart local v7       #e:Ljava/lang/InterruptedException;
    :try_start_8
    const-string/jumbo v0, "webview"

    const-string v1, "Caught exception while waiting for overrideUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7687
    const-string/jumbo v0, "webview"

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 7713
    .end local v7           #e:Ljava/lang/InterruptedException;
    .end local v8           #htmlcomposerview:Landroid/webkit/HtmlComposerView;
    .end local v9           #res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v10           #resTr:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v11           #selectedType:Ljava/lang/Integer;
    :cond_7
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getDisableSelection()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7714
    const-string/jumbo v0, "webview"

    const-string v1, "Selecting is cancelled because selection is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7717
    :cond_8
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->setUpAdvSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7720
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mSmartSelection:Z

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 7722
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x2c8

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7727
    iput-boolean v12, p0, Landroid/webkit/WebViewClassic;->mLongPress:Z

    .line 7728
    iput v12, p0, Landroid/webkit/WebViewClassic;->mRequestNewSelection:I

    .line 7731
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_9

    .line 7732
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mLongPress:Z

    .line 7733
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->onRecieveWebviewLongTouchUp()V

    :cond_9
    move v4, v12

    .line 7737
    goto/16 :goto_0
.end method

.method private sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 12713
    const/4 v1, 0x0

    .line 12714
    .local v1, direction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 12731
    :goto_0
    if-eqz v1, :cond_0

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v1}, Landroid/webkit/WebView;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    .line 12733
    const/4 v1, 0x0

    .line 12735
    :cond_0
    const/16 v2, 0x68

    .line 12736
    .local v2, eventHubAction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    .line 12737
    const/16 v2, 0x67

    .line 12745
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v1, v5, p1}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    .line 12751
    iget-boolean v5, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v5, :cond_3

    const/16 v5, 0x3e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-ne v5, v6, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->isBrowserApp()Z

    move-result v4

    if-nez v4, :cond_3

    .line 12755
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 12756
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_3

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12757
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    .line 12758
    .local v0, accessoryKeyboardState:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    const/16 v5, 0x101

    if-ne v4, v5, :cond_2

    and-int/lit8 v4, v0, 0x7

    if-eqz v4, :cond_3

    .line 12759
    :cond_2
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x25d

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 12760
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 12765
    .end local v0           #accessoryKeyboardState:I
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    return-void

    .line 12716
    .end local v2           #eventHubAction:I
    :sswitch_0
    const/16 v1, 0x82

    .line 12717
    goto :goto_0

    .line 12719
    :sswitch_1
    const/16 v1, 0x21

    .line 12720
    goto :goto_0

    .line 12722
    :sswitch_2
    const/16 v1, 0x11

    .line 12723
    goto :goto_0

    .line 12725
    :sswitch_3
    const/16 v1, 0x42

    .line 12726
    goto :goto_0

    .line 12728
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v4

    :goto_1
    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_1

    .line 12714
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method private setAppType()V
    .locals 4

    .prologue
    .line 8461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8463
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/String;

    const-string v3, "com.android.browser"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8465
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 8467
    .local v1, pkgName:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8469
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettingsClassic;->setBrowserApp(Z)V

    .line 8474
    :goto_0
    return-void

    .line 8472
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettingsClassic;->setBrowserApp(Z)V

    goto :goto_0
.end method

.method private setContentScrollBy(IIZ)Z
    .locals 3
    .parameter "cx"
    .parameter "cy"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 5081
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-eqz v2, :cond_1

    .line 5105
    :cond_0
    :goto_0
    return v1

    .line 5088
    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result p1

    .line 5089
    invoke-virtual {p0, p2}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result p2

    .line 5090
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-eqz v2, :cond_3

    .line 5092
    if-eqz p2, :cond_2

    .line 5093
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 5094
    .local v0, tempRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 5095
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 5096
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 5103
    .end local v0           #tempRect:Landroid/graphics/Rect;
    :cond_2
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, v1, p3, v1}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 5105
    :cond_3
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v1

    goto :goto_0
.end method

.method private setFindIsUp(Z)V
    .locals 0
    .parameter "isUp"

    .prologue
    .line 4840
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mFindIsUp:Z

    .line 4841
    return-void
.end method

.method private setHitTestResult(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    .locals 5
    .parameter "hit"

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x7

    const/4 v2, 0x5

    .line 11792
    if-nez p1, :cond_1

    .line 11793
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    .line 11824
    :cond_0
    :goto_0
    return-void

    .line 11796
    :cond_1
    new-instance v0, Landroid/webkit/WebView$HitTestResult;

    invoke-direct {v0}, Landroid/webkit/WebView$HitTestResult;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    .line 11797
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 11798
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->setHitTestTypeFromUrl(Ljava/lang/String;)V

    .line 11799
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11802
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 11803
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    iget-object v1, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    .line 11818
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11820
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 11821
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mPopupLaunchHitTestType:Z

    goto :goto_0

    .line 11804
    :cond_3
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 11806
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 11807
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    iget-object v1, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    goto :goto_1

    .line 11809
    :cond_4
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 11810
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 11811
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    iget-object v1, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    goto :goto_1

    .line 11812
    :cond_5
    iget-boolean v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mEditable:Z

    if-eqz v0, :cond_6

    .line 11813
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    goto :goto_1

    .line 11814
    :cond_6
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mIntentUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 11815
    iget-object v0, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mIntentUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->setHitTestTypeFromUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setHitTestTypeFromUrl(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 11768
    const/4 v1, 0x0

    .line 11769
    .local v1, substr:Ljava/lang/String;
    const-string v2, "geo:0,0?q="

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11770
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 11771
    const-string v2, "geo:0,0?q="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 11784
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 11789
    :goto_1
    return-void

    .line 11772
    :cond_0
    const-string/jumbo v2, "tel:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11773
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 11774
    const-string/jumbo v2, "tel:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11775
    :cond_1
    const-string v2, "mailto:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11776
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 11777
    const-string v2, "mailto:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11779
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 11780
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    goto :goto_1

    .line 11785
    :catch_0
    move-exception v0

    .line 11786
    .local v0, e:Ljava/lang/Throwable;
    const-string/jumbo v2, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode URL! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11787
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    goto :goto_1
.end method

.method private static setLocalProxy(Landroid/content/Context;Z)Z
    .locals 15
    .parameter "context"
    .parameter "needReset"

    .prologue
    .line 5158
    const/4 v7, 0x0

    .line 5160
    .local v7, ret:Z
    sget-boolean v12, Landroid/webkit/WebViewClassic;->bNeedToCheckCustomProxy:Z

    if-nez v12, :cond_0

    move v8, v7

    .line 5206
    .end local v7           #ret:Z
    .local v8, ret:I
    :goto_0
    return v8

    .line 5164
    .end local v8           #ret:I
    .restart local v7       #ret:Z
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 5165
    .local v5, pkgName:Ljava/lang/String;
    const-string v12, "com.android.browser"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    move v8, v7

    .line 5166
    .restart local v8       #ret:I
    goto :goto_0

    .line 5169
    .end local v8           #ret:I
    :cond_1
    const-string v12, "connectivity"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 5170
    .local v2, cm:Landroid/net/ConnectivityManager;
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 5171
    .local v4, mobileNetworkInfo:Landroid/net/NetworkInfo;
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    .line 5172
    .local v11, wifiNetworkInfo:Landroid/net/NetworkInfo;
    const/4 v12, 0x7

    invoke-virtual {v2, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 5173
    .local v1, bluetoothNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v3, 0x1

    .line 5174
    .local v3, mobileNetowrkConnected:Z
    :goto_1
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v10, 0x1

    .line 5175
    .local v10, wifiNetworkConnected:Z
    :goto_2
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v0, 0x1

    .line 5176
    .local v0, bluetoothNetworkConnected:Z
    :goto_3
    const-string/jumbo v12, "webview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setLocalProxy mobile("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") wifi("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") bluetooth("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5177
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getProxy()Landroid/net/ProxyProperties;

    move-result-object v6

    .line 5179
    .local v6, proxy:Landroid/net/ProxyProperties;
    if-eqz v3, :cond_4

    if-nez v10, :cond_4

    if-nez v0, :cond_4

    .line 5181
    sget-object v12, Landroid/webkit/WebViewClassic;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    const-string v13, "CMCC"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 5183
    const-string v12, "gsm.sim.operator.numeric"

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5184
    .local v9, simNum:Ljava/lang/String;
    if-eqz v9, :cond_4

    const-string v12, "46000"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "46002"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "46007"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "460078"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "45001"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 5185
    :cond_2
    if-eqz v6, :cond_3

    const-string v12, "192.168.230.8"

    invoke-virtual {v6}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 5186
    :cond_3
    const-string v12, "cmwap"

    const-string v13, "android.com.browser.apn"

    const-string v14, "cmwap"

    invoke-static {v13, v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 5187
    const-string/jumbo v12, "webview"

    const-string/jumbo v13, "setLocalProxy CMCC"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5188
    new-instance v6, Landroid/net/ProxyProperties;

    .end local v6           #proxy:Landroid/net/ProxyProperties;
    const-string v12, "10.0.0.172"

    const/16 v13, 0x50

    const/4 v14, 0x0

    invoke-direct {v6, v12, v13, v14}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 5189
    .restart local v6       #proxy:Landroid/net/ProxyProperties;
    const/4 v7, 0x1

    .line 5204
    .end local v9           #simNum:Ljava/lang/String;
    :cond_4
    :goto_4
    if-nez v7, :cond_5

    if-eqz p1, :cond_6

    .line 5205
    :cond_5
    const/16 v12, 0xc1

    invoke-static {v12, v6}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    :cond_6
    move v8, v7

    .line 5206
    .restart local v8       #ret:I
    goto/16 :goto_0

    .line 5173
    .end local v0           #bluetoothNetworkConnected:Z
    .end local v3           #mobileNetowrkConnected:Z
    .end local v6           #proxy:Landroid/net/ProxyProperties;
    .end local v8           #ret:I
    .end local v10           #wifiNetworkConnected:Z
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5174
    .restart local v3       #mobileNetowrkConnected:Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 5175
    .restart local v10       #wifiNetworkConnected:Z
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 5195
    .restart local v0       #bluetoothNetworkConnected:Z
    .restart local v6       #proxy:Landroid/net/ProxyProperties;
    :cond_a
    sget-object v12, Landroid/webkit/WebViewClassic;->ENABLE_LOCAL_PROXY_FOR:Ljava/lang/String;

    const-string v13, "MetroPCS"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 5197
    const-string/jumbo v12, "webview"

    const-string/jumbo v13, "setLocalProxy MetroPCS"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5198
    new-instance v6, Landroid/net/ProxyProperties;

    .end local v6           #proxy:Landroid/net/ProxyProperties;
    const-string/jumbo v12, "proxy.metropcs.net"

    const/16 v13, 0xc38

    const/4 v14, 0x0

    invoke-direct {v6, v12, v13, v14}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 5199
    .restart local v6       #proxy:Landroid/net/ProxyProperties;
    const/4 v7, 0x1

    goto :goto_4
.end method

.method public static setShouldMonitorWebCoreThread()V
    .locals 0

    .prologue
    .line 12934
    invoke-static {}, Landroid/webkit/WebViewCore;->setShouldMonitorWebCoreThread()V

    .line 12935
    return-void
.end method

.method private setTouchHighlightRects(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    .locals 14
    .parameter "hit"

    .prologue
    .line 11932
    const/4 v7, 0x0

    .line 11933
    .local v7, transition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->shouldAnimateTo(Landroid/webkit/WebViewCore$WebKitHitTest;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 11934
    new-instance v7, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    .end local v7           #transition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;
    invoke-direct {v7, p0}, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;-><init>(Landroid/webkit/WebViewClassic;)V

    .line 11936
    .restart local v7       #transition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;
    :cond_0
    if-eqz p1, :cond_8

    iget-object v6, p1, Landroid/webkit/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    .line 11937
    .local v6, rects:[Landroid/graphics/Rect;
    :goto_0
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v9}, Landroid/graphics/Region;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 11938
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v9}, Landroid/webkit/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v2

    .line 11939
    .local v2, detector:Landroid/view/ScaleGestureDetector;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getIsZoomScaleBegin()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 11941
    :cond_2
    sget-boolean v9, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v9, :cond_3

    .line 11942
    const-string/jumbo v9, "webview"

    const-string/jumbo v10, "skip invalidate of setTouchHighlightRects from remove"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11947
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 11948
    new-instance v9, Landroid/graphics/Region;

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-direct {v9, v10}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v9, v7, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;->mPreviousRegion:Landroid/graphics/Region;

    .line 11950
    :cond_4
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v9}, Landroid/graphics/Region;->setEmpty()V

    .line 11952
    .end local v2           #detector:Landroid/view/ScaleGestureDetector;
    :cond_5
    if-eqz v6, :cond_b

    .line 11953
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mTouchHightlightPaint:Landroid/graphics/Paint;

    const v10, 0x66ff9129

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 11954
    move-object v1, v6

    .local v1, arr$:[Landroid/graphics/Rect;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_a

    aget-object v5, v1, v3

    .line 11955
    .local v5, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 11960
    .local v8, viewRect:Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v10

    shr-int/lit8 v10, v10, 0x1

    if-lt v9, v10, :cond_6

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v10

    shr-int/lit8 v10, v10, 0x1

    if-ge v9, v10, :cond_7

    .line 11962
    :cond_6
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v8}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 11954
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 11936
    .end local v1           #arr$:[Landroid/graphics/Rect;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #rect:Landroid/graphics/Rect;
    .end local v6           #rects:[Landroid/graphics/Rect;
    .end local v8           #viewRect:Landroid/graphics/Rect;
    :cond_8
    const/4 v6, 0x0

    goto :goto_0

    .line 11945
    .restart local v2       #detector:Landroid/view/ScaleGestureDetector;
    .restart local v6       #rects:[Landroid/graphics/Rect;
    :cond_9
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v10}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 11968
    .end local v2           #detector:Landroid/view/ScaleGestureDetector;
    .restart local v1       #arr$:[Landroid/graphics/Rect;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_a
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v10}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    .line 11969
    if-eqz v7, :cond_b

    iget-object v9, v7, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;->mPreviousRegion:Landroid/graphics/Region;

    if-eqz v9, :cond_b

    .line 11970
    new-instance v9, Landroid/graphics/Region;

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-direct {v9, v10}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v9, v7, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;->mNewRegion:Landroid/graphics/Region;

    .line 11971
    iput-object v7, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    .line 11972
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    const-string/jumbo v10, "progress"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 11974
    .local v0, animator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 11977
    .end local v0           #animator:Landroid/animation/ObjectAnimator;
    .end local v1           #arr$:[Landroid/graphics/Rect;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_b
    return-void
.end method

.method private setUpAdvSelect()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7568
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_1

    .line 7576
    :cond_0
    :goto_0
    return v0

    .line 7569
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->inFullScreenMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7570
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mWebSelectionOn:Z

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 7574
    :cond_2
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mLongPress:Z

    .line 7575
    iput v0, p0, Landroid/webkit/WebViewClassic;->mController:I

    move v0, v1

    .line 7576
    goto :goto_0
.end method

.method private setupPackageListener(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 2520
    const-class v4, Landroid/webkit/WebViewClassic;

    monitor-enter v4

    .line 2524
    :try_start_0
    sget-boolean v3, Landroid/webkit/WebViewClassic;->sPackageInstallationReceiverAdded:Z

    if-eqz v3, :cond_0

    .line 2525
    monitor-exit v4

    .line 2564
    :goto_0
    return-void

    .line 2528
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2529
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2530
    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2531
    new-instance v1, Landroid/webkit/WebViewClassic$PackageListener;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/webkit/WebViewClassic$PackageListener;-><init>(Landroid/webkit/WebViewClassic$1;)V

    .line 2532
    .local v1, packageListener:Landroid/content/BroadcastReceiver;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2533
    const/4 v3, 0x1

    sput-boolean v3, Landroid/webkit/WebViewClassic;->sPackageInstallationReceiverAdded:Z

    .line 2534
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2537
    new-instance v2, Landroid/webkit/WebViewClassic$1;

    invoke-direct {v2, p0}, Landroid/webkit/WebViewClassic$1;-><init>(Landroid/webkit/WebViewClassic;)V

    .line 2563
    .local v2, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 2534
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #packageListener:Landroid/content/BroadcastReceiver;
    .end local v2           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/Set<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static declared-synchronized setupProxyListener(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 2401
    const-class v3, Landroid/webkit/WebViewClassic;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/webkit/WebViewClassic;->sNotificationsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 2412
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 2404
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2405
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2406
    new-instance v2, Landroid/webkit/WebViewClassic$ProxyReceiver;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/webkit/WebViewClassic$ProxyReceiver;-><init>(Landroid/webkit/WebViewClassic$1;)V

    sput-object v2, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;

    .line 2407
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/webkit/WebViewClassic;->sProxyReceiver:Landroid/webkit/WebViewClassic$ProxyReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 2409
    .local v0, currentProxy:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 2410
    invoke-static {v0, p0}, Landroid/webkit/WebViewClassic;->handleProxyBroadcast(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2401
    .end local v0           #currentProxy:Landroid/content/Intent;
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static setupTrustStorageListener(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 2370
    sget-object v2, Landroid/webkit/WebViewClassic;->sTrustStorageListener:Landroid/webkit/WebViewClassic$TrustStorageListener;

    if-eqz v2, :cond_1

    .line 2381
    :cond_0
    :goto_0
    return-void

    .line 2373
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2374
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2375
    new-instance v2, Landroid/webkit/WebViewClassic$TrustStorageListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/webkit/WebViewClassic$TrustStorageListener;-><init>(Landroid/webkit/WebViewClassic$1;)V

    sput-object v2, Landroid/webkit/WebViewClassic;->sTrustStorageListener:Landroid/webkit/WebViewClassic$TrustStorageListener;

    .line 2376
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewClassic;->sTrustStorageListener:Landroid/webkit/WebViewClassic$TrustStorageListener;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 2378
    .local v0, current:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 2379
    invoke-static {}, Landroid/webkit/WebViewClassic;->handleCertTrustChanged()V

    goto :goto_0
.end method

.method private setupWebkitSelect()Z
    .locals 1

    .prologue
    .line 7319
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 7321
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->startSelectActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7322
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 7323
    const/4 v0, 0x0

    .line 7329
    :goto_0
    return v0

    .line 7325
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->startSelectingText()V

    .line 7326
    iget v0, p0, Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I

    if-nez v0, :cond_1

    .line 7327
    const/4 v0, 0x3

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 7329
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldAnimateTo(Landroid/webkit/WebViewCore$WebKitHitTest;)Z
    .locals 1
    .parameter "hit"

    .prologue
    .line 11928
    const/4 v0, 0x0

    return v0
.end method

.method private shouldDrawHighlightRect()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11827
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    if-nez v1, :cond_1

    .line 11845
    :cond_0
    :goto_0
    return v0

    .line 11830
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11835
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mTapHighlightColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 11839
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mHasFocus:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 11840
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mEditable:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 11842
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mHasFocus:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v1, v1, Landroid/webkit/WebViewCore$WebKitHitTest;->mEditable:Z

    if-nez v1, :cond_0

    .line 11845
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z

    goto :goto_0
.end method

.method private showMagnifier(IIZ)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "isChanging"

    .prologue
    .line 12944
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getEnableMagnifier()Z

    move-result v3

    if-nez v3, :cond_1

    .line 12982
    :cond_0
    :goto_0
    return-void

    .line 12945
    :cond_1
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-nez v3, :cond_0

    .line 12947
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v5

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    invoke-virtual {v3, v4, v5, v6}, Landroid/webkit/WebTextSelectionControls;->getHandleType(IILandroid/webkit/WebViewCore$SelectionCopiedData;)I

    move-result v0

    .line 12950
    .local v0, handleType:I
    if-eqz p3, :cond_2

    .line 12951
    packed-switch v0, :pswitch_data_0

    .line 12978
    :cond_2
    :goto_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_3

    .line 12979
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v5

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/webkit/WebMagnifier;->show(IILandroid/graphics/Rect;F)V

    goto :goto_0

    .line 12953
    :pswitch_0
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_2

    .line 12954
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 12955
    .local v2, rtStart:Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    sub-int p2, v3, v4

    .line 12956
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/webkit/WebMagnifier;->mAdjustY:I

    .line 12957
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    const/4 v4, 0x1

    iput v4, v3, Landroid/webkit/WebMagnifier;->mMode:I

    .line 12958
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-virtual {v4}, Landroid/webkit/WebTextSelectionControls;->getHandleHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x14

    iput v4, v3, Landroid/webkit/WebMagnifier;->mHandleHeight:I

    goto :goto_1

    .line 12963
    .end local v2           #rtStart:Landroid/graphics/Rect;
    :pswitch_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_2

    .line 12964
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 12965
    .local v1, rtEnd:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    sub-int p2, v3, v4

    .line 12966
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/webkit/WebMagnifier;->mAdjustY:I

    .line 12967
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    const/4 v4, 0x2

    iput v4, v3, Landroid/webkit/WebMagnifier;->mMode:I

    goto :goto_1

    .line 12981
    .end local v1           #rtEnd:Landroid/graphics/Rect;
    :cond_3
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v3, p1, p2}, Landroid/webkit/WebMagnifier;->show(II)V

    goto/16 :goto_0

    .line 12951
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showPasteWindow()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 7202
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v7, "clipboard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ClipboardManager;

    move-object v0, v6

    check-cast v0, Landroid/content/ClipboardManager;

    .line 7204
    .local v0, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->canShowDialog()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7205
    new-instance v1, Landroid/graphics/Point;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v7}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v7

    invoke-direct {v1, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 7207
    .local v1, cursorPoint:Landroid/graphics/Point;
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->calculateCaretTop()Landroid/graphics/Point;

    move-result-object v2

    .line 7208
    .local v2, cursorTop:Landroid/graphics/Point;
    iget v6, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v6

    iget v7, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v7}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Point;->set(II)V

    .line 7211
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 7212
    .local v3, location:[I
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 7213
    aget v6, v3, v8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v7

    sub-int v4, v6, v7

    .line 7214
    .local v4, offsetX:I
    aget v6, v3, v9

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    sub-int v5, v6, v7

    .line 7215
    .local v5, offsetY:I
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Point;->offset(II)V

    .line 7216
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->offset(II)V

    .line 7217
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mPasteWindow:Landroid/webkit/WebViewClassic$PastePopupWindow;

    if-nez v6, :cond_0

    .line 7218
    new-instance v6, Landroid/webkit/WebViewClassic$PastePopupWindow;

    invoke-direct {v6, p0}, Landroid/webkit/WebViewClassic$PastePopupWindow;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v6, p0, Landroid/webkit/WebViewClassic;->mPasteWindow:Landroid/webkit/WebViewClassic$PastePopupWindow;

    .line 7220
    :cond_0
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mPasteWindow:Landroid/webkit/WebViewClassic$PastePopupWindow;

    aget v7, v3, v8

    aget v8, v3, v9

    invoke-virtual {v6, v1, v2, v7, v8}, Landroid/webkit/WebViewClassic$PastePopupWindow;->show(Landroid/graphics/Point;Landroid/graphics/Point;II)V

    .line 7222
    .end local v1           #cursorPoint:Landroid/graphics/Point;
    .end local v2           #cursorTop:Landroid/graphics/Point;
    .end local v3           #location:[I
    .end local v4           #offsetX:I
    .end local v5           #offsetY:I
    :cond_1
    return-void
.end method

.method private snapDraggingCursor()V
    .locals 9

    .prologue
    .line 10156
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v7, v7, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v8, v8, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebViewClassic;->scaleAlongSegment(IILandroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    .line 10160
    .local v2, scale:F
    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 10161
    const/high16 v5, 0x3f80

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 10162
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v5, v5, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v6, v6, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v5, v6}, Landroid/webkit/WebViewClassic;->scaleCoordinate(FFF)F

    move-result v0

    .line 10164
    .local v0, newX:F
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v5, v5, Landroid/webkit/QuadF;->p4:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;

    iget-object v6, v6, Landroid/webkit/QuadF;->p3:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v5, v6}, Landroid/webkit/WebViewClassic;->scaleCoordinate(FFF)F

    move-result v1

    .line 10166
    .local v1, newY:F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 10167
    .local v3, x:I
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 10168
    .local v4, y:I
    iget-boolean v5, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v5, :cond_0

    .line 10169
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 10171
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 10174
    :cond_0
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 10175
    return-void
.end method

.method private startDrag()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 10002
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 10003
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDrag mCurrentScrollingLayerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTouchMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10007
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 10009
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 10010
    invoke-direct {p0, v3}, Landroid/webkit/WebViewClassic;->nativeSetIsScrolling(Z)V

    .line 10012
    iget v0, p0, Landroid/webkit/WebViewClassic;->mHorizontalScrollBarMode:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Landroid/webkit/WebViewClassic;->mVerticalScrollBarMode:I

    if-eq v0, v3, :cond_2

    .line 10014
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->invokeZoomPicker()V

    .line 10016
    :cond_2
    return-void
.end method

.method private startPrivateBrowsing()V
    .locals 2

    .prologue
    .line 3763
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettingsClassic;->setPrivateBrowsingEnabled(Z)V

    .line 3764
    return-void
.end method

.method private startScrollingLayer(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8600
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_1

    .line 8610
    :cond_0
    :goto_0
    return-void

    .line 8603
    :cond_1
    float-to-int v0, p1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v2

    .line 8604
    .local v2, contentX:I
    float-to-int v0, p2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v3

    .line 8605
    .local v3, contentY:I
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerBounds:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic;->nativeScrollableLayer(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    .line 8607
    iget v0, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    if-eqz v0, :cond_0

    .line 8608
    const/16 v0, 0x9

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    goto :goto_0
.end method

.method private startSelectActionMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7167
    new-instance v0, Landroid/webkit/SelectActionModeCallback;

    invoke-direct {v0}, Landroid/webkit/SelectActionModeCallback;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    .line 7168
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/webkit/SelectActionModeCallback;->setTextSelected(Z)V

    .line 7169
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v0, p0}, Landroid/webkit/SelectActionModeCallback;->setWebView(Landroid/webkit/WebViewClassic;)V

    .line 7170
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7173
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 7177
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 7168
    goto :goto_0

    .line 7176
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->performHapticFeedback(I)Z

    move v2, v1

    .line 7177
    goto :goto_1
.end method

.method private startSelectingText()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6024
    iget v3, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget v3, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget v3, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    :cond_0
    move v0, v2

    .line 6027
    .local v0, isDragMode:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 6028
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebViewClassic;->resetCaretTimer(J)V

    .line 6035
    :goto_1
    return-void

    .end local v0           #isDragMode:Z
    :cond_1
    move v0, v1

    .line 6024
    goto :goto_0

    .line 6031
    .restart local v0       #isDragMode:Z
    :cond_2
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    .line 6032
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mShowTextSelectionExtra:Z

    .line 6033
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v2, [I

    const/16 v4, 0xff

    aput v4, v2, v1

    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 6034
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mHandleAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1
.end method

.method private startTouch(FFJ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 9994
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    iput v0, p0, Landroid/webkit/WebViewClassic;->mStartTouchX:I

    .line 9995
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    iput v0, p0, Landroid/webkit/WebViewClassic;->mStartTouchY:I

    .line 9996
    iput-wide p3, p0, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    .line 9997
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 9998
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mSnapScrollMode:I

    .line 9999
    return-void
.end method

.method private stopTouch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10094
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 10097
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 10098
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 10099
    invoke-direct {p0, v2}, Landroid/webkit/WebViewClassic;->nativeSetIsScrolling(Z)V

    .line 10100
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mFirstScaleOccured:Z

    .line 10102
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    if-eqz v0, :cond_2

    .line 10104
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewInputDispatcher;->setClickOnSelectHandleCenter(Z)V

    .line 10109
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 10110
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 10111
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10115
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_4

    .line 10116
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {v0}, Landroid/webkit/OverScrollGlow;->releaseAll()V

    .line 10119
    :cond_4
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_6

    .line 10120
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    .line 10121
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 10122
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v0, :cond_5

    .line 10123
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->resetCaretTimer()V

    .line 10125
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 10127
    :cond_6
    return-void
.end method

.method private syncSelectionCursors()V
    .locals 4

    .prologue
    .line 7272
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftTextQuad:Landroid/webkit/QuadF;

    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->nativeGetHandleLayerId(IILandroid/graphics/Point;Landroid/webkit/QuadF;)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeftLayerId:I

    .line 7275
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightTextQuad:Landroid/webkit/QuadF;

    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->nativeGetHandleLayerId(IILandroid/graphics/Point;Landroid/webkit/QuadF;)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRightLayerId:I

    .line 7278
    return-void
.end method

.method private textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z
    .locals 19
    .parameter "ev"
    .parameter "touchEvent"
    .parameter "contentX"
    .parameter "contentY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 13232
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v3

    if-nez v3, :cond_1

    .line 13233
    const/4 v15, 0x0

    .line 13395
    :cond_0
    :goto_0
    return v15

    .line 13234
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mWebSelectionOn:Z

    if-nez v3, :cond_2

    .line 13235
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v3}, Landroid/webkit/WebMagnifier;->hide()V

    .line 13236
    const/4 v15, 0x0

    goto :goto_0

    .line 13242
    :cond_2
    const/4 v15, 0x0

    .line 13243
    .local v15, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    .line 13245
    .local v10, eventTime:J
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 13248
    :pswitch_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mIsPressingHandle:Z

    .line 13249
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v3, v0, v1, v4}, Landroid/webkit/WebTextSelectionControls;->getHandleType(IILandroid/webkit/WebViewCore$SelectionCopiedData;)I

    move-result v14

    .line 13250
    .local v14, nHandle:I
    if-eqz v14, :cond_0

    .line 13251
    move-object/from16 v0, p0

    iput v14, v0, Landroid/webkit/WebViewClassic;->mController:I

    .line 13252
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mIsPressingHandle:Z

    .line 13253
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x2c6

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 13254
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mActionMove:Z

    .line 13255
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    .line 13256
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    .line 13257
    move/from16 v0, p5

    float-to-int v3, v0

    move/from16 v0, p6

    float-to-int v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Landroid/webkit/WebViewClassic;->showMagnifier(IIZ)V

    .line 13258
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2, v10, v11}, Landroid/webkit/WebViewClassic;->startTouch(FFJ)V

    .line 13259
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 13260
    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 13261
    const/4 v15, 0x1

    .line 13262
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mPreviousTouchX:I

    .line 13263
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mPreviousTouchY:I

    .line 13264
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/ZoomManager;->setEdgeZoom(Z)V

    goto/16 :goto_0

    .line 13271
    .end local v14           #nHandle:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mIsPressingHandle:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mLongPress:Z

    if-eqz v3, :cond_0

    .line 13275
    :cond_4
    if-ltz p3, :cond_5

    if-gez p4, :cond_6

    .line 13276
    :cond_5
    const-string/jumbo v3, "webview"

    const-string v4, " textSelectionTouchEvent negative point: validate for Extend selection "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13277
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 13279
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mLongPress:Z

    if-eqz v3, :cond_a

    .line 13283
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x2c8

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 13284
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v8

    move-object/from16 v3, p0

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebViewClassic;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v9

    .line 13285
    .local v9, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x2c8

    invoke-virtual {v3, v4, v9}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 13332
    .end local v9           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_8

    .line 13334
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2, v10, v11}, Landroid/webkit/WebViewClassic;->startTouch(FFJ)V

    .line 13336
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 13337
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 13339
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getEnableMagnifier()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 13340
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget v3, v3, Landroid/webkit/WebMagnifier;->mMode:I

    if-nez v3, :cond_e

    .line 13341
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    move/from16 v0, p5

    float-to-int v4, v0

    move/from16 v0, p6

    float-to-int v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebMagnifier;->move(II)V

    .line 13350
    :cond_9
    :goto_2
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 13287
    :cond_a
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mRequestNewSelection:I

    if-eq v3, v4, :cond_7

    .line 13290
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_7

    .line 13292
    const/4 v13, 0x0

    .line 13293
    .local v13, moveForward:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mController:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/webkit/WebTextSelectionControls;->getHandleExtendPoint(IIILandroid/webkit/WebViewCore$SelectionCopiedData;)Landroid/graphics/Point;

    move-result-object v18

    .line 13294
    .local v18, value:Landroid/graphics/Point;
    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/webkit/WebViewClassic;->isTextSelectionControlerForward(II)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_b
    const/4 v13, 0x1

    .line 13296
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-boolean v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->isMulticol:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-nez v3, :cond_c

    .line 13298
    const/4 v13, 0x1

    .line 13301
    :cond_c
    if-eqz v13, :cond_7

    .line 13303
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebViewClassic;->handleTextSelectionAutoScroll(II)Z

    .line 13304
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mPreviousTouchX:I

    .line 13305
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewClassic;->mPreviousTouchY:I

    .line 13307
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/webkit/WebViewClassic;->mSmartSelection:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/webkit/WebViewClassic;->mActionMove:Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebViewClassic;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v9

    .line 13310
    .restart local v9       #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    .line 13311
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mActionMove:Z

    if-nez v3, :cond_d

    .line 13312
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x2c9

    invoke-virtual {v3, v4, v9}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 13319
    :goto_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebViewClassic;->mActionMove:Z

    goto/16 :goto_1

    .line 13315
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x2c6

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 13316
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x2c6

    invoke-virtual {v3, v4, v9}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_3

    .line 13342
    .end local v9           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    .end local v13           #moveForward:Z
    .end local v18           #value:Landroid/graphics/Point;
    :cond_e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget v4, v4, Landroid/webkit/WebMagnifier;->mMode:I

    if-ne v3, v4, :cond_f

    .line 13343
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 13344
    .local v17, rtStart:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    move/from16 v0, p5

    float-to-int v4, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebMagnifier;->move(II)V

    goto/16 :goto_2

    .line 13345
    .end local v17           #rtStart:Landroid/graphics/Rect;
    :cond_f
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget v4, v4, Landroid/webkit/WebMagnifier;->mMode:I

    if-ne v3, v4, :cond_9

    .line 13346
    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 13347
    .local v16, rtEnd:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    move/from16 v0, p5

    float-to-int v4, v0

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebMagnifier;->move(II)V

    goto/16 :goto_2

    .line 13359
    .end local v16           #rtEnd:Landroid/graphics/Rect;
    :pswitch_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_13

    :cond_10
    const/4 v12, 0x1

    .line 13363
    .local v12, isDragMode:Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mIsPressingHandle:Z

    if-nez v3, :cond_14

    if-nez v12, :cond_14

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mRequestNewSelection:I

    if-eq v3, v4, :cond_14

    .line 13364
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_11

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mWebSelectionOn:Z

    if-nez v3, :cond_12

    .line 13365
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 13366
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mPreviousTouchX:I

    .line 13367
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic;->mPreviousTouchY:I

    .line 13379
    :cond_12
    :goto_5
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->resetTextSelectionTouchHandleFlag()V

    goto/16 :goto_0

    .line 13359
    .end local v12           #isDragMode:Z
    :cond_13
    const/4 v12, 0x0

    goto :goto_4

    .line 13372
    .restart local v12       #isDragMode:Z
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mIsPressingHandle:Z

    if-nez v3, :cond_15

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mRequestNewSelection:I

    if-ne v3, v4, :cond_12

    .line 13373
    :cond_15
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->stopTouch()V

    .line 13374
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 13375
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/ZoomManager;->setEdgeZoom(Z)V

    .line 13376
    const/4 v15, 0x1

    goto :goto_5

    .line 13383
    .end local v12           #isDragMode:Z
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebViewClassic;->mIsPressingHandle:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_16

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebViewClassic;->mRequestNewSelection:I

    if-ne v3, v4, :cond_0

    .line 13387
    :cond_16
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->resetTextSelectionTouchHandleFlag()V

    .line 13388
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->cancelTouch()V

    .line 13389
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 13390
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/ZoomManager;->setEdgeZoom(Z)V

    .line 13391
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 13245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private touchedOnTextSelectionArea(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 9075
    const/4 v3, 0x0

    .line 9076
    .local v3, textSelectionTouch:Z
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mWebSelectionOn:Z

    if-eqz v4, :cond_0

    .line 9077
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 9078
    .local v0, contentX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 9079
    .local v1, contentY:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 9080
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9081
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 9082
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    .line 9083
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    invoke-virtual {v4, v0, v1, v5}, Landroid/webkit/WebTextSelectionControls;->getHandleType(IILandroid/webkit/WebViewCore$SelectionCopiedData;)I

    move-result v2

    .line 9084
    .local v2, nHandle:I
    if-eqz v2, :cond_0

    .line 9088
    const/4 v3, 0x1

    .line 9091
    .end local v0           #contentX:I
    .end local v1           #contentY:I
    .end local v2           #nHandle:I
    :cond_0
    return v3
.end method

.method private updateColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 6255
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 6256
    return-void
.end method

.method private updateHwAccelerated()V
    .locals 4

    .prologue
    .line 12861
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_1

    .line 12875
    :cond_0
    :goto_0
    return-void

    .line 12864
    :cond_1
    const/4 v0, 0x0

    .line 12865
    .local v0, hwAccelerated:Z
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getLayerType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 12867
    const/4 v0, 0x1

    .line 12871
    :cond_2
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-static {v2, v0}, Landroid/webkit/WebViewClassic;->nativeSetHwAccelerated(IZ)I

    move-result v1

    .line 12872
    .local v1, result:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 12873
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->contentDraw()V

    goto :goto_0
.end method

.method private updateImageSelectedRect()V
    .locals 2

    .prologue
    .line 11000
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    instance-of v1, v1, Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_0

    .line 11001
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    check-cast v1, Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getSelectedImageRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 11002
    .local v0, imageRect:Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 11003
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    check-cast v1, Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, v0}, Landroid/webkit/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    .line 11005
    .end local v0           #imageRect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private updateSelectionInfo(Landroid/webkit/WebViewCore$SelectionCopiedData;)V
    .locals 8
    .parameter "copyInfo"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 13061
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 13062
    .local v0, prevCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 13064
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v1, :cond_f

    .line 13068
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mWebSelectionOn:Z

    if-nez v1, :cond_3

    .line 13069
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mWebSelectionOn:Z

    .line 13070
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    invoke-virtual {v1, v4}, Landroid/webkit/WebViewInputDispatcher;->setWebKitWantsTouchEvents(Z)V

    .line 13073
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackUser:Landroid/webkit/SelectActionModeCallbackSec;

    if-eqz v1, :cond_1

    .line 13074
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackUser:Landroid/webkit/SelectActionModeCallbackSec;

    iput-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    .line 13078
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    invoke-virtual {v1, p0}, Landroid/webkit/SelectActionModeCallbackSec;->setWebViewClassic(Landroid/webkit/WebViewClassic;)V

    .line 13079
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    if-nez v1, :cond_2

    .line 13081
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 13154
    :goto_1
    return-void

    .line 13076
    :cond_1
    new-instance v1, Landroid/webkit/SelectActionModeCallbackSec;

    invoke-direct {v1}, Landroid/webkit/SelectActionModeCallbackSec;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    goto :goto_0

    .line 13084
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-nez v1, :cond_4

    .line 13085
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->clearSelection()V

    goto :goto_1

    .line 13088
    :cond_3
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mLongPress:Z

    if-eqz v1, :cond_4

    .line 13094
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    iget-boolean v2, v2, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eq v1, v2, :cond_4

    .line 13095
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v2

    iput-boolean v2, v1, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    .line 13096
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    invoke-virtual {v1, v3}, Landroid/webkit/SelectActionModeCallbackSec;->finish(Z)V

    .line 13097
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 13102
    :cond_4
    iget v1, p0, Landroid/webkit/WebViewClassic;->mRequestNewSelection:I

    if-ne v3, v1, :cond_6

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-ne v1, v3, :cond_6

    .line 13103
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mLongPress:Z

    if-eqz v1, :cond_5

    .line 13104
    iget v1, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    iget v2, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    invoke-direct {p0, v1, v2, v4}, Landroid/webkit/WebViewClassic;->showMagnifier(IIZ)V

    .line 13108
    :cond_5
    iput v5, p0, Landroid/webkit/WebViewClassic;->mRequestNewSelection:I

    .line 13111
    :cond_6
    if-eqz v0, :cond_9

    iget v1, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v2, v2, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-eq v1, v2, :cond_9

    .line 13115
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsPressingHandle:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-ne v1, v3, :cond_d

    .line 13118
    :cond_7
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    .line 13120
    :cond_8
    iput v3, p0, Landroid/webkit/WebViewClassic;->mController:I

    .line 13138
    :cond_9
    :goto_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    if-eqz v1, :cond_a

    .line 13140
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 13142
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 13143
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mWebSelectionOn:Z

    .line 13153
    :cond_a
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_1

    .line 13121
    :cond_b
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    if-eq v1, v7, :cond_c

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    if-ne v1, v6, :cond_9

    .line 13123
    :cond_c
    iput v5, p0, Landroid/webkit/WebViewClassic;->mController:I

    goto :goto_2

    .line 13125
    :cond_d
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-ne v1, v6, :cond_9

    .line 13126
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v1}, Landroid/webkit/WebMagnifier;->hide()V

    .line 13128
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    if-ne v1, v3, :cond_e

    .line 13129
    const/4 v1, 0x6

    iput v1, p0, Landroid/webkit/WebViewClassic;->mController:I

    goto :goto_2

    .line 13131
    :cond_e
    iput v7, p0, Landroid/webkit/WebViewClassic;->mController:I

    goto :goto_2

    .line 13150
    :cond_f
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->clearSelection()V

    goto/16 :goto_1
.end method

.method private updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 7
    .parameter "nodePointer"
    .parameter "textGeneration"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 12144
    iget v4, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    if-ne p2, v4, :cond_0

    .line 12145
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/webkit/WebViewClassic;->mFieldPointer:I

    if-ne v4, p1, :cond_0

    .line 12146
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    iget v5, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v6, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 12149
    :cond_0
    iget v4, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget v5, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectTextPtr:I

    invoke-static {v4, v5}, Landroid/webkit/WebViewClassic;->nativeSetTextSelection(II)V

    .line 12151
    iget v4, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectionReason:I

    if-eq v4, v2, :cond_1

    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v4, :cond_2

    iget v4, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v5, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    if-eq v4, v5, :cond_2

    iget v4, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectionReason:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 12154
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 12155
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mShowTextSelectionExtra:Z

    .line 12156
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 12194
    :goto_0
    return-void

    .line 12160
    :cond_2
    iget v4, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectTextPtr:I

    if-eqz v4, :cond_b

    iget v4, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v5, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    if-ne v4, v5, :cond_3

    iget v4, p0, Landroid/webkit/WebViewClassic;->mFieldPointer:I

    if-ne v4, p1, :cond_b

    iget v4, p0, Landroid/webkit/WebViewClassic;->mFieldPointer:I

    if-eqz v4, :cond_b

    .line 12163
    :cond_3
    iget v4, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v5, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    if-ne v4, v5, :cond_6

    :goto_1
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    .line 12164
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 12168
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 12193
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto :goto_0

    :cond_6
    move v2, v3

    .line 12163
    goto :goto_1

    .line 12170
    :cond_7
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v2, :cond_9

    .line 12171
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->setupWebkitSelect()Z

    .line 12177
    :goto_3
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v2, :cond_5

    .line 12179
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v4, "clipboard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 12181
    .local v1, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 12182
    .local v0, clipData:Landroid/content/ClipData;
    if-eqz v0, :cond_8

    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mLongPress:Z

    if-eqz v2, :cond_8

    .line 12183
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->showPasteWindow()V

    .line 12184
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mLongPress:Z

    .line 12187
    :cond_8
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->resetCaretTimer()V

    goto :goto_2

    .line 12172
    .end local v0           #clipData:Landroid/content/ClipData;
    .end local v1           #cm:Landroid/content/ClipboardManager;
    :cond_9
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectionStarted:Z

    if-nez v2, :cond_a

    .line 12173
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    goto :goto_3

    .line 12175
    :cond_a
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->adjustSelectionCursors()V

    goto :goto_3

    .line 12191
    :cond_b
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_2
.end method

.method private updateTextSelectionStartEndFromMessage(IILandroid/webkit/WebViewCore$TextInputData;)V
    .locals 4
    .parameter "nodePointer"
    .parameter "textGeneration"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 12115
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    if-ne p2, v0, :cond_1

    .line 12116
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/webkit/WebViewClassic;->mFieldPointer:I

    if-ne v0, p1, :cond_1

    .line 12119
    iget v0, p3, Landroid/webkit/WebViewCore$TextInputData;->mStart:I

    iget v1, p3, Landroid/webkit/WebViewCore$TextInputData;->mEnd:I

    if-ne v0, v1, :cond_2

    .line 12120
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBTWebSelectionOn:Z

    .line 12127
    :goto_0
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectAllViaBT:Z

    .line 12128
    iget-object v0, p3, Landroid/webkit/WebViewCore$TextInputData;->mText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 12129
    const-string v0, ""

    iput-object v0, p3, Landroid/webkit/WebViewCore$TextInputData;->mText:Ljava/lang/String;

    .line 12132
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    iget-object v1, p3, Landroid/webkit/WebViewCore$TextInputData;->mText:Ljava/lang/String;

    iget v2, p3, Landroid/webkit/WebViewCore$TextInputData;->mStart:I

    iget v3, p3, Landroid/webkit/WebViewCore$TextInputData;->mEnd:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setTextAndSelectionIfNeeded(Ljava/lang/CharSequence;II)V

    .line 12135
    :cond_1
    return-void

    .line 12123
    :cond_2
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mBTWebSelectionOn:Z

    goto :goto_0
.end method

.method private updateWebkitSelection()V
    .locals 9

    .prologue
    const/16 v8, 0xd5

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v2, -0x1

    .line 7333
    const/4 v0, 0x0

    .line 7334
    .local v0, handles:[I
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v3, :cond_0

    .line 7335
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mSelectCursorRight:Landroid/graphics/Point;

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mSelectCursorLeft:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 7337
    :cond_0
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v3, :cond_3

    .line 7338
    const/4 v3, 0x4

    new-array v0, v3, [I

    .line 7339
    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 7341
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_2

    move v1, v2

    .line 7342
    .local v1, lesserBottom:I
    :goto_0
    aget v3, v0, v6

    aget v4, v0, v7

    if-ne v3, v4, :cond_1

    if-eq v1, v2, :cond_1

    .line 7343
    add-int/lit8 v2, v1, -0x5

    aput v2, v0, v7

    aput v2, v0, v6

    .line 7349
    .end local v1           #lesserBottom:I
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2, v8}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 7350
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2, v8, v0}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 7351
    return-void

    .line 7341
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int v1, v3, v4

    goto :goto_0

    .line 7347
    :cond_3
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->nativeSetTextSelection(II)V

    goto :goto_1
.end method

.method private viewInvalidate()V
    .locals 0

    .prologue
    .line 12689
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 12690
    return-void
.end method

.method private viewInvalidate(IIII)V
    .locals 8
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 4152
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    .line 4153
    .local v1, scale:F
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v0

    .line 4154
    .local v0, dy:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    int-to-float v3, p1

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v4, p2

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v4, v0

    int-to-float v5, p3

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    int-to-float v6, p4

    mul-float/2addr v6, v1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->invalidate(IIII)V

    .line 4158
    return-void
.end method

.method private viewInvalidateDelayed(JIIII)V
    .locals 9
    .parameter "delay"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 4163
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v8

    .line 4164
    .local v8, scale:F
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v7

    .line 4165
    .local v7, dy:I
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    int-to-float v1, p3

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v3, v1

    int-to-float v1, p4

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int v4, v1, v7

    int-to-float v1, p5

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v5, v1

    int-to-float v1, p6

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int v6, v1, v7

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    .line 4170
    return-void
.end method

.method private viewToContentVisibleRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "contentRect"
    .parameter "viewRect"

    .prologue
    .line 8224
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentXf(I)F

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 8229
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentYf(I)F

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScaleY()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 8231
    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentXf(I)F

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 8232
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentYf(I)F

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScaleY()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 8233
    return-void
.end method


# virtual methods
.method public IsWordMisspelledAtPosition(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 11017
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v4, :cond_0

    .line 11042
    :goto_0
    return v3

    .line 11020
    :cond_0
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->misspelled:Z

    .line 11021
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->spellingOfWord:Landroid/graphics/Point;

    monitor-enter v4

    .line 11024
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 11025
    .local v0, contentX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    .line 11031
    .local v1, contentY:I
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0xf1

    invoke-virtual {v3, v5, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11034
    :try_start_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->spellingOfWord:Landroid/graphics/Point;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 11038
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11042
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->misspelled:Z

    goto :goto_0

    .line 11035
    :catch_0
    move-exception v2

    .line 11036
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 11038
    .end local v0           #contentX:I
    .end local v1           #contentY:I
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "object"
    .parameter "name"

    .prologue
    .line 5429
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/webkit/WebViewClassic;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 5430
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 3
    .parameter "object"
    .parameter "name"
    .parameter "requireAnnotation"

    .prologue
    .line 5437
    if-nez p1, :cond_0

    .line 5445
    :goto_0
    return-void

    .line 5440
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    .line 5441
    .local v0, arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    .line 5442
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    .line 5443
    iput-boolean p3, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mRequireAnnotation:Z

    .line 5444
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8a

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method adjustDefaultZoomDensity(I)V
    .locals 3
    .parameter "zoomDensity"

    .prologue
    .line 2733
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 2735
    .local v0, density:F
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->updateDefaultZoomDensity(F)V

    .line 2736
    return-void
.end method

.method public applyreadability(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 13581
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 13582
    return-void
.end method

.method autoFillForm(I)V
    .locals 3
    .parameter "autoFillQueryId"

    .prologue
    .line 12835
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x94

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 12837
    return-void
.end method

.method blockWebkitViewMessages()Z
    .locals 3

    .prologue
    .line 3447
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockWebkitViewMessage= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    return v0
.end method

.method calcOurContentVisibleRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 4278
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 4279
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 4284
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 4285
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 4286
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 4287
    return-void
.end method

.method public calcOurVisibleRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 4269
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 4270
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 4271
    return-void
.end method

.method public canGoBack()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3676
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 3677
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 3678
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3679
    monitor-exit v0

    .line 3681
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    .line 3683
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canGoBackOrForward(I)Z
    .locals 4
    .parameter "steps"

    .prologue
    const/4 v2, 0x0

    .line 3722
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 3723
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 3724
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3725
    monitor-exit v0

    .line 3728
    :goto_0
    return v2

    .line 3727
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v3

    add-int v1, v3, p1

    .line 3728
    .local v1, newIndex:I
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    .line 3730
    .end local v1           #newIndex:I
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public canGoForward()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3699
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 3700
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 3701
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3702
    monitor-exit v0

    .line 3704
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    .line 3706
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canShowDialog()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 7191
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "clipboardEx"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 7192
    .local v0, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/sec/clipboard/ClipboardExManager;->hasDataOf(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 7194
    .local v1, doesClipboardHasData:Z
    :goto_0
    if-ne v1, v2, :cond_1

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    if-nez v4, :cond_1

    .line 7197
    :goto_1
    return v2

    .end local v1           #doesClipboardHasData:Z
    :cond_0
    move v1, v3

    .line 7192
    goto :goto_0

    .restart local v1       #doesClipboardHasData:Z
    :cond_1
    move v2, v3

    .line 7197
    goto :goto_1
.end method

.method public canZoomIn()Z
    .locals 1

    .prologue
    .line 10626
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1

    .prologue
    .line 10634
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 2

    .prologue
    .line 3839
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 3842
    :goto_0
    return-object v0

    .line 3840
    :cond_0
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 3841
    .local v0, result:Landroid/graphics/Picture;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->nativeCopyBaseContentToPicture(Landroid/graphics/Picture;)V

    goto :goto_0
.end method

.method centerFitRect(Landroid/graphics/Rect;)V
    .locals 27
    .parameter "rect"

    .prologue
    .line 10679
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 10680
    .local v17, rectWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 10681
    .local v12, rectHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v20

    .line 10682
    .local v20, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v19

    .line 10683
    .local v19, viewHeight:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v12

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 10685
    .local v18, scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v18

    .line 10686
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v23

    if-nez v23, :cond_0

    .line 10687
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    div-int/lit8 v24, v17, 0x2

    add-int v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v23

    div-int/lit8 v24, v20, 0x2

    sub-int v23, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    div-int/lit8 v25, v12, 0x2

    add-int v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v24

    div-int/lit8 v25, v19, 0x2

    sub-int v24, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    .line 10722
    :goto_0
    return-void

    .line 10691
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v5

    .line 10692
    .local v5, actualScale:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v10, v23, v24

    .line 10693
    .local v10, oldScreenX:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v15, v23, v18

    .line 10694
    .local v15, rectViewX:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v14, v23, v18

    .line 10695
    .local v14, rectViewWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v7, v23, v18

    .line 10696
    .local v7, newMaxWidth:F
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v14

    const/high16 v24, 0x4000

    div-float v8, v23, v24

    .line 10698
    .local v8, newScreenX:F
    cmpl-float v23, v8, v15

    if-lez v23, :cond_3

    .line 10699
    move v8, v15

    .line 10703
    :cond_1
    :goto_1
    mul-float v23, v10, v18

    mul-float v24, v8, v5

    sub-float v23, v23, v24

    sub-float v24, v18, v5

    div-float v21, v23, v24

    .line 10705
    .local v21, zoomCenterX:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v11, v23, v24

    .line 10707
    .local v11, oldScreenY:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v16, v23, v24

    .line 10708
    .local v16, rectViewY:F
    int-to-float v0, v12

    move/from16 v23, v0

    mul-float v13, v23, v18

    .line 10709
    .local v13, rectViewHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v6, v23, v24

    .line 10710
    .local v6, newMaxHeight:F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v13

    const/high16 v24, 0x4000

    div-float v9, v23, v24

    .line 10712
    .local v9, newScreenY:F
    cmpl-float v23, v9, v16

    if-lez v23, :cond_4

    .line 10713
    move/from16 v9, v16

    .line 10717
    :cond_2
    :goto_2
    mul-float v23, v11, v18

    mul-float v24, v9, v5

    sub-float v23, v23, v24

    sub-float v24, v18, v5

    div-float v22, v23, v24

    .line 10719
    .local v22, zoomCenterY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 10720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    goto/16 :goto_0

    .line 10700
    .end local v6           #newMaxHeight:F
    .end local v9           #newScreenY:F
    .end local v11           #oldScreenY:F
    .end local v13           #rectViewHeight:F
    .end local v16           #rectViewY:F
    .end local v21           #zoomCenterX:F
    .end local v22           #zoomCenterY:F
    :cond_3
    sub-float v23, v7, v15

    sub-float v23, v23, v14

    cmpl-float v23, v8, v23

    if-lez v23, :cond_1

    .line 10701
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v24, v7, v15

    sub-float v8, v23, v24

    goto/16 :goto_1

    .line 10714
    .restart local v6       #newMaxHeight:F
    .restart local v9       #newScreenY:F
    .restart local v11       #oldScreenY:F
    .restart local v13       #rectViewHeight:F
    .restart local v16       #rectViewY:F
    .restart local v21       #zoomCenterX:F
    :cond_4
    sub-float v23, v6, v16

    sub-float v23, v23, v13

    cmpl-float v23, v9, v23

    if-lez v23, :cond_2

    .line 10715
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v24, v6, v16

    sub-float v9, v23, v24

    goto :goto_2
.end method

.method public clearActionModes()V
    .locals 1

    .prologue
    .line 3021
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    if-eqz v0, :cond_0

    .line 3022
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/SelectActionModeCallback;->finish()V

    .line 3025
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    if-eqz v0, :cond_1

    .line 3026
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    invoke-virtual {v0}, Landroid/webkit/SelectActionModeCallbackSec;->finish()V

    .line 3029
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    if-eqz v0, :cond_2

    .line 3030
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/FindActionModeCallback;->finish()V

    .line 3032
    :cond_2
    return-void
.end method

.method public clearCache(Z)V
    .locals 4
    .parameter "includeDiskFiles"

    .prologue
    const/4 v1, 0x0

    .line 4699
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x6f

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4701
    return-void

    :cond_0
    move v0, v1

    .line 4699
    goto :goto_0
.end method

.method public clearComposingSelection()V
    .locals 4

    .prologue
    .line 6773
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x219

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 6774
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 4708
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    if-eqz v0, :cond_0

    .line 4709
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    invoke-virtual {v0}, Landroid/webkit/AutoCompletePopup;->clearAdapter()V

    .line 4711
    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 2

    .prologue
    .line 4718
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->setClearPending()V

    .line 4719
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4720
    return-void
.end method

.method public clearMatches()V
    .locals 3

    .prologue
    const/16 v2, 0xdd

    .line 4904
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_0

    .line 4908
    :goto_0
    return-void

    .line 4906
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 4907
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public clearSelection()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 7922
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mWebSelectionOn:Z

    if-eqz v0, :cond_4

    .line 7927
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mWebSelectionOn:Z

    .line 7929
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v8, v0, :cond_0

    .line 7930
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 7935
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    if-eqz v0, :cond_1

    .line 7936
    const-string/jumbo v0, "webview"

    const-string v2, "clearSelection : mSelectCallbackSec.finish() called ."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7937
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    invoke-virtual {v0}, Landroid/webkit/SelectActionModeCallbackSec;->finish()V

    .line 7939
    :cond_1
    iput-object v9, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    .line 7941
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_2

    .line 7946
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-nez v0, :cond_2

    .line 7947
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 7948
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x2c7

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7954
    .end local v6           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_2
    iput-object v9, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 7955
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 7957
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_3

    .line 7958
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    invoke-virtual {v0, v8}, Landroid/webkit/WebViewInputDispatcher;->setWebKitWantsTouchEvents(Z)V

    .line 7960
    :cond_3
    iput v7, p0, Landroid/webkit/WebViewClassic;->mPreviousTouchX:I

    .line 7961
    iput v7, p0, Landroid/webkit/WebViewClassic;->mPreviousTouchY:I

    .line 7963
    :cond_4
    return-void
.end method

.method public clearSslPreferences()V
    .locals 2

    .prologue
    .line 4727
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4728
    return-void
.end method

.method public clearView()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3827
    iput v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    .line 3828
    iput v0, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    .line 3829
    invoke-virtual {p0, v0, v0, v0}, Landroid/webkit/WebViewClassic;->setBaseLayer(IZZ)V

    .line 3830
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    .line 3831
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3832
    :cond_0
    return-void
.end method

.method public clearViewState()V
    .locals 1

    .prologue
    .line 3440
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    .line 3441
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    .line 3442
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 3443
    return-void
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 4427
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 4

    .prologue
    .line 4411
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealHorizontalScrollRange()I

    move-result v1

    .line 4414
    .local v1, range:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v2

    .line 4415
    .local v2, scrollX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v0

    .line 4416
    .local v0, overscrollRight:I
    if-gez v2, :cond_1

    .line 4417
    sub-int/2addr v1, v2

    .line 4422
    :cond_0
    :goto_0
    return v1

    .line 4418
    :cond_1
    if-le v2, v0, :cond_0

    .line 4419
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method computeMaxScrollX()I
    .locals 2

    .prologue
    .line 10455
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method computeMaxScrollY()I
    .locals 2

    .prologue
    .line 10463
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method computeReadingLevelScale(F)F
    .locals 1
    .parameter "scale"

    .prologue
    .line 3859
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->computeReadingLevelScale(F)F

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    const/16 v2, 0xa

    const/16 v1, 0x9

    const/4 v9, 0x0

    .line 4949
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4950
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    .line 4951
    .local v3, oldX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    .line 4952
    .local v4, oldY:I
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    .line 4953
    .local v10, x:I
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    .line 4954
    .local v11, y:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 4956
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4957
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v5

    .line 4958
    .local v5, rangeX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v6

    .line 4959
    .local v6, rangeY:I
    iget v7, p0, Landroid/webkit/WebViewClassic;->mOverflingDistance:I

    .line 4962
    .local v7, overflingDistance:I
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    if-ne v0, v1, :cond_2

    .line 4963
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 4964
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 4965
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 4966
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 4968
    const/4 v7, 0x0

    .line 4977
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    sub-int v1, v10, v3

    sub-int v2, v11, v4

    move v8, v7

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebView$PrivateAccess;->overScrollBy(IIIIIIIIZ)V

    .line 4981
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_1

    .line 4982
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    move v1, v10

    move v2, v11

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/OverScrollGlow;->absorbGlow(IIIIII)V

    .line 5009
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    .end local v7           #overflingDistance:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_1
    :goto_1
    return-void

    .line 4969
    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v5       #rangeX:I
    .restart local v6       #rangeY:I
    .restart local v7       #overflingDistance:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_2
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    if-ne v0, v2, :cond_0

    .line 4970
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getTextScrollX()I

    move-result v3

    .line 4971
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getTextScrollY()I

    move-result v4

    .line 4972
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollX()I

    move-result v5

    .line 4973
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getMaxTextScrollY()I

    move-result v6

    .line 4974
    const/4 v7, 0x0

    goto :goto_0

    .line 4985
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    .end local v7           #overflingDistance:I
    :cond_3
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    if-ne v0, v1, :cond_6

    .line 4987
    invoke-direct {p0, v10, v11}, Landroid/webkit/WebViewClassic;->scrollLayerTo(II)V

    .line 4994
    :goto_2
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->abortAnimation()V

    .line 4995
    invoke-direct {p0, v9}, Landroid/webkit/WebViewClassic;->nativeSetIsScrolling(Z)V

    .line 4996
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_4

    .line 4997
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 4998
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_4

    .line 4999
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5002
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    if-ne v3, v0, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    if-eq v4, v0, :cond_1

    .line 5003
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_1

    .line 4988
    :cond_6
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    if-ne v0, v2, :cond_7

    .line 4989
    invoke-direct {p0, v10, v11}, Landroid/webkit/WebViewClassic;->scrollEditText(II)V

    goto :goto_2

    .line 4991
    :cond_7
    invoke-virtual {p0, v10}, Landroid/webkit/WebViewClassic;->setScrollXRaw(I)V

    .line 4992
    invoke-virtual {p0, v11}, Landroid/webkit/WebViewClassic;->setScrollYRaw(I)V

    goto :goto_2

    .line 5007
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_8
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0}, Landroid/webkit/WebView$PrivateAccess;->super_computeScroll()V

    goto :goto_1
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 4462
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 4457
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    .prologue
    .line 4441
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v1

    .line 4444
    .local v1, range:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    .line 4445
    .local v2, scrollY:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v0

    .line 4446
    .local v0, overscrollBottom:I
    if-gez v2, :cond_1

    .line 4447
    sub-int/2addr v1, v2

    .line 4452
    :cond_0
    :goto_0
    return v1

    .line 4448
    :cond_1
    if-le v2, v0, :cond_0

    .line 4449
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method protected contentInvalidateAll()V
    .locals 2

    .prologue
    .line 12845
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_0

    .line 12846
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 12848
    :cond_0
    return-void
.end method

.method contentToViewDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 4108
    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .parameter "x"

    .prologue
    .line 4131
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method contentToViewX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 4116
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v0

    return v0
.end method

.method contentToViewY(I)I
    .locals 2
    .parameter "y"

    .prologue
    .line 4124
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 4735
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->clone()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public copySelection()Z
    .locals 8

    .prologue
    const v7, 0x1040492

    const/4 v6, 0x0

    .line 7421
    const/4 v1, 0x0

    .line 7422
    .local v1, copiedSomething:Z
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 7423
    .local v4, selection:Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, ""

    if-eq v4, v5, :cond_1

    .line 7427
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 7431
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 7432
    .local v3, rp:Landroid/sec/enterprise/RestrictionPolicy;
    invoke-virtual {v3, v6}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7433
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 7436
    const/4 v1, 0x1

    .line 7439
    :cond_0
    const/4 v1, 0x1

    .line 7440
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v6, "clipboard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 7442
    .local v0, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v0, v4}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 7443
    const/4 v5, 0x4

    new-array v2, v5, [I

    .line 7444
    .local v2, handles:[I
    invoke-direct {p0, v2}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 7445
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v6, 0xd2

    invoke-virtual {v5, v6, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7447
    .end local v0           #cm:Landroid/content/ClipboardManager;
    .end local v2           #handles:[I
    .end local v3           #rp:Landroid/sec/enterprise/RestrictionPolicy;
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 7448
    return v1
.end method

.method public copySelectionSec()Z
    .locals 1

    .prologue
    .line 7850
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->copySelectionSec(Z)Z

    move-result v0

    return v0
.end method

.method public cutSelection()V
    .locals 3

    .prologue
    .line 7457
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 7458
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 7459
    .local v0, handles:[I
    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 7460
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xd3

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7461
    return-void
.end method

.method public cutSelectionSec()V
    .locals 2

    .prologue
    .line 7472
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_0

    .line 7473
    const-string v0, "Cut"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebViewClassic;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 7476
    :cond_0
    return-void
.end method

.method public debugDump()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12782
    return-void
.end method

.method deleteSelection(II)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 6177
    iget v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    .line 6178
    new-instance v0, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v0, p1, p2, v4}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(III)V

    .line 6180
    .local v0, data:Landroid/webkit/WebViewCore$TextSelectionData;
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x7a

    iget v3, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 6182
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 3091
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3092
    const-string/jumbo v0, "webview"

    const-string v1, "Error: WebView.destroy() called while still attached!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->ensureFunctorDetached()V

    .line 3095
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->destroyJava()V

    .line 3096
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->destroyNative()V

    .line 3097
    return-void
.end method

.method public discardAllTextures()V
    .locals 0

    .prologue
    .line 12852
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeDiscardAllTextures()V

    .line 12853
    return-void
.end method

.method dismissZoomControl()V
    .locals 1

    .prologue
    .line 10606
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 10607
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 8492
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 8529
    :goto_0
    :pswitch_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView$PrivateAccess;->super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_0
    :goto_1
    return v2

    .line 8495
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0xa8

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0xa9

    if-eq v3, v4, :cond_0

    .line 8499
    :try_start_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8500
    :catch_0
    move-exception v0

    .line 8501
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string/jumbo v2, "webview"

    const-string v3, "Exception handling code : it occured OOM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8508
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :pswitch_2
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 8510
    .local v1, location:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8511
    const/4 v2, 0x1

    goto :goto_1

    .line 8514
    :cond_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 8521
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 8492
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 5421
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5422
    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 4933
    if-nez p1, :cond_0

    .line 4937
    :goto_0
    return-void

    .line 4936
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method drawHistory()Z
    .locals 1

    .prologue
    .line 6143
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    return v0
.end method

.method public dumpDisplayTree()V
    .locals 1

    .prologue
    .line 6695
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->nativeDumpDisplayTree(Ljava/lang/String;)V

    .line 6696
    return-void
.end method

.method public dumpDomTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v1, 0x0

    .line 6705
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xaa

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 6706
    return-void

    :cond_0
    move v0, v1

    .line 6705
    goto :goto_0
.end method

.method public dumpRenderTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v1, 0x0

    .line 6715
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xab

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 6716
    return-void

    :cond_0
    move v0, v1

    .line 6715
    goto :goto_0
.end method

.method public emulateShiftHeld()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7374
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_1

    .line 7378
    :cond_0
    :goto_0
    return-void

    .line 7376
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public enableReadersHubStylusPenEvent(Z)V
    .locals 3
    .parameter "enableStylusEvent"

    .prologue
    .line 13887
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableReadersHubStylusPenEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13888
    sput-boolean p1, Landroid/webkit/WebViewClassic;->mEnableReadersHubStylusEvent:Z

    .line 13889
    return-void
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "command"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10951
    iget v3, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v3, :cond_0

    move v3, v4

    .line 10977
    :goto_0
    return v3

    .line 10952
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    instance-of v3, v3, Landroid/webkit/HtmlComposerView;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    check-cast v3, Landroid/webkit/HtmlComposerView;

    iget-boolean v3, v3, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    if-ne v5, v3, :cond_1

    .line 10953
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    check-cast v2, Landroid/webkit/HtmlComposerView;

    .line 10954
    .local v2, htmlComposerView:Landroid/webkit/HtmlComposerView;
    const-string/jumbo v3, "webview"

    const-string v6, "execEditorCommand To hide Cursor handler"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10955
    iput-boolean v5, v2, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 10956
    iget-object v3, v2, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v3}, Ljava/util/TimerTask;->cancel()Z

    .line 10957
    iget-object v3, v2, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 10958
    iput-boolean v4, v2, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    .line 10960
    .end local v2           #htmlComposerView:Landroid/webkit/HtmlComposerView;
    :cond_1
    new-instance v0, Landroid/webkit/WebViewClassic$CmdVal;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewClassic$CmdVal;-><init>(Landroid/webkit/WebViewClassic;)V

    .line 10961
    .local v0, cmdVal:Landroid/webkit/WebViewClassic$CmdVal;
    iput-object p1, v0, Landroid/webkit/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    .line 10962
    iput-object p2, v0, Landroid/webkit/WebViewClassic$CmdVal;->value:Ljava/lang/String;

    .line 10964
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Copy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Cut"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Delete"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DeleteForward"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10966
    :cond_2
    monitor-enter v0

    .line 10967
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v6, 0x203

    invoke-virtual {v3, v6, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10969
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 10975
    :try_start_2
    monitor-exit v0

    :cond_3
    move v3, v5

    .line 10977
    goto :goto_0

    .line 10970
    :catch_0
    move-exception v1

    .line 10971
    .local v1, e:Ljava/lang/InterruptedException;
    const-string/jumbo v3, "webview"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10972
    const-string/jumbo v3, "webview"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10973
    monitor-exit v0

    move v3, v4

    goto/16 :goto_0

    .line 10975
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 5416
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5417
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 5491
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5493
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5495
    return-void

    .line 5493
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1
    .parameter "find"

    .prologue
    .line 4762
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewClassic;->findAllBody(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1
    .parameter "find"

    .prologue
    .line 4766
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewClassic;->findAllBody(Ljava/lang/String;Z)I

    .line 4767
    return-void
.end method

.method public findNext(Z)V
    .locals 4
    .parameter "forward"

    .prologue
    .line 4751
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_1

    .line 4755
    :cond_0
    :goto_0
    return-void

    .line 4752
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    if-eqz v0, :cond_0

    .line 4753
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xde

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    invoke-virtual {v1, v2, v0, v3}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public flingScroll(II)V
    .locals 11
    .parameter "vx"
    .parameter "vy"

    .prologue
    const/4 v5, 0x0

    .line 10481
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v8

    iget v9, p0, Landroid/webkit/WebViewClassic;->mOverflingDistance:I

    iget v10, p0, Landroid/webkit/WebViewClassic;->mOverflingDistance:I

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 10483
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 10484
    return-void
.end method

.method focusCandidateIsEditableText()Z
    .locals 1

    .prologue
    .line 12921
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v0, :cond_0

    .line 12922
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mEditable:Z

    .line 12924
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freeMemory()V
    .locals 2

    .prologue
    .line 4688
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4689
    return-void
.end method

.method getBaseLayer()I
    .locals 1

    .prologue
    .line 5960
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_0

    .line 5961
    const/4 v0, 0x0

    .line 5963
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->nativeGetBaseLayer(I)I

    move-result v0

    goto :goto_0
.end method

.method getBlockLeftEdge(IIF)I
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "readingScale"

    .prologue
    .line 3895
    const/high16 v6, 0x3f80

    div-float v1, v6, p3

    .line 3896
    .local v1, invReadingScale:F
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v4, v6

    .line 3897
    .local v4, readingWidth:I
    const/4 v2, -0x1

    .line 3898
    .local v2, left:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v6, :cond_1

    .line 3899
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v6, v6, Landroid/webkit/WebViewCore$WebKitHitTest;->mEnclosingParentRects:[Landroid/graphics/Rect;

    array-length v3, v6

    .line 3900
    .local v3, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 3901
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v6, v6, Landroid/webkit/WebViewCore$WebKitHitTest;->mEnclosingParentRects:[Landroid/graphics/Rect;

    aget-object v5, v6, v0

    .line 3902
    .local v5, rect:Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget v7, v7, Landroid/webkit/WebViewCore$WebKitHitTest;->mHitTestSlop:I

    if-ge v6, v7, :cond_0

    .line 3900
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3905
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v6, v4, :cond_2

    .line 3915
    .end local v0           #i:I
    .end local v3           #length:I
    .end local v5           #rect:Landroid/graphics/Rect;
    :cond_1
    return v2

    .line 3911
    .restart local v0       #i:I
    .restart local v3       #length:I
    .restart local v5       #rect:Landroid/graphics/Rect;
    :cond_2
    iget v2, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method getBlockRect(IIF)Landroid/graphics/Rect;
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "readingScale"

    .prologue
    .line 3924
    const/high16 v8, 0x3f80

    div-float v2, v8, p3

    .line 3925
    .local v2, invReadingScale:F
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    float-to-int v4, v8

    .line 3926
    .local v4, readingWidth:I
    const/4 v3, -0x1

    .line 3927
    .local v3, left:I
    const/4 v7, -0x1

    .line 3928
    .local v7, top:I
    const/4 v6, -0x1

    .line 3929
    .local v6, right:I
    const/4 v0, -0x1

    .line 3930
    .local v0, bottom:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3931
    .local v1, cBlockRect:Landroid/graphics/Rect;
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v8, :cond_0

    .line 3932
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v8, v8, Landroid/webkit/WebViewCore$WebKitHitTest;->mEnclosingParentRects:[Landroid/graphics/Rect;

    array-length v8, v8

    if-lez v8, :cond_0

    .line 3933
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v8, v8, Landroid/webkit/WebViewCore$WebKitHitTest;->mEnclosingParentRects:[Landroid/graphics/Rect;

    const/4 v9, 0x0

    aget-object v5, v8, v9

    .line 3934
    .local v5, rect:Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 3935
    iget v3, v5, Landroid/graphics/Rect;->left:I

    .line 3936
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 3937
    iget v6, v5, Landroid/graphics/Rect;->right:I

    .line 3938
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 3965
    .end local v5           #rect:Landroid/graphics/Rect;
    :cond_0
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 3966
    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 3967
    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 3968
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3970
    return-object v1
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 2970
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 4583
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 4591
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    return v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2332
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDCHandlerLastHandleType()I
    .locals 1

    .prologue
    .line 10983
    iget v0, p0, Landroid/webkit/WebViewClassic;->mController:I

    return v0
.end method

.method getDefaultZoomScale()F
    .locals 1

    .prologue
    .line 10610
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 4557
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 4558
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 2328
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    return v0
.end method

.method getHistoryPictureWidth()I
    .locals 1

    .prologue
    .line 6147
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 1

    .prologue
    .line 3888
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 3011
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewDatabaseClassic;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageSelectRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 10991
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->imageSelectRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getIsZoomScaleBegin()Z
    .locals 1

    .prologue
    .line 5407
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsZoomScaleBegin:Z

    return v0
.end method

.method public getNativeClass()I
    .locals 1

    .prologue
    .line 10996
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4539
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 4540
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPageBackgroundColor()I
    .locals 1

    .prologue
    .line 4595
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 4596
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->nativeGetBackgroundColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 4575
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getProgress()I

    move-result v0

    return v0
.end method

.method public getReaderArticle()Z
    .locals 1

    .prologue
    .line 13576
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mReaderArticle:Z

    return v0
.end method

.method public getReaderFlag()Z
    .locals 1

    .prologue
    .line 13566
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mReaderFlag:Z

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 3850
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    return v0
.end method

.method getScaledNavSlop()I
    .locals 1

    .prologue
    .line 2747
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method public getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;
    .locals 0

    .prologue
    .line 2307
    return-object p0
.end method

.method getScrollX()I
    .locals 1

    .prologue
    .line 2316
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    return v0
.end method

.method getScrollY()I
    .locals 1

    .prologue
    .line 2320
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getSearchBox()Landroid/webkit/SearchBox;
    .locals 1

    .prologue
    .line 7533
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7534
    :cond_0
    const/4 v0, 0x0

    .line 7536
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v0

    goto :goto_0
.end method

.method getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7543
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_0

    const-string v0, ""

    .line 7544
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeGetSelection()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectionSec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7845
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTextSelected()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    return-object v0
.end method

.method public getSettings()Landroid/webkit/WebSettingsClassic;
    .locals 1

    .prologue
    .line 5466
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextSelected()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7584
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->textPoint:Landroid/graphics/Point;

    monitor-enter v2

    .line 7585
    :try_start_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x2cf

    invoke-virtual {v1, v3}, Landroid/webkit/WebViewCore;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7587
    :try_start_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->textPoint:Landroid/graphics/Point;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7591
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7593
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->textSelected:Ljava/lang/String;

    return-object v1

    .line 7588
    :catch_0
    move-exception v0

    .line 7589
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 7591
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4548
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 4549
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getTitleHeight()I
    .locals 1

    .prologue
    .line 2892
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    instance-of v0, v0, Landroid/webkit/WebViewClassic$TitleBarDelegate;

    if-eqz v0, :cond_0

    .line 2893
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    check-cast v0, Landroid/webkit/WebViewClassic$TitleBarDelegate;

    invoke-interface {v0}, Landroid/webkit/WebViewClassic$TitleBarDelegate;->getTitleHeight()I

    move-result v0

    .line 2895
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4566
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 4567
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4530
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 4531
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;
    .locals 0

    .prologue
    .line 2302
    return-object p0
.end method

.method getViewHeight()I
    .locals 2

    .prologue
    .line 2954
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getViewHeightWithTitle()I
    .locals 2

    .prologue
    .line 2958
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v0

    .line 2959
    .local v0, height:I
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isHorizontalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    if-nez v1, :cond_0

    .line 2960
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v1}, Landroid/webkit/WebView$PrivateAccess;->getHorizontalScrollbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2962
    :cond_0
    return v0
.end method

.method getViewManager()Landroid/webkit/ViewManager;
    .locals 1

    .prologue
    .line 12840
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    return-object v0
.end method

.method getViewWidth()I
    .locals 3

    .prologue
    .line 2874
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    if-eqz v0, :cond_1

    .line 2875
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v0

    .line 2877
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getVisibleTitleHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2906
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v0

    return v0
.end method

.method public getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;
    .locals 1

    .prologue
    .line 5377
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 5360
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebClipboard()Landroid/webkit/WebClipboard;
    .locals 1

    .prologue
    .line 10987
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebClipboard:Landroid/webkit/WebClipboard;

    return-object v0
.end method

.method public getWebFeedLinks()[Landroid/webkit/WebFeedLink;
    .locals 1

    .prologue
    .line 12789
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebFeedLinks()[Landroid/webkit/WebFeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;
    .locals 8

    .prologue
    .line 7613
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    if-nez v4, :cond_1

    .line 7614
    :cond_0
    const/4 v4, 0x0

    .line 7629
    :goto_0
    return-object v4

    .line 7615
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 7619
    .local v3, value:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTextSelected()Ljava/lang/String;

    move-result-object v2

    .line 7621
    .local v2, textSelected:Ljava/lang/String;
    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 7622
    .local v1, startRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 7624
    .local v0, EndRect:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/webkit/WebTextSelectionControls;->SetTextSelectionData(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 7629
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    goto :goto_0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 2297
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 5334
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getWebViewCore()Landroid/webkit/WebViewCore;
    .locals 1

    .prologue
    .line 10928
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 2324
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10598
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10599
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10600
    const/4 v0, 0x0

    .line 10602
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getExternalZoomPicker()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getZoomOverviewScale()F
    .locals 1

    .prologue
    .line 10618
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    return v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 3691
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->goBackOrForwardImpl(I)V

    .line 3692
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 0
    .parameter "steps"

    .prologue
    .line 3738
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->goBackOrForwardImpl(I)V

    .line 3739
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 3714
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->goBackOrForwardImpl(I)V

    .line 3715
    return-void
.end method

.method incrementTextGeneration()V
    .locals 1

    .prologue
    .line 1339
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    return-void
.end method

.method public init(Ljava/util/Map;Z)V
    .locals 10
    .parameter
    .parameter "privateBrowsing"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, javaScriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 1985
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    .line 1988
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/JniUtil;->setContext(Landroid/content/Context;)V

    .line 1990
    new-instance v0, Landroid/webkit/CallbackProxy;

    invoke-direct {v0, v1, p0}, Landroid/webkit/CallbackProxy;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 1991
    new-instance v0, Landroid/webkit/ViewManager;

    invoke-direct {v0, p0}, Landroid/webkit/ViewManager;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    .line 1992
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/L10nUtils;->setApplicationContext(Landroid/content/Context;)V

    .line 1993
    new-instance v0, Landroid/webkit/WebViewCore;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v0, v1, p0, v2, p1}, Landroid/webkit/WebViewCore;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1994
    invoke-static {v1}, Landroid/webkit/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    .line 1995
    new-instance v0, Landroid/widget/OverScroller;

    const/4 v2, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    .line 1996
    new-instance v0, Landroid/webkit/ZoomManager;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p0, v2}, Landroid/webkit/ZoomManager;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/CallbackProxy;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    .line 2001
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->init()V

    .line 2002
    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->setupPackageListener(Landroid/content/Context;)V

    .line 2003
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->setupProxyListener(Landroid/content/Context;)V

    .line 2004
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->setupTrustStorageListener(Landroid/content/Context;)V

    .line 2005
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 2007
    if-eqz p2, :cond_0

    .line 2008
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->startPrivateBrowsing()V

    .line 2011
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$AutoFillData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$AutoFillData;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    .line 2013
    new-instance v0, Landroid/webkit/WebMagnifier;

    invoke-direct {v0, p0}, Landroid/webkit/WebMagnifier;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    .line 2014
    new-instance v0, Landroid/webkit/WebTextSelectionControls;

    invoke-direct {v0, v1, p0}, Landroid/webkit/WebTextSelectionControls;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    .line 2019
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2021
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/String;

    const-string v2, "com.google.android.gm"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2022
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 2023
    .local v8, pkgName:Ljava/lang/String;
    sget v0, Landroid/webkit/DebugFlags;->ENABLE_SAMSUNG_SELECTION:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2024
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettingsClassic;->setAdvancedCopyPasteFeature(Z)V

    .line 2028
    :cond_1
    sget v0, Landroid/webkit/DebugFlags;->ENABLE_DRAG:I

    if-eqz v0, :cond_2

    .line 2029
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-static {}, Landroid/webkit/WebDragHandler;->getInstance()Landroid/webkit/WebDragHandler;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 2032
    :cond_2
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mEditTextScroller:Landroid/widget/Scroller;

    .line 2036
    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->calculateChannelDistance(Landroid/content/Context;)V

    .line 2039
    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->calculateOnewayScrollBoundary(Landroid/content/Context;)V

    .line 2043
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 2044
    .local v7, outValue:Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x10103fd

    invoke-virtual {v0, v2, v7, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2045
    iget v0, v7, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_3

    .line 2046
    iput-boolean v9, p0, Landroid/webkit/WebViewClassic;->mThemeIsDeviceDefault:Z

    .line 2052
    :goto_0
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v9, v0}, Landroid/text/method/QwertyKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 2053
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 2056
    new-instance v0, Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mPasteEvent:Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;

    .line 2059
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mFeatureHoverUI:Z

    .line 2062
    return-void

    .line 2048
    :cond_3
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mThemeIsDeviceDefault:Z

    goto :goto_0
.end method

.method invalidate()V
    .locals 1

    .prologue
    .line 2336
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 2337
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 2

    .prologue
    .line 3875
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3876
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    :goto_0
    return-void

    .line 3879
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 3880
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->invokeZoomPicker()V

    goto :goto_0
.end method

.method public isFullScreenVideoMode()Z
    .locals 2

    .prologue
    .line 12804
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 12805
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->isFullScreenMode()Z

    move-result v0

    .line 12808
    :goto_0
    return v0

    .line 12807
    :cond_0
    const-string/jumbo v0, "webview"

    const-string v1, "isFullScreenVideoMode:  mHTML5VideoViewProxy is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12808
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 4680
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 2

    .prologue
    .line 3758
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    .line 3759
    .local v0, settings:Landroid/webkit/WebSettingsClassic;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->isPrivateBrowsingEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isRectFitOnScreen(Landroid/graphics/Rect;)Z
    .locals 8
    .parameter "rect"

    .prologue
    .line 10658
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 10659
    .local v1, rectWidth:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 10660
    .local v0, rectHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v4

    .line 10661
    .local v4, viewWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v3

    .line 10662
    .local v3, viewHeight:I
    int-to-float v5, v4

    int-to-float v6, v1

    div-float/2addr v5, v6

    int-to-float v6, v3

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 10663
    .local v2, scale:F
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5, v2}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v2

    .line 10664
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5, v2}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    if-lt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    add-int/2addr v6, v4

    if-gt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    if-lt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    add-int/2addr v6, v3

    if-gt v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isSelectionHandleSelected(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 13053
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    invoke-virtual {v0, p1, p2, v1}, Landroid/webkit/WebTextSelectionControls;->getHandleType(IILandroid/webkit/WebViewCore$SelectionCopiedData;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 13054
    const/4 v0, 0x1

    .line 13056
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSelectionInEditField()Z
    .locals 1

    .prologue
    .line 8005
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 8006
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    iget-boolean v0, v0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    goto :goto_0
.end method

.method isUrlBlocked(Ljava/lang/String;)Z
    .locals 13
    .parameter "url"

    .prologue
    .line 13836
    const/4 v9, 0x0

    .line 13837
    .local v9, isCalledFromCallbackProxy:Z
    if-eqz p1, :cond_0

    .line 13838
    const/4 v9, 0x1

    .line 13839
    :cond_0
    if-eqz v9, :cond_1

    .line 13840
    const-string v0, "favicon.ico"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 13841
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-nez v0, :cond_2

    .line 13842
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getFirewallPolicy()Landroid/sec/enterprise/FirewallPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    .line 13844
    :cond_2
    const/4 v10, 0x0

    .line 13845
    .local v10, isUrlBlocked:Z
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-eqz v0, :cond_3

    .line 13846
    if-eqz v9, :cond_5

    .line 13847
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    invoke-virtual {v0, p1}, Landroid/sec/enterprise/FirewallPolicy;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v10

    .line 13851
    :cond_3
    :goto_0
    if-eqz v10, :cond_9

    .line 13852
    if-nez v9, :cond_4

    .line 13853
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mUrl:Ljava/lang/String;

    const-string v1, "favicon.ico"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mUrl:Ljava/lang/String;

    .line 13854
    :cond_4
    const-string v2, ""

    .line 13855
    .local v2, data:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13857
    .local v7, dataBuilder:Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 13858
    .local v12, res:Landroid/content/res/Resources;
    const v0, 0x1100005

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    .line 13859
    .local v8, ins:Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 13861
    .local v6, br:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, line:Ljava/lang/String;
    if-eqz v11, :cond_7

    .line 13862
    if-nez v9, :cond_6

    .line 13863
    const-string v0, "%s"

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 13866
    :goto_2
    const-string v0, "%e"

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const v3, 0x10401fa

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 13868
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 13872
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v8           #ins:Ljava/io/InputStream;
    .end local v11           #line:Ljava/lang/String;
    .end local v12           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 13875
    :goto_3
    if-nez v9, :cond_8

    .line 13876
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mUrl:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    const-string v4, "UTF-8"

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mUrl:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebViewClassic;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13879
    :goto_4
    const/4 v0, 0x1

    .line 13881
    .end local v2           #data:Ljava/lang/String;
    .end local v7           #dataBuilder:Ljava/lang/StringBuilder;
    :goto_5
    return v0

    .line 13849
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/FirewallPolicy;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v10

    goto :goto_0

    .line 13865
    .restart local v2       #data:Ljava/lang/String;
    .restart local v6       #br:Ljava/io/BufferedReader;
    .restart local v7       #dataBuilder:Ljava/lang/StringBuilder;
    .restart local v8       #ins:Ljava/io/InputStream;
    .restart local v11       #line:Ljava/lang/String;
    .restart local v12       #res:Landroid/content/res/Resources;
    :cond_6
    :try_start_1
    const-string v0, "%s"

    invoke-virtual {v11, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 13870
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13871
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 13878
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v8           #ins:Ljava/io/InputStream;
    .end local v11           #line:Ljava/lang/String;
    .end local v12           #res:Landroid/content/res/Resources;
    :cond_8
    const-string/jumbo v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebViewClassic;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 13881
    .end local v2           #data:Ljava/lang/String;
    .end local v7           #dataBuilder:Ljava/lang/StringBuilder;
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 3574
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3575
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 3595
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3596
    invoke-direct {p0, p2, p3, p4}, Landroid/webkit/WebViewClassic;->loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3608
    :goto_0
    return-void

    .line 3599
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 3600
    new-instance v0, Landroid/webkit/WebViewCore$BaseUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$BaseUrlData;-><init>()V

    .line 3601
    .local v0, arg:Landroid/webkit/WebViewCore$BaseUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    .line 3602
    iput-object p2, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    .line 3603
    iput-object p3, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    .line 3604
    iput-object p4, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    .line 3605
    iput-object p5, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    .line 3606
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3607
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 3536
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->loadUrlImpl(Ljava/lang/String;)V

    .line 3537
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3512
    .local p2, additionalHttpHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V

    .line 3513
    return-void
.end method

.method public loadViewState(Ljava/io/InputStream;)V
    .locals 3
    .parameter "stream"

    .prologue
    const/4 v1, 0x1

    .line 3401
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    .line 3402
    new-instance v0, Landroid/webkit/WebViewClassic$8;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewClassic$8;-><init>(Landroid/webkit/WebViewClassic;)V

    new-array v1, v1, [Ljava/io/InputStream;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3433
    return-void
.end method

.method public loadinitialJs(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 13585
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mReaderFlag:Z

    if-eqz v0, :cond_0

    .line 13586
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xda

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 13587
    :cond_0
    return-void
.end method

.method native nativeGetProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method notifyFindDialogDismissed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4915
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    .line 4916
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    .line 4917
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 4926
    :goto_0
    return-void

    .line 4920
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->clearMatches()V

    .line 4921
    invoke-direct {p0, v2}, Landroid/webkit/WebViewClassic;->setFindIsUp(Z)V

    .line 4924
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    .line 4925
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto :goto_0
.end method

.method public notifyWebViewUAProfURL(Ljava/lang/String;)Z
    .locals 2
    .parameter "UAProfURL"

    .prologue
    .line 13826
    const/4 v0, 0x0

    .line 13827
    .local v0, retValue:Z
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13828
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/BrowserFrame;->SetUAProfURL(Ljava/lang/String;)V

    .line 13829
    const/4 v0, 0x1

    .line 13831
    :cond_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 8012
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->setActive(Z)V

    .line 8014
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8015
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/AccessibilityInjector;->addAccessibilityApisIfNecessary()V

    .line 8020
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.readershub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/webkit/WebViewClassic;->mEnableReadersHubStylusEvent:Z

    if-eqz v0, :cond_3

    .line 8023
    :cond_2
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "registerForStylusPenEvent onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8024
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->registerForStylusPenEvent()V

    .line 8027
    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->updateHwAccelerated()V

    .line 8028
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 5882
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    .line 5886
    iget v0, p0, Landroid/webkit/WebViewClassic;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 5887
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5888
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 5890
    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 5892
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mWebSelectionOn:Z

    if-eqz v0, :cond_1

    .line 5893
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectionClearOnRotation:Z

    .line 5898
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/webkit/WebViewClassic;->mOrientation:I

    .line 5901
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v2, v0, :cond_2

    .line 5902
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 5907
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    if-eqz v0, :cond_3

    .line 5908
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    invoke-virtual {v0, v2}, Landroid/webkit/SelectActionModeCallbackSec;->finish(Z)V

    .line 5909
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 5912
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_4

    .line 5913
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5915
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 5917
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getPopUpBrowserState()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->bWebSelectDialogIsUp:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    if-eqz v0, :cond_5

    .line 5918
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    invoke-virtual {v0}, Landroid/webkit/WebSelectDialog;->onWebViewSizeChanged()V

    .line 5919
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->scrollSelectIntoView()V

    .line 5923
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    if-eqz v0, :cond_6

    .line 5924
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    invoke-virtual {v0}, Landroid/webkit/AutoCompletePopup;->clearAdapter()V

    .line 5926
    :cond_6
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .parameter "outAttrs"

    .prologue
    .line 6198
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-nez v0, :cond_0

    .line 6199
    new-instance v0, Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    .line 6200
    new-instance v0, Landroid/webkit/AutoCompletePopup;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/webkit/AutoCompletePopup;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$WebViewInputConnection;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    .line 6202
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setupEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 6203
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 8032
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 8033
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 8034
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->setActive(Z)V

    .line 8036
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8037
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/AccessibilityInjector;->removeAccessibilityApisIfNecessary()V

    .line 8046
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.readershub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/webkit/WebViewClassic;->mEnableReadersHubStylusEvent:Z

    if-eqz v0, :cond_2

    .line 8049
    :cond_1
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "removeForStylusPenEvent onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8050
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->removeForStylusPenEvent()V

    .line 8053
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->updateHwAccelerated()V

    .line 8055
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->ensureFunctorDetached()V

    .line 8056
    return-void

    .line 8041
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 5654
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->inFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5729
    :cond_0
    :goto_0
    return-void

    .line 5659
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_2

    .line 5660
    iget v0, p0, Landroid/webkit/WebViewClassic;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 5667
    :cond_2
    iget v0, p0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    if-nez v0, :cond_3

    .line 5668
    iget v0, p0, Landroid/webkit/WebViewClassic;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 5672
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5673
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->setHardwareAccelerated()V

    .line 5678
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 5679
    .local v9, saveCount:I
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getUseWebViewBackgroundForOverscrollBackground()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5681
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->drawOverScrollBackground(Landroid/graphics/Canvas;)V

    .line 5684
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5685
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->drawContent(Landroid/graphics/Canvas;)V

    .line 5686
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5691
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->signalRepaintDone()V

    .line 5693
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {v0, p1}, Landroid/webkit/OverScrollGlow;->drawEdgeGlows(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5694
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v6

    .line 5695
    .local v6, detector:Landroid/view/ScaleGestureDetector;
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5696
    const-string/jumbo v0, "webview"

    const-string v1, "mOverScrollGlow invalidate skip during zooming"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5701
    .end local v6           #detector:Landroid/view/ScaleGestureDetector;
    :cond_5
    :goto_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    if-eqz v0, :cond_a

    .line 5702
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusTransition:Landroid/webkit/WebViewClassic$FocusTransitionDrawable;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic$FocusTransitionDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 5711
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getNavDump()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5712
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightX:I

    iget v1, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightY:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 5713
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    if-nez v0, :cond_7

    .line 5714
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    .line 5715
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5717
    :cond_7
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightX:I

    iget v1, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightY:I

    iget v2, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightX:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightY:I

    iget v4, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 5721
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightX:I

    iget v1, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightY:I

    iget v2, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightX:I

    iget v3, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightY:I

    iget v4, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mTouchCrossHairColor:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 5675
    .end local v9           #saveCount:I
    :cond_8
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->resumeWebKitDraw()V

    goto/16 :goto_1

    .line 5698
    .restart local v6       #detector:Landroid/view/ScaleGestureDetector;
    .restart local v9       #saveCount:I
    :cond_9
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto :goto_2

    .line 5703
    .end local v6           #detector:Landroid/view/ScaleGestureDetector;
    :cond_a
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->shouldDrawHighlightRect()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5704
    new-instance v7, Landroid/graphics/RegionIterator;

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-direct {v7, v0}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 5705
    .local v7, iter:Landroid/graphics/RegionIterator;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 5706
    .local v8, r:Landroid/graphics/Rect;
    :goto_3
    invoke-virtual {v7, v8}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5707
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHightlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3
.end method

.method public onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 4469
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    if-gez v0, :cond_0

    .line 4470
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v0

    sub-int/2addr p4, v0

    .line 4472
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p2, p3, v0, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4473
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4474
    return-void
.end method

.method onFixedLengthZoomAnimationEnd()V
    .locals 1

    .prologue
    .line 5982
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v0, :cond_0

    .line 5983
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5985
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->onZoomAnimationEnd()V

    .line 5986
    return-void
.end method

.method onFixedLengthZoomAnimationStart()V
    .locals 1

    .prologue
    .line 5977
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5978
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->onZoomAnimationStart()V

    .line 5979
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8160
    if-eqz p1, :cond_1

    .line 8161
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 8162
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->setFocusControllerActive(Z)V

    .line 8168
    :goto_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8169
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    .line 8171
    :cond_0
    return-void

    .line 8164
    :cond_1
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 8165
    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->setFocusControllerActive(Z)V

    .line 8166
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/16 v9, 0x9

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 10184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    .line 10185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 10215
    :cond_0
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v5, p1}, Landroid/webkit/WebView$PrivateAccess;->super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 10190
    :pswitch_0
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v6}, Landroid/webkit/ZoomManager;->getMouseWheelListener()Landroid/webkit/MouseWheelListener;

    move-result-object v2

    .line 10191
    .local v2, listener:Landroid/webkit/MouseWheelListener;
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v6

    and-int/lit16 v6, v6, 0x7000

    if-eqz v6, :cond_1

    .line 10192
    invoke-virtual {v2, p1}, Landroid/webkit/MouseWheelListener;->onDockZoomEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 10196
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    .line 10197
    const/4 v4, 0x0

    .line 10198
    .local v4, vscroll:F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 10203
    .local v1, hscroll:F
    :goto_1
    cmpl-float v6, v1, v7

    if-nez v6, :cond_2

    cmpl-float v6, v4, v7

    if-eqz v6, :cond_0

    .line 10204
    :cond_2
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v6}, Landroid/webkit/WebView$PrivateAccess;->getVerticalScrollFactor()F

    move-result v6

    mul-float/2addr v6, v4

    float-to-int v3, v6

    .line 10206
    .local v3, vdelta:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v6}, Landroid/webkit/WebView$PrivateAccess;->getHorizontalScrollFactor()F

    move-result v6

    mul-float/2addr v6, v1

    float-to-int v0, v6

    .line 10208
    .local v0, hdelta:I
    invoke-direct {p0, v0, v3, v8, v8}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 10200
    .end local v0           #hdelta:I
    .end local v1           #hscroll:F
    .end local v3           #vdelta:I
    .end local v4           #vscroll:F
    :cond_3
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    neg-float v4, v6

    .line 10201
    .restart local v4       #vscroll:F
    const/16 v6, 0xa

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1       #hscroll:F
    goto :goto_1

    .line 10185
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 8628
    iget v3, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v3, :cond_0

    .line 8629
    const/4 v2, 0x0

    .line 8663
    :goto_0
    return v2

    .line 8633
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->isTitleBarFixed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8634
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic;->mHoverTopAreaTop:I

    .line 8651
    :goto_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    if-nez v3, :cond_1

    .line 8652
    new-instance v3, Landroid/webkit/WebViewClassic$HoverScrollHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebViewClassic$HoverScrollHandler;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V

    iput-object v3, p0, Landroid/webkit/WebViewClassic;->mHoverHandler:Landroid/webkit/WebViewClassic$HoverScrollHandler;

    .line 8654
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isHoverScrollOn()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mFeatureHoverUI:Z

    if-ne v3, v2, :cond_3

    .line 8655
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->checkHoverScrolling(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 8636
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeight()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebViewClassic;->mHoverTopAreaTop:I

    goto :goto_1

    .line 8658
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 8659
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    .line 8660
    .local v1, y:I
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x87

    invoke-virtual {v3, v4, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 8661
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v3, p1}, Landroid/webkit/WebView$PrivateAccess;->super_onHoverEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    .line 2690
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isScrollableForAccessibility()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2691
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 2692
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 2693
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v3

    .line 2694
    .local v3, convertedContentWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getPaddingLeft()I

    move-result v5

    sub-int v1, v4, v5

    .line 2696
    .local v1, adjustedViewWidth:I
    sub-int v4, v3, v1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 2697
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    .line 2698
    .local v2, convertedContentHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 2700
    .local v0, adjustedViewHeight:I
    sub-int v4, v2, v0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 2701
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2663
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2686
    :goto_0
    return-void

    .line 2668
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isScrollableForAccessibility()Z

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2670
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v3

    .line 2671
    .local v3, convertedContentHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v7

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    .line 2673
    .local v0, adjustedViewHeight:I
    sub-int v7, v3, v0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2674
    .local v4, maxScrollY:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    if-lez v7, :cond_3

    move v1, v5

    .line 2675
    .local v1, canScrollBackward:Z
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    sub-int/2addr v7, v4

    if-lez v7, :cond_4

    move v2, v5

    .line 2677
    .local v2, canScrollForward:Z
    :goto_2
    if-eqz v2, :cond_1

    .line 2678
    const/16 v5, 0x1000

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2681
    :cond_1
    if-eqz v2, :cond_2

    .line 2682
    const/16 v5, 0x2000

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2685
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/webkit/AccessibilityInjector;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    .end local v1           #canScrollBackward:Z
    .end local v2           #canScrollForward:Z
    :cond_3
    move v1, v6

    .line 2674
    goto :goto_1

    .restart local v1       #canScrollBackward:Z
    :cond_4
    move v2, v6

    .line 2675
    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 6784
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsScreenTouch:Z

    .line 6786
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsNewInputField:Z

    .line 6789
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mKeyboardEnterPress:Z

    .line 6791
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z

    if-eqz v6, :cond_0

    .line 6792
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 6794
    :cond_0
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-eqz v6, :cond_2

    move v5, v4

    .line 6978
    :cond_1
    :goto_0
    return v5

    .line 6799
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6801
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mIsCtrlPressed:Z

    move v5, v4

    .line 6805
    goto :goto_0

    .line 6808
    :cond_3
    iget v6, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v6, :cond_4

    move v5, v4

    .line 6809
    goto :goto_0

    .line 6813
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    instance-of v6, v6, Landroid/webkit/HtmlComposerView;

    if-nez v6, :cond_b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v6, 0x9e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-ne v6, v7, :cond_b

    .line 6814
    iput v4, p0, Landroid/webkit/WebViewClassic;->mCurSelStart:I

    .line 6815
    iput v4, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    .line 6816
    const/4 v1, 0x0

    .line 6817
    .local v1, prevSpanTextBeforeStartOffset:Ljava/lang/String;
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    const/16 v7, 0xf

    invoke-virtual {v6, v7, v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6818
    .local v3, spannableString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 6819
    .local v2, spannableChar:[C
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 6820
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v4, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6821
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    iput v6, p0, Landroid/webkit/WebViewClassic;->prevlen:I

    .line 6822
    iget v6, p0, Landroid/webkit/WebViewClassic;->prevlen:I

    iput v6, p0, Landroid/webkit/WebViewClassic;->mCurSelStart:I

    .line 6823
    iget v6, p0, Landroid/webkit/WebViewClassic;->prevlen:I

    iput v6, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    .line 6824
    iget v6, p0, Landroid/webkit/WebViewClassic;->mCurSelStart:I

    if-ltz v6, :cond_5

    iget v6, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    if-ltz v6, :cond_5

    .line 6826
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/WebViewClassic;->mCurSelStart:I

    iget v8, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    invoke-static {v6, v7, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6828
    :cond_5
    iget v6, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    if-lt v6, v5, :cond_6

    .line 6830
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6832
    :cond_6
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v7, v8, p1, p2}, Landroid/text/method/QwertyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 6834
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    iget v6, p0, Landroid/webkit/WebViewClassic;->prevlen:I

    sub-int v0, v4, v6

    .line 6835
    .local v0, diff:I
    if-eqz v0, :cond_7

    .line 6836
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->clearComposingSelection()V

    .line 6837
    :cond_7
    if-lez v0, :cond_a

    .line 6839
    if-eqz v1, :cond_9

    .line 6841
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v6, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    invoke-virtual {v4, v6, v7}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_8

    .line 6843
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    const/16 v6, 0x43

    #calls: Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKey(I)V
    invoke-static {v4, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->access$4300(Landroid/webkit/WebViewClassic$WebViewInputConnection;I)V

    .line 6844
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    .line 6855
    :goto_1
    iget v4, p0, Landroid/webkit/WebViewClassic;->mCurSelStart:I

    add-int/2addr v4, v0

    iput v4, p0, Landroid/webkit/WebViewClassic;->mCurSelStart:I

    .line 6856
    iget v4, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    add-int/2addr v4, v0

    iput v4, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    goto/16 :goto_0

    .line 6848
    :cond_8
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    iget v8, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6853
    :cond_9
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    iget v8, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6857
    :cond_a
    if-gez v0, :cond_1

    .line 6859
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    iget v8, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    .line 6860
    iget v4, p0, Landroid/webkit/WebViewClassic;->mCurSelStart:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/webkit/WebViewClassic;->mCurSelStart:I

    .line 6861
    iget v4, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/webkit/WebViewClassic;->mCurSelEnd:I

    goto/16 :goto_0

    .line 6879
    .end local v0           #diff:I
    .end local v1           #prevSpanTextBeforeStartOffset:Ljava/lang/String;
    .end local v2           #spannableChar:[C
    .end local v3           #spannableString:Ljava/lang/String;
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v6, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 6882
    :cond_c
    const/16 v6, 0xdd

    if-ne p1, v6, :cond_d

    .line 6883
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->pasteFromClipboardEx()V

    goto/16 :goto_0

    :cond_d
    move v5, v4

    .line 6887
    goto/16 :goto_0

    .line 6891
    :cond_e
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/webkit/AccessibilityInjector;->handleKeyEventIfNecessary(Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 6896
    :cond_f
    const/16 v6, 0x5c

    if-ne p1, v6, :cond_11

    .line 6897
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 6898
    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic;->pageUp(Z)Z

    goto/16 :goto_0

    .line 6900
    :cond_10
    invoke-virtual {p2, v10}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 6901
    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->pageUp(Z)Z

    goto/16 :goto_0

    .line 6906
    :cond_11
    const/16 v6, 0x5d

    if-ne p1, v6, :cond_13

    .line 6907
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 6908
    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic;->pageDown(Z)Z

    goto/16 :goto_0

    .line 6910
    :cond_12
    invoke-virtual {p2, v10}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 6911
    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->pageDown(Z)Z

    goto/16 :goto_0

    .line 6916
    :cond_13
    const/16 v6, 0x7a

    if-ne p1, v6, :cond_14

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 6917
    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->pageUp(Z)Z

    goto/16 :goto_0

    .line 6921
    :cond_14
    const/16 v6, 0x7b

    if-ne p1, v6, :cond_15

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 6922
    invoke-virtual {p0, v5}, Landroid/webkit/WebViewClassic;->pageDown(Z)Z

    goto/16 :goto_0

    .line 6926
    :cond_15
    const/16 v6, 0x13

    if-lt p1, v6, :cond_16

    const/16 v6, 0x16

    if-gt p1, v6, :cond_16

    .line 6928
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 6931
    :cond_16
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->isEnterActionKey(I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 6932
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mKeyboardEnterPress:Z

    .line 6933
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 6934
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_17

    .line 6935
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v6, :cond_1

    .line 6938
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mGotCenterDown:Z

    .line 6939
    iget v6, p0, Landroid/webkit/WebViewClassic;->mEnterKeyLongPress:I

    if-nez v6, :cond_17

    .line 6940
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v8, 0x72

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6942
    iput v10, p0, Landroid/webkit/WebViewClassic;->mEnterKeyLongPress:I

    .line 6950
    :cond_17
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebSettingsClassic;->getNavDump()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 6951
    packed-switch p1, :pswitch_data_0

    .line 6966
    :cond_18
    :goto_2
    const/16 v4, 0x70

    if-ne p1, v4, :cond_19

    .line 6967
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v4, :cond_19

    .line 6968
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mBTWebSelectionOn:Z

    .line 6969
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v4, p2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 6975
    :cond_19
    invoke-direct {p0, p2}, Landroid/webkit/WebViewClassic;->sendKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 6953
    :pswitch_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->dumpDisplayTree()V

    goto :goto_2

    .line 6957
    :pswitch_1
    const/16 v6, 0xc

    if-ne p1, v6, :cond_1a

    move v4, v5

    :cond_1a
    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic;->dumpDomTree(Z)V

    goto :goto_2

    .line 6961
    :pswitch_2
    const/16 v6, 0xe

    if-ne p1, v6, :cond_1b

    move v4, v5

    :cond_1b
    invoke-virtual {p0, v4}, Landroid/webkit/WebViewClassic;->dumpRenderTree(Z)V

    goto :goto_2

    .line 6951
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 6744
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-eqz v1, :cond_1

    .line 6755
    :cond_0
    :goto_0
    return v0

    .line 6748
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6750
    const/16 v1, 0x67

    invoke-virtual {p0, v1, v0, v0, p3}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    .line 6751
    const/16 v1, 0x68

    invoke-virtual {p0, v1, v0, v0, p3}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    .line 6753
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 6765
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    if-eqz v0, :cond_0

    .line 6766
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/AutoCompletePopup;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 6768
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 6987
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-eqz v6, :cond_1

    .line 7163
    :cond_0
    :goto_0
    return v4

    .line 6991
    :cond_1
    iget v6, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v6, :cond_0

    .line 6996
    const/4 v6, 0x5

    if-ne p1, v6, :cond_2

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v6}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 7001
    :try_start_0
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v4}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v3

    .line 7002
    .local v3, text:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7003
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #text:Ljava/lang/String;
    :goto_1
    move v4, v5

    .line 7008
    goto :goto_0

    .line 7004
    :catch_0
    move-exception v1

    .line 7005
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "webview"

    const-string v6, "ActivityNotFoundException"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7006
    const-string/jumbo v4, "webview"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7014
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v6, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 7017
    :cond_3
    const/16 v6, 0xdd

    if-ne p1, v6, :cond_0

    move v4, v5

    .line 7018
    goto :goto_0

    .line 7025
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/webkit/AccessibilityInjector;->handleKeyEventIfNecessary(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v4, v5

    .line 7027
    goto :goto_0

    .line 7031
    :cond_5
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    if-eqz v6, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x9e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 7033
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v7, v8, p1, p2}, Landroid/text/method/QwertyKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v4, v5

    .line 7034
    goto/16 :goto_0

    .line 7038
    :cond_6
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->isEnterActionKey(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 7040
    iput v4, p0, Landroid/webkit/WebViewClassic;->mEnterKeyLongPress:I

    .line 7041
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x72

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 7042
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mGotCenterDown:Z

    .line 7044
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v6, :cond_7

    .line 7045
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 7046
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    move v4, v5

    .line 7047
    goto/16 :goto_0

    .line 7050
    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->playTouchSound()V

    .line 7052
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->removeTouchHighlight()V

    .line 7057
    :cond_8
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->mIsCtrlPressed:Z

    if-eqz v6, :cond_c

    .line 7058
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsCtrlPressed:Z

    .line 7059
    sparse-switch p1, :sswitch_data_0

    .line 7161
    :cond_9
    :goto_2
    invoke-direct {p0, p2}, Landroid/webkit/WebViewClassic;->sendKeyEvent(Landroid/view/KeyEvent;)V

    move v4, v5

    .line 7163
    goto/16 :goto_0

    .line 7063
    :sswitch_0
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mBTWebSelectionOn:Z

    .line 7065
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mSelectAllViaBT:Z

    .line 7069
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v6, 0xd7

    invoke-virtual {v4, v6}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_2

    .line 7072
    :sswitch_1
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mBTKeyBoardOn:Z

    .line 7076
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v6, 0x2cd

    invoke-virtual {v4, v6}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_2

    .line 7084
    :sswitch_2
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 7085
    invoke-direct {p0, v5}, Landroid/webkit/WebViewClassic;->copySelectionSec(Z)Z

    .line 7086
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->clearSelection()V

    move v4, v5

    .line 7090
    goto/16 :goto_0

    .line 7091
    :cond_a
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v4, :cond_9

    .line 7092
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 7093
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    move v4, v5

    .line 7097
    goto/16 :goto_0

    .line 7105
    :sswitch_3
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v6, :cond_9

    .line 7106
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 7107
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 7108
    iget-boolean v6, p0, Landroid/webkit/WebViewClassic;->mSelectAllViaBT:Z

    if-eqz v6, :cond_b

    .line 7112
    new-instance v0, Landroid/webkit/WebViewClassic$CmdVal;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewClassic$CmdVal;-><init>(Landroid/webkit/WebViewClassic;)V

    .line 7113
    .local v0, cmdVal:Landroid/webkit/WebViewClassic$CmdVal;
    const-string v6, "MoveToEndOfLine"

    iput-object v6, v0, Landroid/webkit/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    .line 7114
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    iput-object v6, v0, Landroid/webkit/WebViewClassic$CmdVal;->value:Ljava/lang/String;

    .line 7115
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v7, 0x203

    invoke-virtual {v6, v7, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7116
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mSelectAllViaBT:Z

    .end local v0           #cmdVal:Landroid/webkit/WebViewClassic$CmdVal;
    :cond_b
    move v4, v5

    .line 7121
    goto/16 :goto_0

    .line 7129
    :sswitch_4
    iput-boolean v5, p0, Landroid/webkit/WebViewClassic;->mIsCtrlPressed:Z

    .line 7133
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v4, :cond_9

    goto :goto_2

    .line 7150
    :cond_c
    const/16 v4, 0x70

    if-ne p1, v4, :cond_9

    .line 7151
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v4, :cond_9

    .line 7152
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v4, p2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_2

    .line 7059
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_2
        0x32 -> :sswitch_3
        0x34 -> :sswitch_1
        0x71 -> :sswitch_4
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 19
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 10766
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 10767
    .local v8, heightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 10768
    .local v9, heightSize:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 10769
    .local v15, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 10771
    .local v16, widthSize:I
    move v11, v9

    .line 10772
    .local v11, measuredHeight:I
    move/from16 v12, v16

    .line 10775
    .local v12, measuredWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mContentHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v2

    .line 10776
    .local v2, contentHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mContentWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v3

    .line 10780
    .local v3, contentWidth:I
    const/high16 v17, 0x4000

    move/from16 v0, v17

    if-eq v8, v0, :cond_3

    .line 10781
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    .line 10782
    move v11, v2

    .line 10783
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-ne v8, v0, :cond_0

    .line 10786
    if-le v11, v9, :cond_0

    .line 10787
    move v11, v9

    .line 10788
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    .line 10789
    const/high16 v17, 0x100

    or-int v11, v11, v17

    .line 10795
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 10796
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic;->nativeSetHeightCanMeasure(Z)V

    .line 10799
    :cond_1
    if-nez v15, :cond_4

    .line 10800
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mWidthCanMeasure:Z

    .line 10801
    move v12, v3

    .line 10810
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 10811
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    check-cast v10, Landroid/webkit/HtmlComposerView;

    .line 10812
    .local v10, htmlComposerView:Landroid/webkit/HtmlComposerView;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 10813
    .local v4, cursorHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1080a0c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 10814
    .local v14, singleCursorHandler:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1080686

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 10816
    .local v6, doubleCursorHandler:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 10817
    .local v13, schHeight:I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 10818
    .local v5, dchHeight:I
    if-lt v13, v5, :cond_6

    move v7, v13

    .line 10820
    .local v7, extraHeight:I
    :goto_2
    add-int v17, v4, v7

    move/from16 v0, v17

    if-ge v11, v0, :cond_2

    .line 10821
    add-int/2addr v11, v7

    .line 10825
    .end local v4           #cursorHeight:I
    .end local v5           #dchHeight:I
    .end local v6           #doubleCursorHandler:Landroid/graphics/drawable/Drawable;
    .end local v7           #extraHeight:I
    .end local v10           #htmlComposerView:Landroid/webkit/HtmlComposerView;
    .end local v13           #schHeight:I
    .end local v14           #singleCursorHandler:Landroid/graphics/drawable/Drawable;
    :cond_2
    monitor-enter p0

    .line 10826
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v11}, Landroid/webkit/WebView$PrivateAccess;->setMeasuredDimension(II)V

    .line 10827
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10828
    return-void

    .line 10793
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    goto/16 :goto_0

    .line 10803
    :cond_4
    if-ge v12, v3, :cond_5

    .line 10804
    const/high16 v17, 0x100

    or-int v12, v12, v17

    .line 10806
    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mWidthCanMeasure:Z

    goto :goto_1

    .restart local v4       #cursorHeight:I
    .restart local v5       #dchHeight:I
    .restart local v6       #doubleCursorHandler:Landroid/graphics/drawable/Drawable;
    .restart local v10       #htmlComposerView:Landroid/webkit/HtmlComposerView;
    .restart local v13       #schHeight:I
    .restart local v14       #singleCursorHandler:Landroid/graphics/drawable/Drawable;
    :cond_6
    move v7, v5

    .line 10818
    goto :goto_2

    .line 10827
    .end local v4           #cursorHeight:I
    .end local v5           #dchHeight:I
    .end local v6           #doubleCursorHandler:Landroid/graphics/drawable/Drawable;
    .end local v10           #htmlComposerView:Landroid/webkit/HtmlComposerView;
    .end local v13           #schHeight:I
    .end local v14           #singleCursorHandler:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17
.end method

.method public onOverScrolled(IIZZ)V
    .locals 8
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 4481
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 4482
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->scrollEditText(II)V

    .line 4523
    :cond_0
    :goto_0
    return-void

    .line 4485
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 4486
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewClassic;->scrollLayerTo(II)V

    goto :goto_0

    .line 4489
    :cond_2
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    .line 4490
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollX()I

    move-result v5

    .line 4491
    .local v5, maxX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->computeMaxScrollY()I

    move-result v6

    .line 4492
    .local v6, maxY:I
    if-nez v5, :cond_9

    .line 4494
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result p1

    .line 4503
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    .line 4504
    .local v3, oldX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    .line 4506
    .local v4, oldY:I
    if-gez p2, :cond_4

    if-lez v4, :cond_5

    :cond_4
    if-le p2, v6, :cond_6

    if-lt v4, v6, :cond_6

    .line 4507
    :cond_5
    iput-boolean v7, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    .line 4510
    :cond_6
    if-gez p2, :cond_c

    const/4 p2, 0x0

    .line 4514
    :cond_7
    :goto_2
    if-ne v4, p2, :cond_8

    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    .line 4518
    :cond_8
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView$PrivateAccess;->super_scrollTo(II)V

    .line 4520
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_0

    .line 4521
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/OverScrollGlow;->pullGlow(IIIIII)V

    goto :goto_0

    .line 4495
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    :cond_9
    if-ltz p1, :cond_a

    if-le p1, v5, :cond_3

    .line 4496
    :cond_a
    iput-boolean v7, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    .line 4498
    if-gez p1, :cond_b

    const/4 p1, 0x0

    goto :goto_1

    .line 4499
    :cond_b
    if-le p1, v5, :cond_3

    move p1, v5

    goto :goto_1

    .line 4511
    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    :cond_c
    if-le p2, v6, :cond_7

    move p2, v6

    goto :goto_2
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 5149
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->onPageFinished(Ljava/lang/String;)V

    .line 5151
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5152
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/AccessibilityInjector;->onPageFinished(Ljava/lang/String;)V

    .line 5154
    :cond_0
    return-void
.end method

.method onPageStarted(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 5119
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setCertificate(Landroid/net/http/SslCertificate;)V

    .line 5123
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5124
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/AccessibilityInjector;->onPageStarted(Ljava/lang/String;)V

    .line 5128
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    .line 5130
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    if-eqz v0, :cond_1

    .line 5131
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;

    invoke-virtual {v0}, Landroid/webkit/AutoCompletePopup;->clearAdapter()V

    .line 5134
    :cond_1
    sget-boolean v0, Landroid/webkit/WebViewClassic;->bNeedToCheckCustomProxy:Z

    if-eqz v0, :cond_2

    .line 5135
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->setLocalProxy(Landroid/content/Context;Z)Z

    .line 5142
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4620
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    if-nez v0, :cond_2

    .line 4621
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    .line 4622
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4625
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 4626
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->pauseAndDispatch()V

    .line 4628
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v0, :cond_1

    .line 4629
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-static {v0, v2}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    .line 4633
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->dismissWebSelectDialog()V

    .line 4634
    invoke-static {}, Landroid/webkit/WebCoreThreadWatchdog;->pause()V

    .line 4636
    :cond_2
    return-void
.end method

.method onPinchToZoomAnimationEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "detector"

    .prologue
    .line 8588
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->onZoomAnimationEnd()V

    .line 8592
    const/16 v0, 0x8

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 8593
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    .line 8594
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    iget-wide v2, p0, Landroid/webkit/WebViewClassic;->mLastTouchTime:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebViewClassic;->startTouch(FFJ)V

    .line 8595
    return-void
.end method

.method onPinchToZoomAnimationStart()V
    .locals 0

    .prologue
    .line 8583
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->cancelTouch()V

    .line 8584
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->onZoomAnimationStart()V

    .line 8585
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4659
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 4660
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    .line 4661
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4662
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 4663
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-static {v0, v2}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    .line 4667
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mFeatureHoverUI:Z

    .line 4672
    invoke-static {}, Landroid/webkit/WebCoreThreadWatchdog;->resume()V

    .line 4673
    return-void
.end method

.method onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 6
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"
    .parameter "resumeMsg"

    .prologue
    const/4 v3, 0x1

    .line 2752
    const/4 v1, 0x0

    .line 2753
    .local v1, rVal:Z
    if-nez p4, :cond_0

    .line 2755
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v3, p1, p2, p3}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v3, v1

    .line 2823
    :goto_1
    return v3

    .line 2757
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 2758
    const-string/jumbo v4, "webview"

    const-string/jumbo v5, "onSavePassword should not be called while dialog is up"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 2762
    :cond_1
    iput-object p4, p0, Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;

    .line 2763
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2765
    .local v2, remember:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2768
    iput-object p4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2770
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2772
    .local v0, neverRemember:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2773
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2777
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x104043a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104048d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104048e

    new-instance v5, Landroid/webkit/WebViewClassic$5;

    invoke-direct {v5, p0, p4}, Landroid/webkit/WebViewClassic$5;-><init>(Landroid/webkit/WebViewClassic;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104048f

    new-instance v5, Landroid/webkit/WebViewClassic$4;

    invoke-direct {v5, p0, v2}, Landroid/webkit/WebViewClassic$4;-><init>(Landroid/webkit/WebViewClassic;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040490

    new-instance v5, Landroid/webkit/WebViewClassic$3;

    invoke-direct {v5, p0, v0}, Landroid/webkit/WebViewClassic$3;-><init>(Landroid/webkit/WebViewClassic;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Landroid/webkit/WebViewClassic$2;

    invoke-direct {v4, p0, p4}, Landroid/webkit/WebViewClassic$2;-><init>(Landroid/webkit/WebViewClassic;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2821
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public onScrollChanged(IIII)V
    .locals 4
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v3, 0x0

    .line 8448
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    if-nez v1, :cond_0

    .line 8449
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 8452
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v0

    .line 8453
    .local v0, titleHeight:I
    sub-int v1, v0, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v2, v0, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 8454
    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->sendViewSizeZoom(Z)Z

    .line 8457
    .end local v0           #titleHeight:I
    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/4 v4, 0x0

    .line 8262
    const-string v1, "WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSizeChanged - w:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8264
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    .line 8269
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getDefaultMinZoomScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 8270
    .local v0, newMaxViewportWidth:I
    sget v1, Landroid/webkit/WebViewClassic;->sMaxViewportWidth:I

    if-le v0, v1, :cond_0

    .line 8271
    sput v0, Landroid/webkit/WebViewClassic;->sMaxViewportWidth:I

    .line 8274
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/webkit/ZoomManager;->onSizeChanged(IIII)V

    .line 8276
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    if-nez v1, :cond_1

    .line 8280
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    invoke-virtual {p0, v1, v4}, Landroid/webkit/WebViewClassic;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    .line 8283
    :cond_1
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->bWebSelectDialogIsUp:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    if-eqz v1, :cond_2

    .line 8284
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    invoke-virtual {v1}, Landroid/webkit/WebSelectDialog;->onWebViewSizeChanged()V

    .line 8285
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->scrollSelectIntoView()V

    .line 8289
    :cond_2
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsSoftkeyboardVisible:Z

    if-eqz v1, :cond_3

    .line 8291
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->scrollEditIntoView()V

    .line 8293
    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->relocateAutoCompletePopup()V

    .line 8294
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    .line 8963
    iget v8, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->isClickable()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 8964
    :cond_0
    const/4 v8, 0x0

    .line 9070
    :goto_0
    return v8

    .line 8967
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    .line 8968
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v8}, Landroid/webkit/WebMagnifier;->hide()V

    .line 8971
    :cond_2
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    if-nez v8, :cond_3

    .line 8972
    const/4 v8, 0x0

    goto :goto_0

    .line 8975
    :cond_3
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->isFocusable()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->isFocusableInTouchMode()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->isFocused()Z

    move-result v8

    if-nez v8, :cond_4

    .line 8977
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->requestFocus()Z

    .line 8980
    :cond_4
    sget-boolean v8, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v8, :cond_5

    .line 8981
    const-string/jumbo v8, "webview"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onTouchEvent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mTouchMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " numPointers="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8987
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_10

    .line 8988
    iget v8, p0, Landroid/webkit/WebViewClassic;->mTouchSlopSquareForSPen:I

    iput v8, p0, Landroid/webkit/WebViewClassic;->mTouchSlopSquare:I

    .line 8994
    :goto_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebViewClassic;->mBlockShowSoftInput:Z

    .line 8995
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    .line 8996
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 8997
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    .line 8998
    .local v1, accessoryKeyboardState:I
    and-int/lit8 v8, v1, 0x7

    if-eqz v8, :cond_6

    .line 8999
    const-string/jumbo v8, "webview"

    const-string v9, "HW keyboard connected. showSoftInput is blocked."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9000
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebViewClassic;->mBlockShowSoftInput:Z

    .line 9004
    .end local v1           #accessoryKeyboardState:I
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 9005
    .local v2, action:I
    if-nez v2, :cond_7

    .line 9006
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Landroid/webkit/WebViewClassic;->actionDown_X:I

    .line 9007
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Landroid/webkit/WebViewClassic;->actionDown_Y:I

    .line 9009
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebViewClassic;->mConfirmMove:Z

    .line 9010
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewInputDispatcher;->setTouchInputCameHere(Z)V

    .line 9011
    const/4 v8, 0x0

    iput v8, p0, Landroid/webkit/WebViewClassic;->mAx:I

    .line 9012
    const/4 v8, 0x0

    iput v8, p0, Landroid/webkit/WebViewClassic;->mAy:I

    .line 9013
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebViewClassic;->mFirstScaleOccured:Z

    .line 9014
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewInputDispatcher;->setClickOnSelectHandleCenter(Z)V

    .line 9017
    :cond_7
    const/4 v8, 0x1

    if-ne v2, v8, :cond_8

    .line 9018
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/webkit/WebViewClassic;->setZoomScaleBegin(Z)V

    .line 9019
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkit/ZoomManager;->SetIsActionPU(Z)V

    .line 9022
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 9024
    .local v0, IsActionUP:I
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    if-eqz v8, :cond_d

    .line 9025
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8}, Landroid/webkit/ZoomManager;->getTiltListener()Landroid/webkit/TiltListener;

    move-result-object v3

    .line 9027
    .local v3, currentTiltListener:Landroid/webkit/TiltListener;
    const/4 v8, 0x6

    if-ne v0, v8, :cond_9

    .line 9028
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/ZoomManager;->SetIsActionPU(Z)V

    .line 9031
    :cond_9
    const/4 v8, 0x6

    if-eq v0, v8, :cond_a

    const/4 v8, 0x3

    if-ne v0, v8, :cond_b

    .line 9032
    :cond_a
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8}, Landroid/webkit/ZoomManager;->unregisterTiltListener()V

    .line 9033
    if-eqz v3, :cond_b

    .line 9034
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/webkit/TiltListener;->setTiltUse(Z)V

    .line 9036
    :cond_b
    const/4 v8, 0x5

    if-ne v0, v8, :cond_d

    .line 9037
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 9038
    .local v6, tiltStart:J
    if-eqz v3, :cond_c

    .line 9039
    invoke-virtual {v3, v6, v7}, Landroid/webkit/TiltListener;->setTiltStartTime(J)V

    .line 9040
    :cond_c
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8}, Landroid/webkit/ZoomManager;->registerTiltListener()V

    .line 9044
    .end local v3           #currentTiltListener:Landroid/webkit/TiltListener;
    .end local v6           #tiltStart:J
    :cond_d
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8}, Landroid/webkit/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v4

    .line 9045
    .local v4, detector:Landroid/view/ScaleGestureDetector;
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 9046
    const/4 v8, 0x2

    if-ne v2, v8, :cond_e

    .line 9047
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/ZoomManager;->setHandleMoveEvForZooming(Z)V

    .line 9050
    :cond_e
    const/4 v8, 0x2

    if-ne v2, v8, :cond_f

    .line 9051
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Landroid/webkit/WebViewClassic;->actionDown_Y:I

    sub-int/2addr v8, v9

    if-lez v8, :cond_11

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Landroid/webkit/WebViewClassic;->mMaybeScrollDown:Z

    .line 9052
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Landroid/webkit/WebViewClassic;->mFirstTouchX:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, p0, Landroid/webkit/WebViewClassic;->mAx:I

    .line 9053
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Landroid/webkit/WebViewClassic;->mFirstTouchY:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, p0, Landroid/webkit/WebViewClassic;->mAy:I

    .line 9056
    :cond_f
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->touchedOnTextSelectionArea(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 9057
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewInputDispatcher;->setWebkitShouldSkipEvent(Z)V

    .line 9058
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewInputDispatcher;->setUIShouldSkipEvent(Z)V

    .line 9064
    :goto_3
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v11}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v11

    invoke-virtual {v8, p1, v9, v10, v11}, Landroid/webkit/WebViewInputDispatcher;->postPointerEvent(Landroid/view/MotionEvent;IIF)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 9066
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    invoke-virtual {v8}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvents()V

    .line 9067
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 8990
    .end local v0           #IsActionUP:I
    .end local v2           #action:I
    .end local v4           #detector:Landroid/view/ScaleGestureDetector;
    :cond_10
    iget v8, p0, Landroid/webkit/WebViewClassic;->mTouchSlopSquareForFinger:I

    iput v8, p0, Landroid/webkit/WebViewClassic;->mTouchSlopSquare:I

    goto/16 :goto_1

    .line 9051
    .restart local v0       #IsActionUP:I
    .restart local v2       #action:I
    .restart local v4       #detector:Landroid/view/ScaleGestureDetector;
    :cond_11
    const/4 v8, 0x0

    goto :goto_2

    .line 9061
    :cond_12
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewInputDispatcher;->setWebkitShouldSkipEvent(Z)V

    .line 9062
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewInputDispatcher;->setUIShouldSkipEvent(Z)V

    goto :goto_3

    .line 9069
    :cond_13
    const-string/jumbo v8, "webview"

    const-string v9, "mInputDispatcher rejected the event!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9070
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 10264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 10265
    .local v0, time:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 10266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->pageDown(Z)Z

    .line 10267
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->pageUp(Z)Z

    .line 10333
    :cond_1
    :goto_0
    return v2

    .line 10270
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_5

    .line 10271
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-nez v4, :cond_1

    .line 10274
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mTrackballDown:Z

    .line 10275
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_3

    move v2, v3

    .line 10276
    goto :goto_0

    .line 10283
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    :cond_4
    move v2, v3

    .line 10284
    goto :goto_0

    .line 10286
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_7

    .line 10288
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 10289
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic;->mTrackballDown:Z

    .line 10290
    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mTrackballUpTime:J

    .line 10291
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v4, :cond_6

    .line 10292
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 10293
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_0

    :cond_6
    move v2, v3

    .line 10301
    goto :goto_0

    .line 10303
    :cond_7
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mMapTrackballToArrowKeys:Z

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    move v2, v3

    .line 10306
    goto :goto_0

    .line 10308
    :cond_a
    iget-boolean v4, p0, Landroid/webkit/WebViewClassic;->mTrackballDown:Z

    if-nez v4, :cond_1

    .line 10312
    iget-wide v4, p0, Landroid/webkit/WebViewClassic;->mTrackballUpTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 10317
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 10318
    iget-wide v4, p0, Landroid/webkit/WebViewClassic;->mTrackballLastTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_b

    .line 10323
    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mTrackballFirstTime:J

    .line 10324
    iput v3, p0, Landroid/webkit/WebViewClassic;->mTrackballYMove:I

    iput v3, p0, Landroid/webkit/WebViewClassic;->mTrackballXMove:I

    .line 10326
    :cond_b
    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mTrackballLastTime:J

    .line 10330
    iget v3, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsX:F

    .line 10331
    iget v3, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebViewClassic;->mTrackballRemainsY:F

    .line 10332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebViewClassic;->doTrackball(JI)V

    goto/16 :goto_0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 8062
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    if-eqz v0, :cond_0

    .line 8063
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 8065
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->updateDrawingState()V

    .line 8066
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    .line 8113
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->bWebSelectDialogIsUp:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 8136
    :cond_0
    :goto_0
    return-void

    .line 8116
    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->setActive(Z)V

    .line 8117
    if-eqz p1, :cond_3

    .line 8118
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->setActiveWebView(Landroid/webkit/WebViewClassic;)V

    .line 8119
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mPictureUpdatePausedForFocusChange:Z

    if-eqz v1, :cond_2

    .line 8120
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 8121
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mPictureUpdatePausedForFocusChange:Z

    .line 8133
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v1, v1, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v2, v1, :cond_0

    .line 8134
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v1}, Landroid/webkit/WebMagnifier;->hide()V

    goto :goto_0

    .line 8124
    :cond_3
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->removeActiveWebView(Landroid/webkit/WebViewClassic;)V

    .line 8125
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    .line 8126
    .local v0, settings:Landroid/webkit/WebSettings;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->enableSmoothTransition()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->isUpdatePicturePaused(Landroid/webkit/WebViewCore;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8128
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 8129
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mPictureUpdatePausedForFocusChange:Z

    goto :goto_1
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 4640
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->updateDrawingState()V

    .line 4641
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 2857
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 2865
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    return v0
.end method

.method public pageDown(Z)Z
    .locals 6
    .parameter "bottom"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 3804
    iget v3, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v3, :cond_0

    .line 3818
    :goto_0
    return v2

    .line 3807
    :cond_0
    if-eqz p1, :cond_1

    .line 3808
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v4

    invoke-direct {p0, v3, v4, v5, v2}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 3811
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v0

    .line 3813
    .local v0, h:I
    const/16 v3, 0x30

    if-le v0, v3, :cond_2

    .line 3814
    add-int/lit8 v1, v0, -0x18

    .line 3818
    .local v1, y:I
    :goto_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v1, v5, v2}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 3816
    .end local v1           #y:I
    :cond_2
    div-int/lit8 v1, v0, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 3818
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method protected pageSwapCallback(Z)V
    .locals 3
    .parameter "notifyAnimationStarted"

    .prologue
    .line 11997
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->resumeWebKitDraw()V

    .line 11998
    if-eqz p1, :cond_0

    .line 11999
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 12001
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    instance-of v0, v0, Landroid/webkit/WebViewClassic$PageSwapDelegate;

    if-eqz v0, :cond_1

    .line 12003
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    check-cast v0, Landroid/webkit/WebViewClassic$PageSwapDelegate;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewClassic$PageSwapDelegate;->onPageSwapOccurred(Z)V

    .line 12006
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    if-eqz v0, :cond_2

    .line 12009
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    .line 12011
    :cond_2
    return-void
.end method

.method public pageUp(Z)Z
    .locals 5
    .parameter "top"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 3780
    iget v3, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v3, :cond_0

    .line 3795
    :goto_0
    return v2

    .line 3783
    :cond_0
    if-eqz p1, :cond_1

    .line 3785
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-direct {p0, v3, v2, v4, v2}, Landroid/webkit/WebViewClassic;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 3788
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v0

    .line 3790
    .local v0, h:I
    const/16 v3, 0x30

    if-le v0, v3, :cond_2

    .line 3791
    neg-int v3, v0

    add-int/lit8 v1, v3, 0x18

    .line 3795
    .local v1, y:I
    :goto_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v1, v4, v2}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 3793
    .end local v1           #y:I
    :cond_2
    neg-int v3, v0

    div-int/lit8 v1, v3, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 3795
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 6
    .parameter "currentText"
    .parameter "event"

    .prologue
    const/16 v5, 0x80

    .line 10910
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_0

    .line 10925
    :goto_0
    return-void

    .line 10913
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$JSKeyData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSKeyData;-><init>()V

    .line 10914
    .local v0, arg:Landroid/webkit/WebViewCore$JSKeyData;
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    .line 10915
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    .line 10917
    iget v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    .line 10918
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x73

    iget v3, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 10923
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 10924
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_0
.end method

.method public pasteFromClipboard()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 7501
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 7503
    .local v2, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 7504
    .local v0, clipData:Landroid/content/ClipData;
    if-eqz v0, :cond_0

    .line 7505
    invoke-virtual {v0, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 7506
    .local v1, clipItem:Landroid/content/ClipData$Item;
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 7507
    .local v3, pasteText:Ljava/lang/CharSequence;
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v4, :cond_0

    .line 7508
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v4, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    .line 7509
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const v5, 0x1040783

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 7512
    .end local v1           #clipItem:Landroid/content/ClipData$Item;
    .end local v3           #pasteText:Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->sendUnknownKeyEvent()V

    .line 7513
    return-void
.end method

.method public pasteFromClipboardEx()V
    .locals 5

    .prologue
    .line 7521
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const-string v3, "clipboardEx"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 7523
    .local v0, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mPasteEvent:Landroid/webkit/WebViewClassic$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v2, v3, v4}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    move-result v1

    .line 7524
    .local v1, clipdata:Z
    if-nez v1, :cond_0

    .line 7525
    const-string/jumbo v2, "webview"

    const-string v3, "clip board is not shown"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7527
    :cond_0
    return-void
.end method

.method public pauseTimers()V
    .locals 2

    .prologue
    .line 4604
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4605
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 13590
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 13591
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->pauseAndDispatch()V

    .line 13592
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 9
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2628
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2630
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v5, p1, p2}, Landroid/webkit/WebView$PrivateAccess;->super_performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v5

    .line 2658
    :goto_0
    return v5

    .line 2633
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/webkit/AccessibilityInjector;->supportsAccessibilityAction(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2634
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/webkit/AccessibilityInjector;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v5

    goto :goto_0

    .line 2637
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 2658
    iget-object v5, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v5, p1, p2}, Landroid/webkit/WebView$PrivateAccess;->super_performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v5

    goto :goto_0

    .line 2640
    :sswitch_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v3

    .line 2641
    .local v3, convertedContentHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHeight()I

    move-result v7

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    .line 2643
    .local v0, adjustedViewHeight:I
    sub-int v7, v3, v0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2644
    .local v4, maxScrollY:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    if-lez v7, :cond_2

    move v1, v5

    .line 2645
    .local v1, canScrollBackward:Z
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v7

    sub-int/2addr v7, v4

    if-lez v7, :cond_3

    move v2, v5

    .line 2646
    .local v2, canScrollForward:Z
    :goto_2
    const/16 v7, 0x2000

    if-ne p1, v7, :cond_4

    if-eqz v1, :cond_4

    .line 2647
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7, v6, v0}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_0

    .end local v1           #canScrollBackward:Z
    .end local v2           #canScrollForward:Z
    :cond_2
    move v1, v6

    .line 2644
    goto :goto_1

    .restart local v1       #canScrollBackward:Z
    :cond_3
    move v2, v6

    .line 2645
    goto :goto_2

    .line 2650
    .restart local v2       #canScrollForward:Z
    :cond_4
    const/16 v7, 0x1000

    if-ne p1, v7, :cond_5

    if-eqz v2, :cond_5

    .line 2651
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    neg-int v8, v0

    invoke-virtual {v7, v6, v8}, Landroid/webkit/WebView;->scrollBy(II)V

    goto :goto_0

    :cond_5
    move v5, v6

    .line 2654
    goto :goto_0

    .line 2637
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 5745
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 5747
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettingsClassic;->getPopUpBrowserState()Z

    move-result v9

    if-eqz v9, :cond_1

    move v6, v10

    .line 5853
    :cond_0
    :goto_0
    return v6

    .line 5757
    :cond_1
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_2

    move v6, v10

    goto :goto_0

    .line 5761
    :cond_2
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v9}, Landroid/webkit/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v3

    .line 5762
    .local v3, detector:Landroid/view/ScaleGestureDetector;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v9

    if-eqz v9, :cond_3

    move v6, v10

    .line 5763
    goto :goto_0

    .line 5766
    :cond_3
    iget-boolean v9, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v9, :cond_4

    move v6, v10

    goto :goto_0

    .line 5769
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v4

    .line 5770
    .local v4, hitTest:Landroid/webkit/WebView$HitTestResult;
    const/4 v5, 0x0

    .line 5771
    .local v5, hitType:I
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v5

    .line 5773
    :cond_5
    sget v9, Landroid/webkit/DebugFlags;->ENABLE_DRAG:I

    if-eqz v9, :cond_8

    .line 5774
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->performHapticFeedback(I)Z

    .line 5775
    sget v9, Landroid/webkit/DebugFlags;->ENABLE_DRAG:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_7

    if-eqz v4, :cond_7

    const/4 v9, 0x5

    if-eq v5, v9, :cond_6

    const/16 v9, 0x8

    if-ne v5, v9, :cond_7

    .line 5777
    :cond_6
    invoke-virtual {v4}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v8

    .line 5778
    .local v8, url:Ljava/lang/String;
    const-string v0, "/data/data/com.android.browser/copyImage.bmp"

    .line 5779
    .local v0, bitmapPath:Ljava/lang/String;
    const-string v9, "/data/data/com.android.browser/copyImage.bmp"

    invoke-virtual {p0, v8, v9}, Landroid/webkit/WebViewClassic;->saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5780
    const-string v9, "/data/data/com.android.browser/copyImage.bmp"

    invoke-static {p0, v8, v9}, Landroid/webkit/WebDragHandler;->startDragSelection(Landroid/webkit/WebViewClassic;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5782
    .end local v0           #bitmapPath:Ljava/lang/String;
    .end local v8           #url:Ljava/lang/String;
    :cond_7
    iget-boolean v9, p0, Landroid/webkit/WebViewClassic;->mWebSelectionOn:Z

    if-eqz v9, :cond_8

    .line 5783
    iget v9, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v11

    add-int/2addr v9, v11

    invoke-virtual {p0, v9}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    .line 5784
    .local v1, contentX:I
    iget v9, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v11

    add-int/2addr v9, v11

    invoke-virtual {p0, v9}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v2

    .line 5785
    .local v2, contentY:I
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v9, v9, Landroid/webkit/WebViewCore$SelectionCopiedData;->mCharacterSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 5786
    invoke-static {p0}, Landroid/webkit/WebDragHandler;->startDragSelection(Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    .line 5796
    .end local v1           #contentX:I
    .end local v2           #contentY:I
    :cond_8
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v9}, Landroid/webkit/WebView$PrivateAccess;->super_performLongClick()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 5797
    iput v10, p0, Landroid/webkit/WebViewClassic;->mEnterKeyLongPress:I

    .line 5799
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic;->mPerformLongPress:Z

    goto/16 :goto_0

    .line 5805
    :cond_9
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-boolean v9, p0, Landroid/webkit/WebViewClassic;->mAutoSelection:Z

    if-eqz v9, :cond_d

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v4}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v9

    const/16 v11, 0x9

    if-ne v9, v11, :cond_d

    .line 5808
    :cond_a
    iget v9, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v11

    add-int/2addr v9, v11

    invoke-virtual {p0, v9}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    .line 5809
    .restart local v1       #contentX:I
    iget v9, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v11

    add-int/2addr v9, v11

    invoke-virtual {p0, v9}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v2

    .line 5811
    .restart local v2       #contentY:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v9

    instance-of v9, v9, Landroid/webkit/HtmlComposerView;

    if-eqz v9, :cond_b

    .line 5812
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v9

    check-cast v9, Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 5815
    :cond_b
    invoke-direct {p0, v1, v2}, Landroid/webkit/WebViewClassic;->selectClosestWord(II)Z

    .line 5818
    sget v9, Landroid/webkit/DebugFlags;->ENABLE_DRAG:I

    if-nez v9, :cond_0

    .line 5819
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v9

    instance-of v9, v9, Landroid/webkit/HtmlComposerView;

    if-eqz v9, :cond_c

    .line 5820
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v9

    check-cast v9, Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9, v1, v2}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v7

    .line 5821
    .local v7, rect:Landroid/graphics/Rect;
    iget v9, v7, Landroid/graphics/Rect;->top:I

    if-ne v9, v12, :cond_0

    iget v9, v7, Landroid/graphics/Rect;->left:I

    if-ne v9, v12, :cond_0

    .line 5822
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->performHapticFeedback(I)Z

    goto/16 :goto_0

    .line 5825
    .end local v7           #rect:Landroid/graphics/Rect;
    :cond_c
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->performHapticFeedback(I)Z

    goto/16 :goto_0

    .line 5835
    .end local v1           #contentX:I
    .end local v2           #contentY:I
    :cond_d
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v9

    if-eqz v9, :cond_e

    move v6, v10

    .line 5836
    goto/16 :goto_0

    .line 5844
    :cond_e
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->selectText()Z

    move-result v6

    .line 5845
    .local v6, isSelecting:Z
    if-eqz v6, :cond_f

    .line 5846
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->performHapticFeedback(I)Z

    goto/16 :goto_0

    .line 5847
    :cond_f
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 5848
    new-instance v9, Landroid/webkit/SelectActionModeCallback;

    invoke-direct {v9}, Landroid/webkit/SelectActionModeCallback;-><init>()V

    iput-object v9, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    .line 5849
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v9, p0}, Landroid/webkit/SelectActionModeCallback;->setWebView(Landroid/webkit/WebViewClassic;)V

    .line 5850
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v9, v10}, Landroid/webkit/SelectActionModeCallback;->setTextSelected(Z)V

    .line 5851
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto/16 :goto_0
.end method

.method public performSelectionDoneAction()V
    .locals 3

    .prologue
    .line 7908
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectionClearOnRotation:Z

    if-nez v2, :cond_0

    .line 7909
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v2, :cond_0

    .line 7910
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 7911
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 7912
    .local v1, selEnd:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v2, v1, v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 7913
    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebViewClassic;->setSelection(II)V

    .line 7916
    .end local v0           #editable:Landroid/text/Editable;
    .end local v1           #selEnd:I
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mSelectionClearOnRotation:Z

    .line 7917
    return-void
.end method

.method pinLocX(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 4037
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    .line 4038
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealHorizontalScrollRange()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/webkit/WebViewClassic;->pinLoc(III)I

    move-result p1

    goto :goto_0
.end method

.method pinLocY(I)I
    .locals 3
    .parameter "y"

    .prologue
    .line 4043
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    .line 4044
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->computeRealVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Landroid/webkit/WebViewClassic;->pinLoc(III)I

    move-result p1

    goto :goto_0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3
    .parameter "url"
    .parameter "postData"

    .prologue
    .line 3551
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3552
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 3554
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mUrl:Ljava/lang/String;

    .line 3555
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3567
    :goto_0
    return-void

    .line 3559
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$PostUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$PostUrlData;-><init>()V

    .line 3560
    .local v0, arg:Landroid/webkit/WebViewCore$PostUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    .line 3561
    iput-object p2, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    .line 3562
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x84

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3563
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    goto :goto_0

    .line 3565
    .end local v0           #arg:Landroid/webkit/WebViewCore$PostUrlData;
    :cond_1
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->loadUrlImpl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .parameter "reloadOpenPages"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5482
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 3661
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->clearHelpers()V

    .line 3662
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 3664
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3669
    :goto_0
    return-void

    .line 3668
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 3
    .parameter "interfaceName"

    .prologue
    .line 5452
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    .line 5453
    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    .line 5454
    .local v0, arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    .line 5455
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x95

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5457
    .end local v0           #arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    :cond_0
    return-void
.end method

.method replaceTextfieldText(IILjava/lang/String;II)V
    .locals 2
    .parameter "oldStart"
    .parameter "oldEnd"
    .parameter "replace"
    .parameter "newStart"
    .parameter "newEnd"

    .prologue
    .line 10895
    new-instance v0, Landroid/webkit/WebViewCore$ReplaceTextData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ReplaceTextData;-><init>()V

    .line 10896
    .local v0, arg:Landroid/webkit/WebViewCore$ReplaceTextData;
    iput-object p3, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    .line 10897
    iput p4, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    .line 10898
    iput p5, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    .line 10899
    iget v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    .line 10900
    iget v1, p0, Landroid/webkit/WebViewClassic;->mTextGeneration:I

    iput v1, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    .line 10901
    const/16 v1, 0x72

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    .line 10906
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 16
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 10834
    move-object/from16 v0, p0

    iget v11, v0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v11, :cond_0

    .line 10835
    const/4 v11, 0x0

    .line 10890
    :goto_0
    return v11

    .line 10839
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v11}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 10840
    const/4 v11, 0x0

    goto :goto_0

    .line 10843
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 10846
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getWidth()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v14

    invoke-direct {v1, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10851
    .local v1, content:Landroid/graphics/Rect;
    iget v11, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v7

    .line 10852
    .local v7, screenTop:I
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v4

    .line 10853
    .local v4, screenBottom:I
    sub-int v2, v4, v7

    .line 10854
    .local v2, height:I
    const/4 v9, 0x0

    .line 10856
    .local v9, scrollYDelta:I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    if-le v11, v4, :cond_5

    .line 10857
    div-int/lit8 v3, v2, 0x3

    .line 10858
    .local v3, oneThirdOfScreenHeight:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    mul-int/lit8 v12, v3, 0x2

    if-le v11, v12, :cond_4

    .line 10861
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    sub-int v9, v11, v7

    .line 10871
    .end local v3           #oneThirdOfScreenHeight:I
    :cond_2
    :goto_1
    iget v11, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v5

    .line 10872
    .local v5, screenLeft:I
    iget v11, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v6

    .line 10873
    .local v6, screenRight:I
    sub-int v10, v6, v5

    .line 10874
    .local v10, width:I
    const/4 v8, 0x0

    .line 10876
    .local v8, scrollXDelta:I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->right:I

    if-le v11, v6, :cond_7

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    if-le v11, v5, :cond_7

    .line 10877
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-le v11, v10, :cond_6

    .line 10878
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v5

    add-int/2addr v8, v11

    .line 10886
    :cond_3
    :goto_2
    or-int v11, v9, v8

    if-eqz v11, :cond_9

    .line 10887
    if-nez p3, :cond_8

    const/4 v11, 0x1

    :goto_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v11, v12}, Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z

    move-result v11

    goto/16 :goto_0

    .line 10865
    .end local v5           #screenLeft:I
    .end local v6           #screenRight:I
    .end local v8           #scrollXDelta:I
    .end local v10           #width:I
    .restart local v3       #oneThirdOfScreenHeight:I
    :cond_4
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    add-int v12, v7, v3

    sub-int v9, v11, v12

    goto :goto_1

    .line 10867
    .end local v3           #oneThirdOfScreenHeight:I
    :cond_5
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    if-ge v11, v7, :cond_2

    .line 10868
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    sub-int v9, v11, v7

    goto :goto_1

    .line 10880
    .restart local v5       #screenLeft:I
    .restart local v6       #screenRight:I
    .restart local v8       #scrollXDelta:I
    .restart local v10       #width:I
    :cond_6
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v6

    add-int/2addr v8, v11

    goto :goto_2

    .line 10882
    :cond_7
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    if-ge v11, v5, :cond_3

    .line 10883
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int v11, v5, v11

    sub-int/2addr v8, v11

    goto :goto_2

    .line 10887
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 10890
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 10734
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mFindIsUp:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 10761
    :cond_0
    :goto_0
    return v1

    .line 10735
    :cond_1
    const/4 v1, 0x0

    .line 10736
    .local v1, result:Z
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v2, p1, p2}, Landroid/webkit/WebView$PrivateAccess;->super_requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 10737
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getNeedInitialFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 10742
    const/4 v0, 0x0

    .line 10743
    .local v0, fakeKeyDirection:I
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 10751
    :sswitch_0
    const/16 v0, 0x15

    .line 10759
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xe0

    invoke-virtual {v2, v3, v0}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_0

    .line 10745
    :sswitch_1
    const/16 v0, 0x13

    .line 10746
    goto :goto_1

    .line 10748
    :sswitch_2
    const/16 v0, 0x14

    .line 10749
    goto :goto_1

    .line 10754
    :sswitch_3
    const/16 v0, 0x16

    .line 10755
    goto :goto_1

    .line 10743
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_3
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 5
    .parameter "hrefMsg"

    .prologue
    .line 3978
    if-nez p1, :cond_0

    .line 4004
    :goto_0
    return-void

    .line 3985
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v2, :cond_1

    .line 3986
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget v3, v3, Landroid/webkit/WebViewCore$WebKitHitTest;->mHitTestX:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v3

    iput v3, v2, Landroid/webkit/WebViewCore$WebKitHitTest;->mHitTestX:I

    .line 3987
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget v3, v3, Landroid/webkit/WebViewCore$WebKitHitTest;->mHitTestY:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v3

    iput v3, v2, Landroid/webkit/WebViewCore$WebKitHitTest;->mHitTestY:I

    .line 3992
    :cond_1
    iget v2, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 3993
    .local v0, contentX:I
    iget v2, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    .line 3994
    .local v1, contentY:I
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget v2, v2, Landroid/webkit/WebViewCore$WebKitHitTest;->mHitTestX:I

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget v2, v2, Landroid/webkit/WebViewCore$WebKitHitTest;->mHitTestY:I

    if-eq v2, v1, :cond_3

    :cond_2
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mKeyboardEnterPress:Z

    if-eqz v2, :cond_4

    .line 3996
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v4, v4, Landroid/webkit/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3997
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "title"

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v4, v4, Landroid/webkit/WebViewCore$WebKitHitTest;->mAnchorText:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "src"

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v4, v4, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3999
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 4002
    :cond_4
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x89

    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method requestFormData(Ljava/lang/String;IZZ)V
    .locals 8
    .parameter "name"
    .parameter "nodePointer"
    .parameter "autoFillable"
    .parameter "autoComplete"

    .prologue
    .line 6618
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getSaveFormData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6619
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 6620
    .local v4, update:Landroid/os/Message;
    iput p2, v4, Landroid/os/Message;->arg1:I

    .line 6621
    new-instance v0, Landroid/webkit/WebViewClassic$RequestFormData;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewClassic$RequestFormData;-><init>(Landroid/webkit/WebViewClassic;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V

    .line 6623
    .local v0, updater:Landroid/webkit/WebViewClassic$RequestFormData;
    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6624
    .local v7, t:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 6626
    .end local v0           #updater:Landroid/webkit/WebViewClassic$RequestFormData;
    .end local v4           #update:Landroid/os/Message;
    .end local v7           #t:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 4011
    iget v2, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v2, :cond_0

    .line 4017
    :goto_0
    return-void

    .line 4012
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v1, v2, Landroid/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    .line 4013
    .local v1, url:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 4014
    .local v0, data:Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4015
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4016
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 4012
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #url:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method requestListBox([Ljava/lang/String;[II)V
    .locals 7
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selection"

    .prologue
    .line 12653
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebViewClassic$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic$InvokeListBox;-><init>(Landroid/webkit/WebViewClassic;[Ljava/lang/String;[IILandroid/webkit/WebViewClassic$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12655
    return-void
.end method

.method requestListBox([Ljava/lang/String;[I[I)V
    .locals 7
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selectedArray"

    .prologue
    .line 12639
    iget-object v6, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebViewClassic$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic$InvokeListBox;-><init>(Landroid/webkit/WebViewClassic;[Ljava/lang/String;[I[ILandroid/webkit/WebViewClassic$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12641
    return-void
.end method

.method resetTrackballTime()V
    .locals 2

    .prologue
    .line 10259
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebViewClassic;->mTrackballLastTime:J

    .line 10260
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 5
    .parameter "b"
    .parameter "src"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3340
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 3376
    :cond_0
    :goto_0
    return v3

    .line 3343
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3347
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3348
    .local v2, in:Ljava/io/FileInputStream;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3349
    .local v0, copy:Landroid/os/Bundle;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/webkit/WebViewClassic$7;

    invoke-direct {v4, p0, v2, v0}, Landroid/webkit/WebViewClassic$7;-><init>(Landroid/webkit/WebViewClassic;Ljava/io/FileInputStream;Landroid/os/Bundle;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3376
    .end local v0           #copy:Landroid/os/Bundle;
    .end local v2           #in:Ljava/io/FileInputStream;
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 3373
    :catch_0
    move-exception v1

    .line 3374
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 10
    .parameter "inState"

    .prologue
    const/4 v8, 0x0

    .line 3456
    const/4 v6, 0x0

    .line 3457
    .local v6, returnList:Landroid/webkit/WebBackForwardList;
    if-nez p1, :cond_0

    move-object v8, v6

    .line 3504
    :goto_0
    return-object v8

    .line 3460
    :cond_0
    const-string v9, "index"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "history"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3461
    const-string v9, "certificate"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Landroid/net/http/SslCertificate;->restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;

    move-result-object v9

    iput-object v9, p0, Landroid/webkit/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    .line 3464
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v9}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 3465
    .local v5, list:Landroid/webkit/WebBackForwardList;
    const-string v9, "index"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 3469
    .local v3, index:I
    monitor-enter v5

    .line 3470
    :try_start_0
    const-string v9, "history"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3472
    .local v1, history:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 3475
    .local v7, size:I
    if-ltz v3, :cond_1

    if-lt v3, v7, :cond_2

    .line 3476
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 3492
    .end local v1           #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v7           #size:I
    :catchall_0
    move-exception v8

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 3478
    .restart local v1       #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .restart local v7       #size:I
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 3479
    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3480
    .local v0, data:[B
    if-nez v0, :cond_3

    .line 3483
    monitor-exit v5

    goto :goto_0

    .line 3485
    :cond_3
    new-instance v4, Landroid/webkit/WebHistoryItem;

    invoke-direct {v4, v0}, Landroid/webkit/WebHistoryItem;-><init>([B)V

    .line 3486
    .local v4, item:Landroid/webkit/WebHistoryItem;
    invoke-virtual {v5, v4}, Landroid/webkit/WebBackForwardList;->addHistoryItem(Landroid/webkit/WebHistoryItem;)V

    .line 3478
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3489
    .end local v0           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v6

    .line 3491
    invoke-virtual {v6, v3}, Landroid/webkit/WebBackForwardList;->setCurrentIndex(I)V

    .line 3492
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3494
    const-string/jumbo v8, "privateBrowsingEnabled"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3495
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettingsClassic;->setPrivateBrowsingEnabled(Z)V

    .line 3497
    :cond_5
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8, p1}, Landroid/webkit/ZoomManager;->restoreZoomState(Landroid/os/Bundle;)V

    .line 3500
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v8}, Landroid/webkit/WebViewCore;->removeMessages()V

    .line 3502
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v9, 0x6c

    invoke-virtual {v8, v9, v3}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .end local v1           #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v5           #list:Landroid/webkit/WebBackForwardList;
    .end local v7           #size:I
    :cond_6
    move-object v8, v6

    .line 3504
    goto/16 :goto_0
.end method

.method public resumeTimers()V
    .locals 2

    .prologue
    .line 4612
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4613
    return-void
.end method

.method revealSelection()V
    .locals 2

    .prologue
    .line 8300
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    .line 8301
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 8303
    :cond_0
    return-void
.end method

.method public saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "strUrl"
    .parameter "strPath"

    .prologue
    .line 8240
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewCore;->saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 2994
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2995
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 4
    .parameter "b"
    .parameter "dest"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3279
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 3280
    :cond_0
    const/4 v2, 0x0

    .line 3314
    :goto_0
    return v2

    .line 3282
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 3285
    .local v0, p:Landroid/graphics/Picture;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3286
    .local v1, temp:Ljava/io/File;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/webkit/WebViewClassic$6;

    invoke-direct {v3, p0, v1, v0, p2}, Landroid/webkit/WebViewClassic$6;-><init>(Landroid/webkit/WebViewClassic;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 3311
    const-string/jumbo v2, "scrollX"

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3312
    const-string/jumbo v2, "scrollY"

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3313
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2, p1}, Landroid/webkit/ZoomManager;->saveZoomState(Landroid/os/Bundle;)V

    .line 3314
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 10
    .parameter "outState"

    .prologue
    const/4 v7, 0x0

    .line 3228
    if-nez p1, :cond_0

    move-object v5, v7

    .line 3270
    :goto_0
    return-object v5

    .line 3233
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 3234
    .local v5, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 3235
    .local v0, currentIndex:I
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v6

    .line 3238
    .local v6, size:I
    if-ltz v0, :cond_1

    if-ge v0, v6, :cond_1

    if-nez v6, :cond_2

    :cond_1
    move-object v5, v7

    .line 3239
    goto :goto_0

    .line 3241
    :cond_2
    const-string v8, "index"

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3245
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 3246
    .local v2, history:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_5

    .line 3247
    invoke-virtual {v5, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    .line 3248
    .local v4, item:Landroid/webkit/WebHistoryItem;
    if-nez v4, :cond_3

    .line 3251
    const-string/jumbo v8, "webview"

    const-string/jumbo v9, "saveState: Unexpected null history item."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 3252
    goto :goto_0

    .line 3254
    :cond_3
    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getFlattenedData()[B

    move-result-object v1

    .line 3255
    .local v1, data:[B
    if-nez v1, :cond_4

    move-object v5, v7

    .line 3259
    goto :goto_0

    .line 3261
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3246
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3263
    .end local v1           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_5
    const-string v7, "history"

    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3264
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    if-eqz v7, :cond_6

    .line 3265
    const-string v7, "certificate"

    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-static {v8}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3268
    :cond_6
    const-string/jumbo v7, "privateBrowsingEnabled"

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->isPrivateBrowsingEnabled()Z

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3269
    iget-object v7, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7, p1}, Landroid/webkit/ZoomManager;->saveZoomState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public saveViewState(Ljava/io/OutputStream;Landroid/webkit/ValueCallback;)V
    .locals 3
    .parameter "stream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3387
    .local p2, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 3388
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 3393
    :goto_0
    return-void

    .line 3391
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xe1

    new-instance v2, Landroid/webkit/WebViewCore$SaveViewStateRequest;

    invoke-direct {v2, p1, p2}, Landroid/webkit/WebViewCore$SaveViewStateRequest;-><init>(Ljava/io/OutputStream;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 2
    .parameter "filename"

    .prologue
    .line 3615
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/WebViewClassic;->saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 3616
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 0
    .parameter "basename"
    .parameter "autoname"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3636
    .local p3, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 3637
    return-void
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 7386
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 7387
    return-void
.end method

.method public selectAllSec()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 7890
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v1, :cond_1

    .line 7903
    :cond_0
    :goto_0
    return v0

    .line 7891
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->setUpAdvSelect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7895
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 7896
    .local v7, pos:Landroid/graphics/Point;
    const/4 v4, 0x1

    .line 7897
    .local v4, bhaveSelection:Z
    iget v1, v7, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mSmartSelection:Z

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 7900
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x2cc

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7903
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public selectLastTouchText()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 7749
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7781
    :cond_0
    :goto_0
    return v4

    .line 7750
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->setUpAdvSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7755
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mHasFocus:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mEditable:Z

    if-nez v0, :cond_3

    .line 7756
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v0, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v0, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 7757
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v0, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v3, v3, Landroid/webkit/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    div-int/lit8 v1, v0, 0x2

    .line 7758
    .local v1, x:I
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v0, v0, Landroid/webkit/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;

    iget-object v3, v3, Landroid/webkit/WebViewCore$WebKitHitTest;->mTouchRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    div-int/lit8 v2, v0, 0x2

    .line 7759
    .local v2, y:I
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->removeTouchHighlight()V

    .line 7770
    :goto_1
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mSmartSelection:Z

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 7772
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iput v7, p0, Landroid/webkit/WebViewClassic;->mRequestNewSelection:I

    .line 7773
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x2c8

    invoke-virtual {v0, v3, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7778
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->isBrowserApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7779
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->resetTextSelectionTouchHandleFlag()V

    :cond_2
    move v4, v7

    .line 7781
    goto :goto_0

    .line 7764
    .end local v1           #x:I
    .end local v2           #y:I
    .end local v6           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_3
    iget v0, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    .line 7765
    .restart local v1       #x:I
    iget v0, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v2

    .restart local v2       #y:I
    goto :goto_1
.end method

.method public selectText()Z
    .locals 4

    .prologue
    .line 5862
    iget v2, p0, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 5863
    .local v0, x:I
    iget v2, p0, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    .line 5864
    .local v1, y:I
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebViewClassic;->selectText(II)Z

    move-result v2

    return v2
.end method

.method selectText(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5871
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 5872
    const/4 v0, 0x0

    .line 5875
    :goto_0
    return v0

    .line 5874
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd6

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5875
    const/4 v0, 0x1

    goto :goto_0
.end method

.method selectionDone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7393
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mSelectingText:Z

    if-eqz v0, :cond_2

    .line 7394
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hidePasteButton()V

    .line 7395
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->endSelectingText()V

    .line 7397
    iget v0, p0, Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I

    if-eqz v0, :cond_0

    .line 7398
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->updateWebkitSelection()V

    .line 7399
    iput v1, p0, Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I

    .line 7404
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    if-eqz v0, :cond_1

    .line 7405
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/SelectActionModeCallback;->finish()V

    .line 7406
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    .line 7408
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 7409
    iput v1, p0, Landroid/webkit/WebViewClassic;->mAutoScrollX:I

    .line 7410
    iput v1, p0, Landroid/webkit/WebViewClassic;->mAutoScrollY:I

    .line 7411
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mSentAutoScrollMessage:Z

    .line 7413
    :cond_2
    return-void
.end method

.method sendBatchableInputMessage(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 12219
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_0

    .line 12228
    :goto_0
    return-void

    .line 12222
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 12223
    .local v0, message:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsBatchingTextChanges:Z

    if-eqz v1, :cond_1

    .line 12224
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mBatchedTextChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12226
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method sendOurVisibleRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/16 v5, 0x6b

    const/4 v1, 0x0

    .line 4223
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->isPreventingWebkitUpdates()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 4263
    :goto_0
    return-object v1

    .line 4224
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 4226
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4227
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v2, :cond_2

    .line 4229
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4232
    .local v0, pkgName:Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string v2, "com.android.email"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4233
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollOffset:Landroid/graphics/Point;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Point;->set(II)V

    .line 4237
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v2, :cond_2

    .line 4239
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2, v5}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 4240
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mSendScrollEvent:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScrollOffset:Landroid/graphics/Point;

    invoke-virtual {v2, v5, v1, v3}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    .line 4245
    .end local v0           #pkgName:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mLastVisibleRectSent:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4246
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4248
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 4258
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-nez v1, :cond_4

    .line 4259
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x74

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4261
    :cond_4
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mLastGlobalRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4263
    :cond_5
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 4235
    .restart local v0       #pkgName:Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mScrollOffset:Landroid/graphics/Point;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mVisibleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto :goto_1
.end method

.method public sendUnknownKeyEvent()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 7488
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 7489
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v9, -0x1

    const/4 v11, 0x2

    move-wide v3, v1

    move v6, v5

    move v7, v5

    move v8, v5

    move v10, v5

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-direct {p0, v0}, Landroid/webkit/WebViewClassic;->sendKeyEvent(Landroid/view/KeyEvent;)V

    .line 7493
    return-void
.end method

.method sendViewSizeZoom(Z)Z
    .locals 12
    .parameter "force"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4331
    iget-boolean v10, p0, Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z

    if-eqz v10, :cond_1

    .line 4390
    :cond_0
    :goto_0
    return v8

    .line 4332
    :cond_1
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->isPreventingWebkitUpdates()Z

    move-result v10

    if-nez v10, :cond_0

    .line 4334
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v7

    .line 4335
    .local v7, viewWidth:I
    int-to-float v10, v7

    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v11}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v11

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 4337
    .local v4, newWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v10

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v11

    sub-int v6, v10, v11

    .line 4338
    .local v6, viewHeight:I
    int-to-float v10, v6

    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v11}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v11

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 4341
    .local v3, newHeight:I
    int-to-float v10, v6

    int-to-float v11, v7

    div-float v2, v10, v11

    .line 4343
    .local v2, heightWidthRatio:F
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v11}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v11

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 4352
    .local v0, actualViewHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4353
    .local v5, pkgName:Ljava/lang/String;
    iget v10, p0, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    if-le v4, v10, :cond_2

    iget-boolean v10, p0, Landroid/webkit/WebViewClassic;->mWrapContent:Z

    if-eqz v10, :cond_2

    .line 4354
    const/4 v3, 0x0

    .line 4355
    const/4 v2, 0x0

    .line 4361
    iget-boolean v10, p0, Landroid/webkit/WebViewClassic;->mIsMeasureSpecHack:Z

    if-eqz v10, :cond_2

    if-eqz v5, :cond_2

    const-string v10, "com.android.email"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    instance-of v10, v10, Landroid/webkit/HtmlComposerView;

    if-nez v10, :cond_2

    const/16 v10, 0xf0

    if-le v0, v10, :cond_2

    .line 4364
    const/16 v0, 0xf0

    .line 4370
    :cond_2
    iget v10, p0, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    if-ne v4, v10, :cond_3

    iget v10, p0, Landroid/webkit/WebViewClassic;->mLastHeightSent:I

    if-ne v3, v10, :cond_3

    if-nez p1, :cond_3

    iget v10, p0, Landroid/webkit/WebViewClassic;->mLastActualHeightSent:I

    if-eq v0, v10, :cond_0

    .line 4372
    :cond_3
    new-instance v1, Landroid/webkit/WebViewClassic$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebViewClassic$ViewSizeData;-><init>()V

    .line 4373
    .local v1, data:Landroid/webkit/WebViewClassic$ViewSizeData;
    iput v4, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mWidth:I

    .line 4374
    iput v3, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mHeight:I

    .line 4375
    iput v2, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mHeightWidthRatio:F

    .line 4376
    iput v0, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mActualViewHeight:I

    .line 4377
    int-to-float v10, v7

    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v11}, Landroid/webkit/ZoomManager;->getTextWrapScale()F

    move-result v11

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iput v10, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mTextWrapWidth:I

    .line 4378
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v10

    iput v10, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mScale:F

    .line 4379
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-nez v10, :cond_4

    move v8, v9

    :cond_4
    iput-boolean v8, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mIgnoreHeight:Z

    .line 4381
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8}, Landroid/webkit/ZoomManager;->getDocumentAnchorX()I

    move-result v8

    iput v8, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mAnchorX:I

    .line 4382
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8}, Landroid/webkit/ZoomManager;->getDocumentAnchorY()I

    move-result v8

    iput v8, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mAnchorY:I

    .line 4383
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v10, 0x69

    invoke-virtual {v8, v10, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4384
    iput v4, p0, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    .line 4385
    iput v3, p0, Landroid/webkit/WebViewClassic;->mLastHeightSent:I

    .line 4386
    iput v0, p0, Landroid/webkit/WebViewClassic;->mLastActualHeightSent:I

    .line 4387
    iget-object v8, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8}, Landroid/webkit/ZoomManager;->clearDocumentAnchor()V

    move v8, v9

    .line 4388
    goto/16 :goto_0
.end method

.method setActive(Z)V
    .locals 3
    .parameter "active"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8069
    if-eqz p1, :cond_1

    .line 8070
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8073
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 8074
    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->setFocusControllerActive(Z)V

    .line 8105
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 8106
    return-void

    .line 8076
    :cond_0
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 8077
    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->setFocusControllerActive(Z)V

    goto :goto_0

    .line 8080
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isZoomPickerVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8088
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mDrawCursorRing:Z

    .line 8090
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 8091
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8092
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    .line 8095
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mPopupLaunchHitTestType:Z

    if-nez v0, :cond_3

    .line 8097
    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->setFocusControllerActive(Z)V

    goto :goto_0

    .line 8101
    :cond_3
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mPopupLaunchHitTestType:Z

    goto :goto_0
.end method

.method public setAutoTextSelection(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 7839
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mAutoSelection:Z

    .line 7840
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 12772
    iput p1, p0, Landroid/webkit/WebViewClassic;->mBackgroundColor:I

    .line 12773
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 12774
    return-void
.end method

.method setBaseLayer(IZZ)V
    .locals 7
    .parameter "layer"
    .parameter "showVisualIndicator"
    .parameter "isPictureAfterFirstLayout"

    .prologue
    .line 5939
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v0, :cond_1

    .line 5957
    :cond_0
    :goto_0
    return-void

    .line 5942
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewClassic;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    iget v5, p0, Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I

    .line 5944
    .local v5, scrollingLayer:I
    :goto_1
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic;->nativeSetBaseLayer(IIZZI)Z

    move-result v6

    .line 5948
    .local v6, queueFull:Z
    if-eqz v6, :cond_3

    .line 5949
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->pauseWebKitDraw()V

    .line 5954
    :goto_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 5955
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoViewProxy;->setBaseLayer(I)V

    goto :goto_0

    .line 5942
    .end local v5           #scrollingLayer:I
    .end local v6           #queueFull:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 5951
    .restart local v5       #scrollingLayer:I
    .restart local v6       #queueFull:Z
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->resumeWebKitDraw()V

    goto :goto_2
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .parameter "certificate"

    .prologue
    .line 2982
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mCertificate:Landroid/net/http/SslCertificate;

    .line 2983
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 5342
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 5343
    return-void
.end method

.method public setFindListener(Landroid/webkit/WebView$FindListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 4743
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mFindListener:Landroid/webkit/WebView$FindListener;

    .line 4744
    return-void
.end method

.method setFocusControllerActive(Z)V
    .locals 4
    .parameter "active"

    .prologue
    const/4 v1, 0x0

    .line 8145
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_1

    .line 8152
    :cond_0
    :goto_0
    return-void

    .line 8146
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x8e

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 8148
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mListBoxMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 8149
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mListBoxMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 8150
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mListBoxMessage:Landroid/os/Message;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 8146
    goto :goto_1
.end method

.method public setFrame(IIII)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 8245
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/webkit/WebView$PrivateAccess;->super_setFrame(IIII)Z

    move-result v0

    .line 8246
    .local v0, changed:Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-eqz v1, :cond_0

    .line 8253
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic;->sendViewSizeZoom(Z)Z

    .line 8255
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->updateRectsForGL()V

    .line 8256
    return v0
.end method

.method public setHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 12800
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 12801
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 2841
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    .line 2842
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 3003
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewDatabaseClassic;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3004
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1
    .parameter "scaleInPercent"

    .prologue
    .line 3867
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->setInitialScaleInPercent(I)V

    .line 3868
    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 3201
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3202
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .parameter "layerType"
    .parameter "paint"

    .prologue
    .line 12857
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->updateHwAccelerated()V

    .line 12858
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 5737
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 5738
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mWrapContent:Z

    .line 5740
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$PrivateAccess;->super_setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5741
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 0
    .parameter "setMap"

    .prologue
    .line 10255
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mMapTrackballToArrowKeys:Z

    .line 10256
    return-void
.end method

.method public setMeasureSpecHack(Z)V
    .locals 0
    .parameter "hack"

    .prologue
    .line 4315
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mIsMeasureSpecHack:Z

    .line 4316
    return-void
.end method

.method public setMockDeviceOrientation(ZDZDZD)V
    .locals 10
    .parameter "canProvideAlpha"
    .parameter "alpha"
    .parameter "canProvideBeta"
    .parameter "beta"
    .parameter "canProvideGamma"
    .parameter "gamma"

    .prologue
    .line 6734
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebViewCore;->setMockDeviceOrientation(ZDZDZD)V

    .line 6736
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 4
    .parameter "networkUp"

    .prologue
    const/4 v1, 0x0

    .line 3209
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x77

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3211
    return-void

    :cond_0
    move v0, v1

    .line 3209
    goto :goto_0
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 3217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3218
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3219
    const-string/jumbo v1, "subtype"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3220
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xb7

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3221
    return-void
.end method

.method setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V
    .locals 13
    .parameter "draw"
    .parameter "updateBaseLayer"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 12014
    iget v11, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-nez v11, :cond_2

    .line 12015
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    if-eqz v9, :cond_0

    .line 12016
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Tried to setNewPicture with a delay picture already set! (memory leak)"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 12020
    :cond_0
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    .line 12110
    :cond_1
    :goto_0
    return-void

    .line 12023
    :cond_2
    iget-object v8, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 12024
    .local v8, viewState:Landroid/webkit/WebViewCore$ViewState;
    if-eqz v8, :cond_f

    move v2, v9

    .line 12026
    .local v2, isPictureAfterFirstLayout:Z
    :goto_1
    if-eqz p2, :cond_3

    .line 12027
    iget v11, p1, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkit/WebSettingsClassic;->getShowVisualIndicator()Z

    move-result v12

    invoke-virtual {p0, v11, v12, v2}, Landroid/webkit/WebViewClassic;->setBaseLayer(IZZ)V

    .line 12031
    :cond_3
    iget-object v7, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 12036
    .local v7, viewSize:Landroid/graphics/Point;
    iget v11, v7, Landroid/graphics/Point;->x:I

    iget v12, p0, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    if-ne v11, v12, :cond_10

    iget v11, v7, Landroid/graphics/Point;->y:I

    iget v12, p0, Landroid/webkit/WebViewClassic;->mLastHeightSent:I

    if-ne v11, v12, :cond_10

    move v5, v9

    .line 12041
    .local v5, updateLayout:Z
    :goto_2
    iput-boolean v10, p0, Landroid/webkit/WebViewClassic;->mSendScrollEvent:Z

    .line 12042
    iget-object v11, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget-object v12, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v11, v12, v5}, Landroid/webkit/WebViewClassic;->recordNewContentSize(IIZ)V

    .line 12044
    if-eqz v2, :cond_6

    .line 12046
    iput v10, p0, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    .line 12047
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v11, p1}, Landroid/webkit/ZoomManager;->onFirstLayout(Landroid/webkit/WebViewCore$DrawData;)V

    .line 12048
    iget-boolean v11, v8, Landroid/webkit/WebViewCore$ViewState;->mMobileSite:Z

    if-eqz v11, :cond_11

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->canZoomIn()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->canZoomOut()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 12049
    :cond_4
    invoke-direct {p0, v10}, Landroid/webkit/WebViewClassic;->enabledTouchPerformancePatch(Z)V

    .line 12053
    :goto_3
    iget-boolean v11, v8, Landroid/webkit/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    if-eqz v11, :cond_12

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v3

    .line 12055
    .local v3, scrollX:I
    :goto_4
    iget v4, v8, Landroid/webkit/WebViewCore$ViewState;->mScrollY:I

    .line 12056
    .local v4, scrollY:I
    invoke-direct {p0, v3, v4, v10}, Landroid/webkit/WebViewClassic;->contentScrollTo(IIZ)V

    .line 12057
    iget-boolean v11, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-nez v11, :cond_6

    .line 12059
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    instance-of v11, v11, Landroid/webkit/HtmlComposerView;

    if-nez v11, :cond_5

    .line 12060
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V

    .line 12062
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->dismissWebSelectDialog()V

    .line 12066
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_6
    iput-boolean v9, p0, Landroid/webkit/WebViewClassic;->mSendScrollEvent:Z

    .line 12068
    const/4 v1, 0x0

    .line 12069
    .local v1, functor:I
    move v0, v2

    .line 12070
    .local v0, forceInval:Z
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    .line 12071
    .local v6, viewRoot:Landroid/view/ViewRootImpl;
    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v11

    if-eqz v11, :cond_9

    if-eqz v6, :cond_9

    .line 12072
    iget v11, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-direct {p0, v11}, Landroid/webkit/WebViewClassic;->nativeGetDrawGLFunction(I)I

    move-result v1

    .line 12073
    if-eqz v1, :cond_9

    .line 12076
    invoke-virtual {v6, v1}, Landroid/view/ViewRootImpl;->attachFunctor(I)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mLastViewSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget v12, v7, Landroid/graphics/Point;->x:I

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Landroid/webkit/WebViewClassic;->mLastViewSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget v12, v7, Landroid/graphics/Point;->y:I

    if-eq v11, v12, :cond_8

    :cond_7
    move v10, v9

    :cond_8
    or-int/2addr v0, v10

    .line 12083
    :cond_9
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mLastViewSize:Landroid/graphics/Point;

    iget v11, v7, Landroid/graphics/Point;->x:I

    iget v12, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Point;->set(II)V

    .line 12085
    if-eqz v1, :cond_a

    if-nez v0, :cond_a

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getLayerType()I

    move-result v10

    if-eqz v10, :cond_b

    .line 12090
    :cond_a
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->invalidate()V

    .line 12094
    :cond_b
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10, p1}, Landroid/webkit/ZoomManager;->onNewPicture(Landroid/webkit/WebViewCore$DrawData;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 12095
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 12097
    :cond_c
    if-eqz v2, :cond_d

    .line 12098
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v10}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    .line 12100
    :cond_d
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->scrollEditWithCursor()V

    .line 12102
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    if-eqz v10, :cond_1

    .line 12103
    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getLayerType()I

    move-result v10

    if-ne v10, v9, :cond_1

    .line 12107
    :cond_e
    iget-object v9, p0, Landroid/webkit/WebViewClassic;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    goto/16 :goto_0

    .end local v0           #forceInval:Z
    .end local v1           #functor:I
    .end local v2           #isPictureAfterFirstLayout:Z
    .end local v5           #updateLayout:Z
    .end local v6           #viewRoot:Landroid/view/ViewRootImpl;
    .end local v7           #viewSize:Landroid/graphics/Point;
    :cond_f
    move v2, v10

    .line 12024
    goto/16 :goto_1

    .restart local v2       #isPictureAfterFirstLayout:Z
    .restart local v7       #viewSize:Landroid/graphics/Point;
    :cond_10
    move v5, v10

    .line 12036
    goto/16 :goto_2

    .line 12051
    .restart local v5       #updateLayout:Z
    :cond_11
    invoke-direct {p0, v9}, Landroid/webkit/WebViewClassic;->enabledTouchPerformancePatch(Z)V

    goto/16 :goto_3

    .line 12053
    :cond_12
    iget v3, v8, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    goto/16 :goto_4
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 2723
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 2724
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-nez v0, :cond_0

    .line 2725
    new-instance v0, Landroid/webkit/OverScrollGlow;

    invoke-direct {v0, p0}, Landroid/webkit/OverScrollGlow;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    .line 2730
    :cond_0
    :goto_0
    return-void

    .line 2728
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    goto :goto_0
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 0
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5386
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    .line 5387
    return-void
.end method

.method public setPinchZoomListener(Landroid/webkit/PinchZoomListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 5392
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mPinchZoomListener:Landroid/webkit/PinchZoomListener;

    .line 5393
    return-void
.end method

.method public setReaderArticle(Z)V
    .locals 1
    .parameter "isReaderArticle"

    .prologue
    .line 13571
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mReaderArticle:Z

    if-eq v0, p1, :cond_0

    .line 13572
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mReaderArticle:Z

    .line 13573
    :cond_0
    return-void
.end method

.method public setReaderFlag(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 13561
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mReaderFlag:Z

    if-eq v0, p1, :cond_0

    .line 13562
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mReaderFlag:Z

    .line 13563
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 2828
    const/high16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x300

    if-ne p1, v0, :cond_1

    .line 2830
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    .line 2834
    :goto_0
    return-void

    .line 2832
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic;->mOverlayHorizontalScrollbar:Z

    goto :goto_0
.end method

.method setScrollXRaw(I)V
    .locals 1
    .parameter "mScrollX"

    .prologue
    .line 2341
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$PrivateAccess;->setScrollXRaw(I)V

    .line 2342
    return-void
.end method

.method setScrollYRaw(I)V
    .locals 1
    .parameter "mScrollY"

    .prologue
    .line 2345
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$PrivateAccess;->setScrollYRaw(I)V

    .line 2346
    return-void
.end method

.method setSelectedText(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 7598
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->textPoint:Landroid/graphics/Point;

    monitor-enter v1

    .line 7599
    :try_start_0
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->textSelected:Ljava/lang/String;

    .line 7600
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->textPoint:Landroid/graphics/Point;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 7601
    monitor-exit v1

    .line 7602
    return-void

    .line 7601
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setSelection(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 6191
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    .line 6192
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 6194
    :cond_0
    return-void
.end method

.method public setSelectionCallback(Landroid/webkit/SelectActionModeCallbackSec;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 13042
    invoke-virtual {p1, p0}, Landroid/webkit/SelectActionModeCallbackSec;->setWebViewClassic(Landroid/webkit/WebViewClassic;)V

    .line 13043
    iput-object p1, p0, Landroid/webkit/WebViewClassic;->mSelectCallbackUser:Landroid/webkit/SelectActionModeCallbackSec;

    .line 13044
    return-void
.end method

.method setSpellCheckResult(Z)V
    .locals 2
    .parameter "isWordMisspelled"

    .prologue
    .line 11061
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->spellingOfWord:Landroid/graphics/Point;

    monitor-enter v1

    .line 11062
    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->misspelled:Z

    .line 11063
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->spellingOfWord:Landroid/graphics/Point;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 11064
    monitor-exit v1

    .line 11065
    return-void

    .line 11064
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTextSelecitonAt(II)Z
    .locals 4
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 7792
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mAutoSelection:Z

    if-nez v2, :cond_0

    .line 7793
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 7794
    .local v0, contentX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    .line 7795
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebViewClassic;->selectClosestWord(II)Z

    move-result v2

    .line 7797
    .end local v0           #contentX:I
    .end local v1           #contentY:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setTextSelecitonManualAtContentPoint(II)Z
    .locals 8
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 7811
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v0, v7, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mAutoSelection:Z

    if-nez v0, :cond_0

    .line 7812
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->setUpAdvSelect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7828
    :cond_0
    :goto_0
    return v4

    .line 7816
    :cond_1
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mSmartSelection:Z

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 7818
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x2c8

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7822
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_2

    .line 7823
    iput-boolean v7, p0, Landroid/webkit/WebViewClassic;->mWebSelectionOn:Z

    .line 7825
    :cond_2
    iput v7, p0, Landroid/webkit/WebViewClassic;->mRequestNewSelection:I

    move v4, v7

    .line 7826
    goto :goto_0
.end method

.method public setTouchInterval(I)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 12819
    iput p1, p0, Landroid/webkit/WebViewClassic;->mCurrentTouchInterval:I

    .line 12820
    return-void
.end method

.method public setUseMockDeviceOrientation()V
    .locals 2

    .prologue
    .line 6724
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 6725
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 2849
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mOverlayVerticalScrollbar:Z

    .line 2850
    return-void
.end method

.method public setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 5370
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    .line 5371
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 5350
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 5351
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 5324
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 5325
    return-void
.end method

.method public setZoomScaleBegin(Z)V
    .locals 3
    .parameter "setValue"

    .prologue
    .line 5399
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 5400
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setZoomScaleBegin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5402
    :cond_0
    iput-boolean p1, p0, Landroid/webkit/WebViewClassic;->mIsZoomScaleBegin:Z

    .line 5403
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 2623
    const/4 v0, 0x1

    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "text"
    .parameter "showIme"

    .prologue
    const/4 v1, 0x1

    .line 4804
    new-instance v0, Landroid/webkit/FindActionModeCallback;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/webkit/FindActionModeCallback;-><init>(Landroid/content/Context;)V

    .line 4805
    .local v0, callback:Landroid/webkit/FindActionModeCallback;
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    if-nez v2, :cond_2

    .line 4807
    :cond_0
    const/4 v1, 0x0

    .line 4827
    :cond_1
    :goto_0
    return v1

    .line 4809
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/WebViewClassic;->mCachedOverlappingActionModeHeight:I

    .line 4810
    iput-object v0, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    .line 4811
    invoke-direct {p0, v1}, Landroid/webkit/WebViewClassic;->setFindIsUp(Z)V

    .line 4812
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2, p0}, Landroid/webkit/FindActionModeCallback;->setWebView(Landroid/webkit/WebViewClassic;)V

    .line 4813
    if-eqz p2, :cond_5

    .line 4814
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2}, Landroid/webkit/FindActionModeCallback;->showSoftInput()V

    .line 4820
    :cond_3
    if-nez p1, :cond_4

    .line 4821
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    if-nez v2, :cond_6

    const/4 p1, 0x0

    .line 4823
    :cond_4
    :goto_1
    if-eqz p1, :cond_1

    .line 4824
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2, p1}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    .line 4825
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2}, Landroid/webkit/FindActionModeCallback;->findAll()V

    goto :goto_0

    .line 4815
    :cond_5
    if-eqz p1, :cond_3

    .line 4816
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2, p1}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    .line 4817
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2}, Landroid/webkit/FindActionModeCallback;->findAll()V

    goto :goto_0

    .line 4821
    :cond_6
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;

    iget-object p1, v2, Landroid/webkit/WebViewCore$FindAllRequest;->mSearchText:Ljava/lang/String;

    goto :goto_1
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 3652
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 3653
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3654
    return-void
.end method

.method public stopScroll()V
    .locals 2

    .prologue
    .line 4943
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 4944
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mLastVelocity:F

    .line 4945
    return-void
.end method

.method switchOutDrawHistory()V
    .locals 5

    .prologue
    .line 6152
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v2, :cond_1

    .line 6167
    :cond_0
    :goto_0
    return-void

    .line 6153
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeHasContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6154
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewClassic;->mDrawHistory:Z

    .line 6155
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebViewClassic;->mHistoryPicture:Landroid/graphics/Picture;

    .line 6156
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 6157
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    .line 6158
    .local v0, oldScrollX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    .line 6159
    .local v1, oldScrollY:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->setScrollXRaw(I)V

    .line 6160
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic;->setScrollYRaw(I)V

    .line 6161
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 6162
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/webkit/WebView$PrivateAccess;->onScrollChanged(IIII)V

    goto :goto_0

    .line 6164
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public tileProfilingClear()V
    .locals 0

    .prologue
    .line 12896
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeTileProfilingClear()V

    .line 12897
    return-void
.end method

.method public tileProfilingGetFloat(IILjava/lang/String;)F
    .locals 1
    .parameter "frame"
    .parameter "tile"
    .parameter "key"

    .prologue
    .line 12912
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->nativeTileProfilingGetFloat(IILjava/lang/String;)F

    move-result v0

    return v0
.end method

.method public tileProfilingGetInt(IILjava/lang/String;)I
    .locals 1
    .parameter "frame"
    .parameter "tile"
    .parameter "key"

    .prologue
    .line 12908
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->nativeTileProfilingGetInt(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public tileProfilingNumFrames()I
    .locals 1

    .prologue
    .line 12900
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeTileProfilingNumFrames()I

    move-result v0

    return v0
.end method

.method public tileProfilingNumTilesInFrame(I)I
    .locals 1
    .parameter "frame"

    .prologue
    .line 12904
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic;->nativeTileProfilingNumTilesInFrame(I)I

    move-result v0

    return v0
.end method

.method public tileProfilingStart()V
    .locals 0

    .prologue
    .line 12883
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeTileProfilingStart()V

    .line 12884
    return-void
.end method

.method public tileProfilingStop()F
    .locals 1

    .prologue
    .line 12891
    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->nativeTileProfilingStop()F

    move-result v0

    return v0
.end method

.method public unmarkWord(Ljava/lang/String;)V
    .locals 2
    .parameter "word"

    .prologue
    .line 11052
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 11058
    :goto_0
    return-void

    .line 11057
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xf0

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method updateDefaultZoomDensity(F)V
    .locals 1
    .parameter "density"

    .prologue
    .line 2741
    const/high16 v0, 0x4080

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebViewClassic;->mNavSlop:I

    .line 2743
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateDefaultZoomDensity(F)V

    .line 2744
    return-void
.end method

.method updateDoubleTapZoom(I)V
    .locals 1
    .parameter "doubleTapZoom"

    .prologue
    .line 4397
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateDoubleTapZoom(I)V

    .line 4398
    return-void
.end method

.method updateDrawingState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4644
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewClassic;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 4652
    :cond_0
    :goto_0
    return-void

    .line 4645
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 4646
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    goto :goto_0

    .line 4647
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 4648
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    goto :goto_0

    .line 4650
    :cond_3
    iget v0, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V

    goto :goto_0
.end method

.method updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 2567
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 2568
    return-void
.end method

.method updateRectsForGL()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 8183
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRectOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v10

    .line 8184
    .local v10, visible:Z
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8185
    if-eqz v10, :cond_1

    .line 8187
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v7

    .line 8188
    .local v7, rootView:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 8189
    .local v8, rootViewHeight:I
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8190
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    .line 8191
    .local v9, savedWebViewBottom:I
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v8, v2

    invoke-direct {p0}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 8192
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    sub-int v2, v8, v9

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 8193
    iput-boolean v4, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    .line 8198
    .end local v7           #rootView:Landroid/view/View;
    .end local v8           #rootViewHeight:I
    .end local v9           #savedWebViewBottom:I
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRectOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRectOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 8199
    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentVisibleRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 8202
    const/4 v6, 0x0

    .line 8204
    .local v6, extras:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8205
    if-ne v6, v4, :cond_0

    .line 8206
    const/4 v6, 0x0

    .line 8215
    :cond_0
    :goto_1
    iget v1, p0, Landroid/webkit/WebViewClassic;->mNativeClass:I

    iget-boolean v2, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mInvScreenRect:Landroid/graphics/Rect;

    :goto_2
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/webkit/WebViewClassic;->mScreenRect:Landroid/graphics/Rect;

    :goto_3
    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewClassic;->nativeUpdateDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)V

    .line 8219
    return-void

    .line 8195
    .end local v6           #extras:I
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewClassic;->mIsWebViewVisible:Z

    goto :goto_0

    .line 8210
    .restart local v6       #extras:I
    :cond_2
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mFindIsUp:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic;->mShowTextSelectionExtra:Z

    if-eqz v1, :cond_0

    .line 8211
    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v0

    .line 8215
    goto :goto_2

    :cond_4
    move-object v3, v0

    goto :goto_3
.end method

.method updateScrollCoordinates(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 10468
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v0

    .line 10469
    .local v0, oldX:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    .line 10470
    .local v1, oldY:I
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->setScrollXRaw(I)V

    .line 10471
    invoke-virtual {p0, p2}, Landroid/webkit/WebViewClassic;->setScrollYRaw(I)V

    .line 10472
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 10473
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/webkit/WebView$PrivateAccess;->onScrollChanged(IIII)V

    .line 10474
    const/4 v2, 0x1

    .line 10476
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method viewToContentDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 4058
    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method viewToContentX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 4066
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentXf(I)F
    .locals 2
    .parameter "x"

    .prologue
    .line 4086
    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method viewToContentY(I)I
    .locals 1
    .parameter "y"

    .prologue
    .line 4075
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentYf(I)F
    .locals 2
    .parameter "y"

    .prologue
    .line 4098
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 10642
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 10650
    iget-object v0, p0, Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->zoomOut()Z

    move-result v0

    return v0
.end method
