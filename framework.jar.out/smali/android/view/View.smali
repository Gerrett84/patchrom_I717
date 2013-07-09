.class public Landroid/view/View;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Drawable$Callback2;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/accessibility/AccessibilityEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$AccessibilityDelegate;,
        Landroid/view/View$SendViewScrolledAccessibilityEvent;,
        Landroid/view/View$ScrollabilityCache;,
        Landroid/view/View$AttachInfo;,
        Landroid/view/View$BaseSavedState;,
        Landroid/view/View$UnsetPressedState;,
        Landroid/view/View$OnAttachStateChangeListener;,
        Landroid/view/View$OnSystemUiVisibilityChangeListener;,
        Landroid/view/View$OnCreateContextMenuListener;,
        Landroid/view/View$OnClickListener;,
        Landroid/view/View$OnFocusChangeListener;,
        Landroid/view/View$OnDragListener;,
        Landroid/view/View$OnLongClickListener;,
        Landroid/view/View$OnGenericMotionListener;,
        Landroid/view/View$OnHoverListener;,
        Landroid/view/View$OnTouchListener;,
        Landroid/view/View$OnKeyListener;,
        Landroid/view/View$PerformClick;,
        Landroid/view/View$CheckForTap;,
        Landroid/view/View$CheckForLongPress;,
        Landroid/view/View$MeasureSpec;,
        Landroid/view/View$DragShadowBuilder;,
        Landroid/view/View$OnLayoutChangeListener;,
        Landroid/view/View$ListenerInfo;,
        Landroid/view/View$TransformationInfo;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CURSOR_POSITION_UNDEFINED:I = -0x1

.field public static final ACCESSIBILITY_FOCUSABLE_AUTO:I = 0x0

.field static final ACCESSIBILITY_FOCUSABLE_DEFAULT:I = 0x0

.field static final ACCESSIBILITY_FOCUSABLE_MASK:I = 0x60000000

.field public static final ACCESSIBILITY_FOCUSABLE_NO:I = 0x2

.field static final ACCESSIBILITY_FOCUSABLE_SHIFT:I = 0x1d

.field public static final ACCESSIBILITY_FOCUSABLE_YES:I = 0x1

.field static final ACCESSIBILITY_FOCUSED:I = 0x4000000

.field public static final ACCESSIBILITY_FOCUS_BACKWARD:I = 0x1001

.field public static final ACCESSIBILITY_FOCUS_DOWN:I = 0x1082

.field public static final ACCESSIBILITY_FOCUS_FORWARD:I = 0x1002

.field public static final ACCESSIBILITY_FOCUS_LEFT:I = 0x1011

.field public static final ACCESSIBILITY_FOCUS_RIGHT:I = 0x1042

.field public static final ACCESSIBILITY_FOCUS_UP:I = 0x1021

.field static final ACCESSIBILITY_STATE_CHANGED:I = 0x8000000

.field static final ACTIVATED:I = 0x40000000

.field public static final ALPHA:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final ALPHA_SET:I = 0x40000

.field static final ANIMATION_STARTED:I = 0x10000

.field private static final AWAKEN_SCROLL_BARS_ON_ATTACH:I = 0x8000000

.field static final CANCEL_NEXT_UP_EVENT:I = 0x4000000

.field static final CLICKABLE:I = 0x4000

.field private static final DBG:Z = false

.field public static final DEBUG_LAYOUT_PROPERTY:Ljava/lang/String; = "debug.layout"

.field static final DIRTY:I = 0x200000

.field static final DIRTY_MASK:I = 0x600000

.field static final DIRTY_OPAQUE:I = 0x400000

.field static final DISABLED:I = 0x20

.field static final DRAG_CAN_ACCEPT:I = 0x1

.field public static final DRAG_FLAG_GLOBAL:I = 0x1

.field static final DRAG_HOVERED:I = 0x2

.field static final DRAG_MASK:I = 0x3

.field static final DRAWABLE_STATE_DIRTY:I = 0x400

.field static final DRAWING_CACHE_ENABLED:I = 0x8000

.field public static final DRAWING_CACHE_QUALITY_AUTO:I = 0x0

.field private static final DRAWING_CACHE_QUALITY_FLAGS:[I = null

.field public static final DRAWING_CACHE_QUALITY_HIGH:I = 0x100000

.field public static final DRAWING_CACHE_QUALITY_LOW:I = 0x80000

.field static final DRAWING_CACHE_QUALITY_MASK:I = 0x180000

.field static final DRAWING_CACHE_VALID:I = 0x8000

.field static final DRAWN:I = 0x20

.field static final DRAW_ANIMATION:I = 0x40

.field static final DRAW_MASK:I = 0x80

.field static final DUPLICATE_PARENT_STATE:I = 0x400000

.field protected static final EMPTY_STATE_SET:[I = null

.field static final ENABLED:I = 0x0

.field protected static final ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final ENABLED_MASK:I = 0x20

.field protected static final ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_STATE_SET:[I = null

.field protected static final ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final FADING_EDGE_HORIZONTAL:I = 0x1000

.field static final FADING_EDGE_MASK:I = 0x3000

.field static final FADING_EDGE_NONE:I = 0x0

.field static final FADING_EDGE_VERTICAL:I = 0x2000

.field static final FILTER_TOUCHES_WHEN_OBSCURED:I = 0x400

.field public static final FIND_VIEWS_WITH_ACCESSIBILITY_NODE_PROVIDERS:I = 0x4

.field public static final FIND_VIEWS_WITH_CONTENT_DESCRIPTION:I = 0x2

.field public static final FIND_VIEWS_WITH_TEXT:I = 0x1

.field private static final FITS_SYSTEM_WINDOWS:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field public static final FOCUSABLES_ACCESSIBILITY:I = 0x2

.field public static final FOCUSABLES_ALL:I = 0x0

.field public static final FOCUSABLES_TOUCH_MODE:I = 0x1

.field static final FOCUSABLE_IN_TOUCH_MODE:I = 0x40000

.field private static final FOCUSABLE_MASK:I = 0x1

.field static final FOCUSED:I = 0x2

.field protected static final FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field public static final FOCUS_ACCESSIBILITY:I = 0x1000

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field static final FORCE_LAYOUT:I = 0x1000

.field public static final FORCE_SIZE_CHANGED_REQUIRED:I = 0x10000

.field public static final GONE:I = 0x8

.field public static final HAPTIC_FEEDBACK_ENABLED:I = 0x10000000

.field static final HAS_BOUNDS:I = 0x10

.field static final HAS_TRANSIENT_STATE:I = 0x100

.field private static final HOVERED:I = 0x10000000

.field private static final HOVERING_UI_DISABLED:I = 0x2

.field private static final HOVERING_UI_ENABLED:I = 0x1

.field private static final HOVERING_UI_MASK:I = 0xf

.field private static final HOVERING_UI_NOT_DECIDED:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field static final IMPORTANT_FOR_ACCESSIBILITY_DEFAULT:I = 0x0

.field static final IMPORTANT_FOR_ACCESSIBILITY_MASK:I = 0x300000

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field static final IMPORTANT_FOR_ACCESSIBILITY_SHIFT:I = 0x14

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field static final INVALIDATED:I = -0x80000000

.field public static final INVISIBLE:I = 0x4

.field static final IS_ROOT_NAMESPACE:I = 0x8

.field public static final KEEP_SCREEN_ON:I = 0x4000000

.field public static final LAYER_TYPE_HARDWARE:I = 0x2

.field public static final LAYER_TYPE_NONE:I = 0x0

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1

.field private static final LAYOUT_DIRECTION_DEFAULT:I = 0x2

.field private static final LAYOUT_DIRECTION_FLAGS:[I = null

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field static final LAYOUT_DIRECTION_MASK:I = 0xc

.field static final LAYOUT_DIRECTION_MASK_SHIFT:I = 0x2

.field static final LAYOUT_DIRECTION_RESOLVED:I = 0x20

.field static final LAYOUT_DIRECTION_RESOLVED_MASK:I = 0x30

.field static final LAYOUT_DIRECTION_RESOLVED_RTL:I = 0x10

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field static final LAYOUT_REQUIRED:I = 0x2000

.field static final LONG_CLICKABLE:I = 0x200000

.field static final MEASURED_DIMENSION_SET:I = 0x800

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10

.field public static final MEASURED_SIZE_MASK:I = 0xffffff

.field public static final MEASURED_STATE_MASK:I = -0x1000000

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000

.field private static final NONZERO_EPSILON:F = 0.001f

.field private static final NOT_FOCUSABLE:I = 0x0

.field public static final NO_ID:I = -0x1

.field static final ONLY_DRAWS_BACKGROUND:I = 0x100

.field static final OPAQUE_BACKGROUND:I = 0x800000

.field static final OPAQUE_MASK:I = 0x1800000

.field static final OPAQUE_SCROLLBARS:I = 0x1000000

.field static final OPTIONAL_FITS_SYSTEM_WINDOWS:I = 0x800

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2

.field static final PARENT_SAVE_DISABLED:I = 0x20000000

.field static final PARENT_SAVE_DISABLED_MASK:I = 0x20000000

.field private static final PIVOT_EXPLICITLY_SET:I = 0x20000000

.field private static final POPULATING_ACCESSIBILITY_EVENT_TYPES:I = 0x2a1bf

.field private static final PREPRESSED:I = 0x2000000

.field private static final PRESSED:I = 0x4000

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_STATE_SET:[I = null

.field protected static final PRESSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field public static final PUBLIC_STATUS_BAR_VISIBILITY_MASK:I = 0xffff

.field static final REQUEST_TRANSPARENT_REGIONS:I = 0x200

.field public static final ROTATION:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_X:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_Y:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final SAVE_DISABLED:I = 0x10000

.field static final SAVE_DISABLED_MASK:I = 0x10000

.field private static final SAVE_STATE_CALLED:I = 0x20000

.field public static final SCALE_X:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_Y:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREEN_STATE_OFF:I = 0x0

.field public static final SCREEN_STATE_ON:I = 0x1

.field static final SCROLLBARS_HORIZONTAL:I = 0x100

.field static final SCROLLBARS_INSET_MASK:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_INSET:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_OVERLAY:I = 0x0

.field static final SCROLLBARS_MASK:I = 0x300

.field static final SCROLLBARS_NONE:I = 0x0

.field public static final SCROLLBARS_OUTSIDE_INSET:I = 0x3000000

.field static final SCROLLBARS_OUTSIDE_MASK:I = 0x2000000

.field public static final SCROLLBARS_OUTSIDE_OVERLAY:I = 0x2000000

.field static final SCROLLBARS_STYLE_MASK:I = 0x3000000

.field static final SCROLLBARS_VERTICAL:I = 0x200

.field public static final SCROLLBAR_POSITION_DEFAULT:I = 0x0

.field public static final SCROLLBAR_POSITION_LEFT:I = 0x1

.field public static final SCROLLBAR_POSITION_RIGHT:I = 0x2

.field static final SCROLL_CONTAINER:I = 0x80000

.field static final SCROLL_CONTAINER_ADDED:I = 0x100000

.field static final SELECTED:I = 0x4

.field protected static final SELECTED_STATE_SET:[I = null

.field protected static final SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final SKIP_DRAW:I = 0x80

.field public static final SOUND_EFFECTS_ENABLED:I = 0x8000000

.field public static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field public static final STATUS_BAR_DISABLE_CAPTURE:I = 0x2000000

.field public static final STATUS_BAR_DISABLE_CLOCK:I = 0x800000

.field public static final STATUS_BAR_DISABLE_EXPAND:I = 0x10000

.field public static final STATUS_BAR_DISABLE_HOME:I = 0x200000

.field public static final STATUS_BAR_DISABLE_NAVIGATION:I = 0x7200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_TICKER:I = 0x80000

.field public static final STATUS_BAR_DISABLE_RECENT:I = 0x1000000

.field public static final STATUS_BAR_DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final STATUS_BAR_DISABLE_TRAY:I = 0x4000000

.field public static final STATUS_BAR_HIDDEN:I = 0x1

.field public static final STATUS_BAR_VISIBLE:I = 0x0

.field public static final SYSTEM_UI_CLEARABLE_FLAGS:I = 0x7

.field public static final SYSTEM_UI_FLAG_FULLSCREEN:I = 0x4

.field public static final SYSTEM_UI_FLAG_HIDE_NAVIGATION:I = 0x2

.field public static final SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN:I = 0x400

.field public static final SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION:I = 0x200

.field public static final SYSTEM_UI_FLAG_LAYOUT_STABLE:I = 0x100

.field public static final SYSTEM_UI_FLAG_LOW_PROFILE:I = 0x1

.field public static final SYSTEM_UI_FLAG_REMOVE_NAVIGATION:I = 0x8

.field public static final SYSTEM_UI_FLAG_VISIBLE:I = 0x0

.field public static final SYSTEM_UI_LAYOUT_FLAGS:I = 0x600

.field private static final TEXTSELECTION_DISABLED:I = 0x20

.field private static final TEXTSELECTION_ENABLED:I = 0x10

.field private static final TEXTSELECTION_MASK:I = 0xf0

.field private static final TEXTSELECTION_NOT_DECIDED:I = 0x0

.field public static final TEXT_ALIGNMENT_CENTER:I = 0x4

.field protected static TEXT_ALIGNMENT_DEFAULT:I = 0x0

.field private static final TEXT_ALIGNMENT_FLAGS:[I = null

.field public static final TEXT_ALIGNMENT_GRAVITY:I = 0x1

.field public static final TEXT_ALIGNMENT_INHERIT:I = 0x0

.field static final TEXT_ALIGNMENT_MASK:I = 0xe000

.field static final TEXT_ALIGNMENT_MASK_SHIFT:I = 0xd

.field static final TEXT_ALIGNMENT_RESOLVED:I = 0x10000

.field public static final TEXT_ALIGNMENT_RESOLVED_DEFAULT:I = 0x20000

.field static final TEXT_ALIGNMENT_RESOLVED_MASK:I = 0xe0000

.field static final TEXT_ALIGNMENT_RESOLVED_MASK_SHIFT:I = 0x11

.field public static final TEXT_ALIGNMENT_TEXT_END:I = 0x3

.field public static final TEXT_ALIGNMENT_TEXT_START:I = 0x2

.field public static final TEXT_ALIGNMENT_VIEW_END:I = 0x6

.field public static final TEXT_ALIGNMENT_VIEW_START:I = 0x5

.field public static final TEXT_DIRECTION_ANY_RTL:I = 0x2

.field protected static TEXT_DIRECTION_DEFAULT:I = 0x0

.field public static final TEXT_DIRECTION_FIRST_STRONG:I = 0x1

.field private static final TEXT_DIRECTION_FLAGS:[I = null

.field public static final TEXT_DIRECTION_INHERIT:I = 0x0

.field public static final TEXT_DIRECTION_LOCALE:I = 0x5

.field public static final TEXT_DIRECTION_LTR:I = 0x3

.field static final TEXT_DIRECTION_MASK:I = 0x1c0

.field static final TEXT_DIRECTION_MASK_SHIFT:I = 0x6

.field static final TEXT_DIRECTION_RESOLVED:I = 0x200

.field static final TEXT_DIRECTION_RESOLVED_DEFAULT:I = 0x400

.field static final TEXT_DIRECTION_RESOLVED_MASK:I = 0x1c00

.field static final TEXT_DIRECTION_RESOLVED_MASK_SHIFT:I = 0xa

.field public static final TEXT_DIRECTION_RTL:I = 0x4

.field public static final TRANSLATION_X:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATION_Y:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final VIEW_IS_ANIMATING_ALPHA:I = 0x2

.field static final VIEW_IS_ANIMATING_TRANSFORM:I = 0x1

.field protected static final VIEW_LOG_TAG:Ljava/lang/String; = "View"

.field static final VIEW_QUICK_REJECTED:I = 0x10000000

.field static final VIEW_STATE_ACCELERATED:I = 0x40

.field static final VIEW_STATE_ACTIVATED:I = 0x20

.field static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field static final VIEW_STATE_ENABLED:I = 0x8

.field static final VIEW_STATE_FOCUSED:I = 0x4

.field static final VIEW_STATE_HOVERED:I = 0x80

.field static final VIEW_STATE_IDS:[I = null

.field static final VIEW_STATE_PRESSED:I = 0x10

.field static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I = null

.field static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field private static final VISIBILITY_FLAGS:[I = null

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I = 0x0

.field static final WANTS_FOCUS:I = 0x1

.field static final WILL_NOT_CACHE_DRAWING:I = 0x20000

.field static final WILL_NOT_DRAW:I = 0x80

.field protected static final WINDOW_FOCUSED_STATE_SET:[I

.field public static final X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static mScrollBarPositionPadding:I

.field private static sHoverUIEnableFlag:I

.field private static sNextAccessibilityViewId:I

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isPenSideButton:Z

.field private mAccessibilityCursorPosition:I

.field mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field mAccessibilityViewId:I

.field private mAnimator:Landroid/view/ViewPropertyAnimator;

.field mAttachInfo:Landroid/view/View$AttachInfo;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBackgroundSizeChanged:Z

.field protected mBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public mCachingFailed:Z

.field private mContentDescription:Ljava/lang/CharSequence;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentAnimation:Landroid/view/animation/Animation;

.field private mDisablePenGestureforfactorytest:Z

.field mDisplayList:Landroid/view/DisplayList;

.field private mDrawableState:[I

.field private mDrawingCache:Landroid/graphics/Bitmap;

.field private mDrawingCacheBackgroundColor:I

.field private mEnablePenGesture:Z

.field private mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

.field private mHardwareLayer:Landroid/view/HardwareLayer;

.field private mHasPerformedLongPress:Z

.field protected mHoverPopup:Landroid/widget/HoverPopupWindow;

.field protected mHoverPopupType:I

.field mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field mIsSetContextMenuZOrderToTop:Z

.field private mKeyedTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLastIsOpaque:Z

.field mLayerPaint:Landroid/graphics/Paint;

.field mLayerType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "SOFTWARE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "HARDWARE"
            .end subannotation
        }
    .end annotation
.end field

.field private mLayoutInsets:Landroid/graphics/Insets;

.field protected mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mListViewItemTag:Ljava/lang/Object;

.field mListenerInfo:Landroid/view/View$ListenerInfo;

.field mLocalDirtyRect:Landroid/graphics/Rect;

.field mMeasuredHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field mMeasuredWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mNeededToChangedScrollBarPosition:Z

.field private mNextFocusDownId:I

.field mNextFocusForwardId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field mOldHeightMeasureSpec:I

.field mOldWidthMeasureSpec:I

.field private mOverScrollMode:I

.field protected mPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mParent:Landroid/view/ViewParent;

.field private mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/view/View$CheckForTap;

.field private mPerformClick:Landroid/view/View$PerformClick;

.field mPrivateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_LAYOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "LAYOUT_REQUIRED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "DRAWING_CACHE_INVALID"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "DRAWN"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_DRAWN"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x600000
                name = "DIRTY_OPAQUE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x600000
                name = "DIRTY"
            .end subannotation
        }
    .end annotation
.end field

.field mPrivateFlags2:I

.field mPrivateFlags3:I

.field mRecreateDisplayList:Z

.field private final mResources:Landroid/content/res/Resources;

.field protected mRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mScrollCache:Landroid/view/View$ScrollabilityCache;

.field protected mScrollX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected mScrollY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field private mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

.field private mSendingHoverAccessibilityEvents:Z

.field mSystemUiVisibility:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "SYSTEM_UI_FLAG_LOW_PROFILE"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "SYSTEM_UI_FLAG_HIDE_NAVIGATION"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "SYSTEM_UI_FLAG_REMOVE_NAVIGATION"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0xffff
                name = "SYSTEM_UI_FLAG_VISIBLE"
                outputIf = true
            .end subannotation
        }
    .end annotation
.end field

.field protected mTag:Ljava/lang/Object;

.field protected mTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mTouchDelegate:Landroid/view/TouchDelegate;

.field private mTouchSlop:I

.field mTransformationInfo:Landroid/view/View$TransformationInfo;

.field mTransientStateCount:I

.field private mUnscaledDrawingCache:Landroid/graphics/Bitmap;

.field private mUnsetPressedState:Landroid/view/View$UnsetPressedState;

.field protected mUserPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingEnd:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mUserPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingRelative:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mUserPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingStart:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mVerticalScrollFactor:F

.field private mVerticalScrollbarPosition:I

.field mViewFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mWindowAttachCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 740
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    sput-object v9, Landroid/view/View;->VISIBILITY_FLAGS:[I

    .line 895
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_1

    sput-object v9, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    .line 1422
    const/16 v9, 0x14

    new-array v9, v9, [I

    fill-array-data v9, :array_2

    sput-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    .line 1436
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v9, v9, 0x2

    sget-object v10, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v10, v10

    if-eq v9, v10, :cond_0

    .line 1437
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1440
    :cond_0
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    new-array v4, v9, [I

    .line 1441
    .local v4, orderedIds:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v9, v9

    if-ge v1, v9, :cond_3

    .line 1442
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    aget v8, v9, v1

    .line 1443
    .local v8, viewState:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    if-ge v2, v9, :cond_2

    .line 1444
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    aget v9, v9, v2

    if-ne v9, v8, :cond_1

    .line 1445
    mul-int/lit8 v9, v1, 0x2

    aput v8, v4, v9

    .line 1446
    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    sget-object v10, Landroid/view/View;->VIEW_STATE_IDS:[I

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    aput v10, v4, v9

    .line 1443
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 1441
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1450
    .end local v2           #j:I
    .end local v8           #viewState:I
    :cond_3
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v0, v9, 0x2

    .line 1451
    .local v0, NUM_BITS:I
    const/4 v9, 0x1

    shl-int/2addr v9, v0

    new-array v9, v9, [[I

    sput-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    .line 1452
    const/4 v1, 0x0

    :goto_2
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    array-length v9, v9

    if-ge v1, v9, :cond_6

    .line 1453
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 1454
    .local v3, numBits:I
    new-array v7, v3, [I

    .line 1455
    .local v7, set:[I
    const/4 v5, 0x0

    .line 1456
    .local v5, pos:I
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_3
    array-length v9, v4

    if-ge v2, v9, :cond_5

    .line 1457
    add-int/lit8 v9, v2, 0x1

    aget v9, v4, v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_4

    .line 1458
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pos:I
    .local v6, pos:I
    aget v9, v4, v2

    aput v9, v7, v5

    move v5, v6

    .line 1456
    .end local v6           #pos:I
    .restart local v5       #pos:I
    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 1461
    :cond_5
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aput-object v7, v9, v1

    .line 1452
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1464
    .end local v2           #j:I
    .end local v3           #numBits:I
    .end local v5           #pos:I
    .end local v7           #set:[I
    :cond_6
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 1465
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x1

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    .line 1466
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x2

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->SELECTED_STATE_SET:[I

    .line 1467
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x3

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1469
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x4

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_STATE_SET:[I

    .line 1470
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x5

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1472
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x6

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    .line 1474
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x7

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1477
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x8

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 1478
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x9

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1480
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xa

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    .line 1482
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xb

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1485
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xc

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    .line 1487
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xd

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1490
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xe

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1493
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xf

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1497
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x10

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_STATE_SET:[I

    .line 1498
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x11

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1500
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x12

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    .line 1502
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x13

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1505
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x14

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    .line 1507
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x15

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1510
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x16

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1513
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x17

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1516
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x18

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    .line 1518
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x19

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1521
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1a

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 1524
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1b

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1527
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1c

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 1530
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1d

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1533
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1e

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1536
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1f

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1563
    new-instance v9, Ljava/lang/ThreadLocal;

    invoke-direct {v9}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v9, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 1881
    const/4 v9, 0x4

    new-array v9, v9, [I

    fill-array-data v9, :array_3

    sput-object v9, Landroid/view/View;->LAYOUT_DIRECTION_FLAGS:[I

    .line 1948
    const/4 v9, 0x0

    sput v9, Landroid/view/View;->TEXT_DIRECTION_DEFAULT:I

    .line 1967
    const/4 v9, 0x6

    new-array v9, v9, [I

    fill-array-data v9, :array_4

    sput-object v9, Landroid/view/View;->TEXT_DIRECTION_FLAGS:[I

    .line 2063
    const/4 v9, 0x1

    sput v9, Landroid/view/View;->TEXT_ALIGNMENT_DEFAULT:I

    .line 2082
    const/4 v9, 0x7

    new-array v9, v9, [I

    fill-array-data v9, :array_5

    sput-object v9, Landroid/view/View;->TEXT_ALIGNMENT_FLAGS:[I

    .line 11569
    const/4 v9, 0x0

    sput v9, Landroid/view/View;->mScrollBarPositionPadding:I

    .line 16953
    new-instance v9, Landroid/view/View$4;

    const-string v10, "alpha"

    invoke-direct {v9, v10}, Landroid/view/View$4;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 16969
    new-instance v9, Landroid/view/View$5;

    const-string/jumbo v10, "translationX"

    invoke-direct {v9, v10}, Landroid/view/View$5;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 16985
    new-instance v9, Landroid/view/View$6;

    const-string/jumbo v10, "translationY"

    invoke-direct {v9, v10}, Landroid/view/View$6;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 17001
    new-instance v9, Landroid/view/View$7;

    const-string/jumbo v10, "x"

    invoke-direct {v9, v10}, Landroid/view/View$7;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->X:Landroid/util/Property;

    .line 17017
    new-instance v9, Landroid/view/View$8;

    const-string/jumbo v10, "y"

    invoke-direct {v9, v10}, Landroid/view/View$8;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->Y:Landroid/util/Property;

    .line 17033
    new-instance v9, Landroid/view/View$9;

    const-string/jumbo v10, "rotation"

    invoke-direct {v9, v10}, Landroid/view/View$9;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 17049
    new-instance v9, Landroid/view/View$10;

    const-string/jumbo v10, "rotationX"

    invoke-direct {v9, v10}, Landroid/view/View$10;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    .line 17065
    new-instance v9, Landroid/view/View$11;

    const-string/jumbo v10, "rotationY"

    invoke-direct {v9, v10}, Landroid/view/View$11;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    .line 17081
    new-instance v9, Landroid/view/View$12;

    const-string/jumbo v10, "scaleX"

    invoke-direct {v9, v10}, Landroid/view/View$12;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 17097
    new-instance v9, Landroid/view/View$13;

    const-string/jumbo v10, "scaleY"

    invoke-direct {v9, v10}, Landroid/view/View$13;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 18269
    const/4 v9, 0x0

    sput v9, Landroid/view/View;->sHoverUIEnableFlag:I

    return-void

    .line 740
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 895
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x0t 0x0t 0x10t 0x0t
    .end array-data

    .line 1422
    :array_2
    .array-data 0x4
        0x9dt 0x0t 0x1t 0x1t
        0x1t 0x0t 0x0t 0x0t
        0xa1t 0x0t 0x1t 0x1t
        0x2t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x1t 0x1t
        0x4t 0x0t 0x0t 0x0t
        0x9et 0x0t 0x1t 0x1t
        0x8t 0x0t 0x0t 0x0t
        0xa7t 0x0t 0x1t 0x1t
        0x10t 0x0t 0x0t 0x0t
        0xfet 0x2t 0x1t 0x1t
        0x20t 0x0t 0x0t 0x0t
        0x1bt 0x3t 0x1t 0x1t
        0x40t 0x0t 0x0t 0x0t
        0x67t 0x3t 0x1t 0x1t
        0x80t 0x0t 0x0t 0x0t
        0x68t 0x3t 0x1t 0x1t
        0x0t 0x1t 0x0t 0x0t
        0x69t 0x3t 0x1t 0x1t
        0x0t 0x2t 0x0t 0x0t
    .end array-data

    .line 1881
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 1967
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
    .end array-data

    .line 2082
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x60t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0xa0t 0x0t 0x0t
        0x0t 0xc0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 3806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    iput-object v1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1604
    iput-boolean v2, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1613
    iput v0, p0, Landroid/view/View;->mID:I

    .line 1619
    iput v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 1624
    iput v0, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    .line 2717
    iput v2, p0, Landroid/view/View;->mTransientStateCount:I

    .line 3005
    iput v3, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 3009
    iput v3, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 3081
    iput-object v1, p0, Landroid/view/View;->mDrawableState:[I

    .line 3099
    iput v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 3105
    iput v0, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 3111
    iput v0, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 3117
    iput v0, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 3123
    iput v0, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 3126
    iput-object v1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 3158
    iput-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 3164
    iput v2, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 3179
    iput-object v1, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 3279
    iput v2, p0, Landroid/view/View;->mLayerType:I

    .line 3299
    iput-boolean v2, p0, Landroid/view/View;->mEnablePenGesture:Z

    .line 3300
    iput-boolean v2, p0, Landroid/view/View;->mDisablePenGestureforfactorytest:Z

    .line 3301
    iput-boolean v2, p0, Landroid/view/View;->isPenSideButton:Z

    .line 3351
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 11572
    iput-boolean v2, p0, Landroid/view/View;->mNeededToChangedScrollBarPosition:Z

    .line 18248
    iput-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 18250
    iput v2, p0, Landroid/view/View;->mHoverPopupType:I

    .line 18313
    iput-boolean v2, p0, Landroid/view/View;->mIsSetContextMenuZOrderToTop:Z

    .line 3807
    iput-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 3808
    return-void

    :cond_0
    move-object v0, v1

    .line 3351
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/high16 v0, -0x8000

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 3310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    iput-object v1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1604
    iput-boolean v2, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1613
    iput v3, p0, Landroid/view/View;->mID:I

    .line 1619
    iput v3, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 1624
    iput v3, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    .line 2717
    iput v2, p0, Landroid/view/View;->mTransientStateCount:I

    .line 3005
    iput v0, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 3009
    iput v0, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 3081
    iput-object v1, p0, Landroid/view/View;->mDrawableState:[I

    .line 3099
    iput v3, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 3105
    iput v3, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 3111
    iput v3, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 3117
    iput v3, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 3123
    iput v3, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 3126
    iput-object v1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 3158
    iput-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 3164
    iput v2, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 3179
    iput-object v1, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 3279
    iput v2, p0, Landroid/view/View;->mLayerType:I

    .line 3299
    iput-boolean v2, p0, Landroid/view/View;->mEnablePenGesture:Z

    .line 3300
    iput-boolean v2, p0, Landroid/view/View;->mDisablePenGestureforfactorytest:Z

    .line 3301
    iput-boolean v2, p0, Landroid/view/View;->isPenSideButton:Z

    .line 3351
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 11572
    iput-boolean v2, p0, Landroid/view/View;->mNeededToChangedScrollBarPosition:Z

    .line 18248
    iput-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 18250
    iput v2, p0, Landroid/view/View;->mHoverPopupType:I

    .line 18313
    iput-boolean v2, p0, Landroid/view/View;->mIsSetContextMenuZOrderToTop:Z

    .line 3311
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 3312
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 3313
    const/high16 v0, 0x1800

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 3315
    sget v0, Landroid/view/View;->TEXT_DIRECTION_DEFAULT:I

    shl-int/lit8 v0, v0, 0x6

    or-int/lit8 v0, v0, 0x8

    sget v1, Landroid/view/View;->TEXT_ALIGNMENT_DEFAULT:I

    shl-int/lit8 v1, v1, 0xd

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 3320
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mTouchSlop:I

    .line 3321
    invoke-virtual {p0, v4}, Landroid/view/View;->setOverScrollMode(I)V

    .line 3322
    iput v3, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 3323
    iput v3, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 3324
    iput-boolean v2, p0, Landroid/view/View;->mUserPaddingRelative:Z

    .line 3325
    invoke-direct {p0}, Landroid/view/View;->init()V

    .line 3328
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_pen_gesture"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 3329
    iput-boolean v2, p0, Landroid/view/View;->mEnablePenGesture:Z

    .line 3330
    iput-boolean v4, p0, Landroid/view/View;->mDisablePenGestureforfactorytest:Z

    .line 3340
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    .line 3351
    goto :goto_0

    .line 3332
    :cond_2
    iput-boolean v2, p0, Landroid/view/View;->mDisablePenGestureforfactorytest:Z

    .line 3333
    iput-boolean v4, p0, Landroid/view/View;->mEnablePenGesture:Z

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 3372
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3373
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 43
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 3394
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3396
    sget-object v41, Lcom/android/internal/R$styleable;->View:[I

    const/16 v42, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v41

    move/from16 v3, p3

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 3399
    .local v6, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 3401
    .local v8, background:Landroid/graphics/drawable/Drawable;
    const/16 v16, -0x1

    .line 3402
    .local v16, leftPadding:I
    const/16 v31, -0x1

    .line 3403
    .local v31, topPadding:I
    const/16 v19, -0x1

    .line 3404
    .local v19, rightPadding:I
    const/4 v9, -0x1

    .line 3405
    .local v9, bottomPadding:I
    const/16 v26, -0x1

    .line 3406
    .local v26, startPadding:I
    const/4 v11, -0x1

    .line 3408
    .local v11, endPadding:I
    const/16 v18, -0x1

    .line 3410
    .local v18, padding:I
    const/16 v37, 0x0

    .line 3411
    .local v37, viewFlagValues:I
    const/16 v36, 0x0

    .line 3413
    .local v36, viewFlagMasks:I
    const/16 v25, 0x0

    .line 3415
    .local v25, setScrollContainer:Z
    const/16 v39, 0x0

    .line 3416
    .local v39, x:I
    const/16 v40, 0x0

    .line 3418
    .local v40, y:I
    const/16 v33, 0x0

    .line 3419
    .local v33, tx:F
    const/16 v34, 0x0

    .line 3420
    .local v34, ty:F
    const/16 v20, 0x0

    .line 3421
    .local v20, rotation:F
    const/16 v21, 0x0

    .line 3422
    .local v21, rotationX:F
    const/16 v22, 0x0

    .line 3423
    .local v22, rotationY:F
    const/high16 v27, 0x3f80

    .line 3424
    .local v27, sx:F
    const/high16 v28, 0x3f80

    .line 3425
    .local v28, sy:F
    const/16 v32, 0x0

    .line 3427
    .local v32, transformSet:Z
    const/16 v23, 0x0

    .line 3429
    .local v23, scrollbarStyle:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mOverScrollMode:I

    move/from16 v17, v0

    .line 3430
    .local v17, overScrollMode:I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 3431
    .local v5, N:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v5, :cond_3

    .line 3432
    invoke-virtual {v6, v14}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 3433
    .local v7, attr:I
    packed-switch v7, :pswitch_data_0

    .line 3431
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3435
    :pswitch_1
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3436
    goto :goto_1

    .line 3438
    :pswitch_2
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 3439
    goto :goto_1

    .line 3441
    :pswitch_3
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 3442
    goto :goto_1

    .line 3444
    :pswitch_4
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v31

    .line 3445
    goto :goto_1

    .line 3447
    :pswitch_5
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    .line 3448
    goto :goto_1

    .line 3450
    :pswitch_6
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 3451
    goto :goto_1

    .line 3453
    :pswitch_7
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v26

    .line 3454
    goto :goto_1

    .line 3456
    :pswitch_8
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 3457
    goto :goto_1

    .line 3459
    :pswitch_9
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v39

    .line 3460
    goto :goto_1

    .line 3462
    :pswitch_a
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v40

    .line 3463
    goto :goto_1

    .line 3465
    :pswitch_b
    const/high16 v41, 0x3f80

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 3468
    :pswitch_c
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_1

    .line 3471
    :pswitch_d
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_1

    .line 3474
    :pswitch_e
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v33, v0

    .line 3475
    const/16 v32, 0x1

    .line 3476
    goto/16 :goto_1

    .line 3478
    :pswitch_f
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v34, v0

    .line 3479
    const/16 v32, 0x1

    .line 3480
    goto/16 :goto_1

    .line 3482
    :pswitch_10
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    .line 3483
    const/16 v32, 0x1

    .line 3484
    goto/16 :goto_1

    .line 3486
    :pswitch_11
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v21

    .line 3487
    const/16 v32, 0x1

    .line 3488
    goto/16 :goto_1

    .line 3490
    :pswitch_12
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v22

    .line 3491
    const/16 v32, 0x1

    .line 3492
    goto/16 :goto_1

    .line 3494
    :pswitch_13
    const/high16 v41, 0x3f80

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    .line 3495
    const/16 v32, 0x1

    .line 3496
    goto/16 :goto_1

    .line 3498
    :pswitch_14
    const/high16 v41, 0x3f80

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v28

    .line 3499
    const/16 v32, 0x1

    .line 3500
    goto/16 :goto_1

    .line 3502
    :pswitch_15
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mID:I

    goto/16 :goto_1

    .line 3505
    :pswitch_16
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mTag:Ljava/lang/Object;

    goto/16 :goto_1

    .line 3508
    :pswitch_17
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3509
    or-int/lit8 v37, v37, 0x2

    .line 3510
    or-int/lit8 v36, v36, 0x2

    goto/16 :goto_1

    .line 3514
    :pswitch_18
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3515
    or-int/lit8 v37, v37, 0x1

    .line 3516
    or-int/lit8 v36, v36, 0x1

    goto/16 :goto_1

    .line 3520
    :pswitch_19
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3521
    const v41, 0x40001

    or-int v37, v37, v41

    .line 3522
    const v41, 0x40001

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3526
    :pswitch_1a
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3527
    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x4000

    move/from16 v37, v0

    .line 3528
    move/from16 v0, v36

    or-int/lit16 v0, v0, 0x4000

    move/from16 v36, v0

    goto/16 :goto_1

    .line 3532
    :pswitch_1b
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3533
    const/high16 v41, 0x20

    or-int v37, v37, v41

    .line 3534
    const/high16 v41, 0x20

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3538
    :pswitch_1c
    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-nez v41, :cond_0

    .line 3539
    const/high16 v41, 0x1

    or-int v37, v37, v41

    .line 3540
    const/high16 v41, 0x1

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3544
    :pswitch_1d
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3545
    const/high16 v41, 0x40

    or-int v37, v37, v41

    .line 3546
    const/high16 v41, 0x40

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3550
    :pswitch_1e
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v38

    .line 3551
    .local v38, visibility:I
    if-eqz v38, :cond_0

    .line 3552
    sget-object v41, Landroid/view/View;->VISIBILITY_FLAGS:[I

    aget v41, v41, v38

    or-int v37, v37, v41

    .line 3553
    or-int/lit8 v36, v36, 0xc

    goto/16 :goto_1

    .line 3558
    .end local v38           #visibility:I
    :pswitch_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v41, v0

    and-int/lit8 v41, v41, -0x3d

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 3560
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 3561
    .local v15, layoutDirection:I
    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v15, v0, :cond_1

    sget-object v41, Landroid/view/View;->LAYOUT_DIRECTION_FLAGS:[I

    aget v35, v41, v15

    .line 3563
    .local v35, value:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v41, v0

    shl-int/lit8 v42, v35, 0x2

    or-int v41, v41, v42

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1

    .line 3561
    .end local v35           #value:I
    :cond_1
    const/16 v35, 0x2

    goto :goto_2

    .line 3566
    .end local v15           #layoutDirection:I
    :pswitch_20
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 3567
    .local v10, cacheQuality:I
    if-eqz v10, :cond_0

    .line 3568
    sget-object v41, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    aget v41, v41, v10

    or-int v37, v37, v41

    .line 3569
    const/high16 v41, 0x18

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3573
    .end local v10           #cacheQuality:I
    :pswitch_21
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3576
    :pswitch_22
    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-nez v41, :cond_0

    .line 3577
    const v41, -0x8000001

    and-int v37, v37, v41

    .line 3578
    const/high16 v41, 0x800

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3582
    :pswitch_23
    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-nez v41, :cond_0

    .line 3583
    const v41, -0x10000001

    and-int v37, v37, v41

    .line 3584
    const/high16 v41, 0x1000

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3588
    :pswitch_24
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v24

    .line 3589
    .local v24, scrollbars:I
    if-eqz v24, :cond_0

    .line 3590
    or-int v37, v37, v24

    .line 3591
    move/from16 v0, v36

    or-int/lit16 v0, v0, 0x300

    move/from16 v36, v0

    .line 3592
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    goto/16 :goto_1

    .line 3597
    .end local v24           #scrollbars:I
    :pswitch_25
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v41, v0

    const/16 v42, 0xe

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_0

    .line 3603
    :pswitch_26
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 3604
    .local v12, fadingEdge:I
    if-eqz v12, :cond_0

    .line 3605
    or-int v37, v37, v12

    .line 3606
    move/from16 v0, v36

    or-int/lit16 v0, v0, 0x3000

    move/from16 v36, v0

    .line 3607
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->initializeFadingEdge(Landroid/content/res/TypedArray;)V

    goto/16 :goto_1

    .line 3611
    .end local v12           #fadingEdge:I
    :pswitch_27
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    .line 3612
    if-eqz v23, :cond_0

    .line 3613
    const/high16 v41, 0x300

    and-int v41, v41, v23

    or-int v37, v37, v41

    .line 3614
    const/high16 v41, 0x300

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3618
    :pswitch_28
    const/16 v25, 0x1

    .line 3619
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3620
    const/16 v41, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    goto/16 :goto_1

    .line 3624
    :pswitch_29
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3625
    const/high16 v41, 0x400

    or-int v37, v37, v41

    .line 3626
    const/high16 v41, 0x400

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3630
    :pswitch_2a
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3631
    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x400

    move/from16 v37, v0

    .line 3632
    move/from16 v0, v36

    or-int/lit16 v0, v0, 0x400

    move/from16 v36, v0

    goto/16 :goto_1

    .line 3636
    :pswitch_2b
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusLeftId:I

    goto/16 :goto_1

    .line 3639
    :pswitch_2c
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusRightId:I

    goto/16 :goto_1

    .line 3642
    :pswitch_2d
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusUpId:I

    goto/16 :goto_1

    .line 3645
    :pswitch_2e
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusDownId:I

    goto/16 :goto_1

    .line 3648
    :pswitch_2f
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusForwardId:I

    goto/16 :goto_1

    .line 3651
    :pswitch_30
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinWidth:I

    goto/16 :goto_1

    .line 3654
    :pswitch_31
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinHeight:I

    goto/16 :goto_1

    .line 3657
    :pswitch_32
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v41

    if-eqz v41, :cond_2

    .line 3658
    new-instance v41, Ljava/lang/IllegalStateException;

    const-string v42, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 3662
    :cond_2
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3663
    .local v13, handlerName:Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 3664
    new-instance v41, Landroid/view/View$1;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Landroid/view/View$1;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 3698
    .end local v13           #handlerName:Ljava/lang/String;
    :pswitch_33
    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .line 3699
    goto/16 :goto_1

    .line 3701
    :pswitch_34
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mVerticalScrollbarPosition:I

    goto/16 :goto_1

    .line 3704
    :pswitch_35
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v41

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 3708
    :pswitch_36
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v41, v0

    move/from16 v0, v41

    and-int/lit16 v0, v0, -0x1c1

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 3710
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    .line 3711
    .local v30, textDirection:I
    const/16 v41, -0x1

    move/from16 v0, v30

    move/from16 v1, v41

    if-eq v0, v1, :cond_0

    .line 3712
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v41, v0

    sget-object v42, Landroid/view/View;->TEXT_DIRECTION_FLAGS:[I

    aget v42, v42, v30

    or-int v41, v41, v42

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1

    .line 3717
    .end local v30           #textDirection:I
    :pswitch_37
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v41, v0

    const v42, -0xe001

    and-int v41, v41, v42

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 3719
    sget v41, Landroid/view/View;->TEXT_ALIGNMENT_DEFAULT:I

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v29

    .line 3720
    .local v29, textAlignment:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v41, v0

    sget-object v42, Landroid/view/View;->TEXT_ALIGNMENT_FLAGS:[I

    aget v42, v42, v29

    or-int v41, v41, v42

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1

    .line 3723
    .end local v29           #textAlignment:I
    :pswitch_38
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto/16 :goto_1

    .line 3728
    :pswitch_39
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    goto/16 :goto_1

    .line 3734
    .end local v7           #attr:I
    :cond_3
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 3736
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 3738
    if-eqz v8, :cond_4

    .line 3739
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3744
    :cond_4
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingStart:I

    .line 3745
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/View;->mUserPaddingEnd:I

    .line 3747
    invoke-direct/range {p0 .. p0}, Landroid/view/View;->updateUserPaddingRelative()V

    .line 3749
    if-ltz v18, :cond_5

    .line 3750
    move/from16 v16, v18

    .line 3751
    move/from16 v31, v18

    .line 3752
    move/from16 v19, v18

    .line 3753
    move/from16 v9, v18

    .line 3760
    :cond_5
    if-ltz v16, :cond_c

    .end local v16           #leftPadding:I
    :goto_3
    if-ltz v31, :cond_d

    .end local v31           #topPadding:I
    :goto_4
    if-ltz v19, :cond_e

    .end local v19           #rightPadding:I
    :goto_5
    if-ltz v9, :cond_f

    .end local v9           #bottomPadding:I
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v31

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 3765
    if-eqz v36, :cond_6

    .line 3766
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setFlags(II)V

    .line 3770
    :cond_6
    if-eqz v23, :cond_7

    .line 3771
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->recomputePadding()V

    .line 3774
    :cond_7
    if-nez v39, :cond_8

    if-eqz v40, :cond_9

    .line 3775
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 3778
    :cond_9
    if-eqz v32, :cond_a

    .line 3779
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3780
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3781
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 3782
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationX(F)V

    .line 3783
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 3784
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 3785
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 3788
    :cond_a
    if-nez v25, :cond_b

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0x200

    move/from16 v41, v0

    if-eqz v41, :cond_b

    .line 3789
    const/16 v41, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    .line 3792
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 3793
    return-void

    .line 3760
    .restart local v9       #bottomPadding:I
    .restart local v16       #leftPadding:I
    .restart local v19       #rightPadding:I
    .restart local v31       #topPadding:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v16, v0

    goto :goto_3

    .end local v16           #leftPadding:I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v31, v0

    goto/16 :goto_4

    .end local v31           #topPadding:I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v19, v0

    goto/16 :goto_5

    .end local v19           #rightPadding:I
    :cond_f
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mPaddingBottom:I

    goto/16 :goto_6

    .line 3433
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_27
        :pswitch_15
        :pswitch_16
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_18
        :pswitch_19
        :pswitch_1e
        :pswitch_17
        :pswitch_24
        :pswitch_25
        :pswitch_0
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_20
        :pswitch_1d
        :pswitch_30
        :pswitch_31
        :pswitch_22
        :pswitch_29
        :pswitch_28
        :pswitch_23
        :pswitch_32
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_33
        :pswitch_2a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_13
        :pswitch_14
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_34
        :pswitch_2f
        :pswitch_35
        :pswitch_26
        :pswitch_38
        :pswitch_39
        :pswitch_7
        :pswitch_8
        :pswitch_1f
        :pswitch_36
        :pswitch_37
    .end packed-switch
.end method

.method static synthetic access$2002(Landroid/view/View;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 670
    iput-boolean p1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 670
    invoke-direct {p0, p1}, Landroid/view/View;->checkForLongClick(I)V

    return-void
.end method

.method private canTakeAccessibilityFocusFromHover()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6472
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isActionableForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6478
    :cond_0
    :goto_0
    return v0

    .line 6475
    :cond_1
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_2

    .line 6476
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p0, p0}, Landroid/view/ViewParent;->findViewToTakeAccessibilityFocusFromHover(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eq v2, p0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 6478
    goto :goto_0
.end method

.method private checkForLongClick(I)V
    .locals 3
    .parameter "delayOffset"

    .prologue
    const/high16 v1, 0x20

    .line 16383
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 16384
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 16386
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-nez v0, :cond_0

    .line 16387
    new-instance v0, Landroid/view/View$CheckForLongPress;

    invoke-direct {v0, p0}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    .line 16389
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {v0}, Landroid/view/View$CheckForLongPress;->rememberWindowAttachCount()V

    .line 16390
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16393
    :cond_1
    return-void
.end method

.method private clearDisplayList()V
    .locals 1

    .prologue
    .line 12706
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 12707
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0}, Landroid/view/DisplayList;->invalidate()V

    .line 12708
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0}, Landroid/view/DisplayList;->clear()V

    .line 12710
    :cond_0
    return-void
.end method

.method public static combineMeasuredStates(II)I
    .locals 1
    .parameter "curState"
    .parameter "newState"

    .prologue
    .line 15556
    or-int v0, p0, p1

    return v0
.end method

.method protected static debugIndent(I)Ljava/lang/String;
    .locals 4
    .parameter "depth"

    .prologue
    const/16 v3, 0x20

    .line 15383
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 15384
    .local v1, spaces:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_0

    .line 15385
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15387
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7398
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7399
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v3

    invoke-interface {v3, p0, p1}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7412
    :cond_0
    :goto_0
    return v1

    .line 7405
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7409
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_2

    .line 7410
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_2
    move v1, v2

    .line 7412
    goto :goto_0
.end method

.method private drawAnimation(Landroid/view/ViewGroup;JLandroid/view/animation/Animation;Z)Z
    .locals 15
    .parameter "parent"
    .parameter "drawingTime"
    .parameter "a"
    .parameter "scalingRequired"

    .prologue
    .line 13196
    move-object/from16 v0, p1

    iget v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 13197
    .local v10, flags:I
    invoke-virtual/range {p4 .. p4}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v11

    .line 13198
    .local v11, initialized:Z
    if-nez v11, :cond_1

    .line 13199
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 13200
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initializeInvalidateRegion(IIII)V

    .line 13201
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setListenerHandler(Landroid/os/Handler;)V

    .line 13202
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->onAnimationStart()V

    .line 13205
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    const/high16 v4, 0x3f80

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v13

    .line 13206
    .local v13, more:Z
    if-eqz p5, :cond_4

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    .line 13207
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    if-nez v3, :cond_2

    .line 13208
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 13210
    :cond_2
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 13211
    .local v9, invalidationTransform:Landroid/view/animation/Transformation;
    const/high16 v3, 0x3f80

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    .line 13216
    :goto_0
    if-eqz v13, :cond_3

    .line 13217
    invoke-virtual/range {p4 .. p4}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v3

    if-nez v3, :cond_6

    .line 13218
    and-int/lit16 v3, v10, 0x90

    const/16 v4, 0x80

    if-ne v3, v4, :cond_5

    .line 13220
    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 13245
    :cond_3
    :goto_1
    return v13

    .line 13213
    .end local v9           #invalidationTransform:Landroid/view/animation/Transformation;
    :cond_4
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .restart local v9       #invalidationTransform:Landroid/view/animation/Transformation;
    goto :goto_0

    .line 13221
    :cond_5
    and-int/lit8 v3, v10, 0x4

    if-nez v3, :cond_3

    .line 13224
    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x40

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 13225
    iget v3, p0, Landroid/view/View;->mLeft:I

    iget v4, p0, Landroid/view/View;->mTop:I

    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto :goto_1

    .line 13228
    :cond_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    if-nez v3, :cond_7

    .line 13229
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 13231
    :cond_7
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 13232
    .local v8, region:Landroid/graphics/RectF;
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v6, v3, v6

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v7, v3, v7

    move-object/from16 v3, p4

    invoke-virtual/range {v3 .. v9}, Landroid/view/animation/Animation;->getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V

    .line 13237
    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x40

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 13239
    iget v3, p0, Landroid/view/View;->mLeft:I

    iget v4, v8, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    add-int v12, v3, v4

    .line 13240
    .local v12, left:I
    iget v3, p0, Landroid/view/View;->mTop:I

    iget v4, v8, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int v14, v3, v4

    .line 13241
    .local v14, top:I
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v3, v12

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v14, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto :goto_1
.end method

.method private findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .parameter "root"
    .parameter "childViewId"

    .prologue
    .line 6229
    new-instance v1, Landroid/view/View$3;

    invoke-direct {v1, p0, p2}, Landroid/view/View$3;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v0

    .line 6236
    .local v0, result:Landroid/view/View;
    if-nez v0, :cond_0

    .line 6237
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find next focus view specified by user for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6240
    :cond_0
    return-object v0
.end method

.method private getBoundsOnScreen(Landroid/graphics/Rect;)V
    .locals 9
    .parameter "outRect"

    .prologue
    const/4 v7, 0x0

    const/high16 v8, 0x3f00

    .line 4891
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v4, :cond_0

    .line 4928
    :goto_0
    return-void

    .line 4895
    :cond_0
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v4, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4896
    .local v2, position:Landroid/graphics/RectF;
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4898
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4899
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4902
    :cond_1
    iget v4, p0, Landroid/view/View;->mLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 4904
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4905
    .local v0, parent:Landroid/view/ViewParent;
    :goto_1
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_3

    move-object v1, v0

    .line 4906
    check-cast v1, Landroid/view/View;

    .line 4908
    .local v1, parentView:Landroid/view/View;
    iget v4, v1, Landroid/view/View;->mScrollX:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v1, Landroid/view/View;->mScrollY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 4910
    invoke-virtual {v1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4911
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4914
    :cond_2
    iget v4, v1, Landroid/view/View;->mLeft:I

    int-to-float v4, v4

    iget v5, v1, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 4916
    iget-object v0, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4917
    goto :goto_1

    .line 4919
    .end local v1           #parentView:Landroid/view/View;
    :cond_3
    instance-of v4, v0, Landroid/view/ViewRootImpl;

    if-eqz v4, :cond_4

    move-object v3, v0

    .line 4920
    check-cast v3, Landroid/view/ViewRootImpl;

    .line 4921
    .local v3, viewRootImpl:Landroid/view/ViewRootImpl;
    iget v4, v3, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v7, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 4924
    .end local v3           #viewRootImpl:Landroid/view/ViewRootImpl;
    :cond_4
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 4926
    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v8

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v8

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v8

    float-to-int v6, v6

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0
.end method

.method public static getDefaultSize(II)I
    .locals 3
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 15612
    move v0, p0

    .line 15613
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 15614
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 15616
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 15625
    :goto_0
    return v0

    .line 15618
    :sswitch_0
    move v0, p0

    .line 15619
    goto :goto_0

    .line 15622
    :sswitch_1
    move v0, v2

    goto :goto_0

    .line 15616
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private getDisplayList(Landroid/view/DisplayList;Z)Landroid/view/DisplayList;
    .locals 14
    .parameter "displayList"
    .parameter "isLayer"

    .prologue
    .line 12580
    invoke-virtual {p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12581
    const/4 v1, 0x0

    .line 12676
    :goto_0
    return-object v1

    .line 12584
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/DisplayList;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_10

    iget-boolean v1, p0, Landroid/view/View;->mRecreateDisplayList:Z

    if-eqz v1, :cond_10

    .line 12589
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/DisplayList;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    iget-boolean v1, p0, Landroid/view/View;->mRecreateDisplayList:Z

    if-nez v1, :cond_2

    .line 12591
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8020

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12592
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x600001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12593
    invoke-virtual {p0}, Landroid/view/View;->dispatchGetDisplayList()V

    move-object v1, p1

    .line 12595
    goto :goto_0

    .line 12598
    :cond_2
    if-nez p2, :cond_3

    .line 12601
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 12603
    :cond_3
    if-nez p1, :cond_4

    .line 12604
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    .line 12605
    .local v12, name:Ljava/lang/String;
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v1, v12}, Landroid/view/HardwareRenderer;->createDisplayList(Ljava/lang/String;)Landroid/view/DisplayList;

    move-result-object p1

    .line 12609
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 12612
    .end local v12           #name:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    .line 12613
    .local v8, caching:Z
    invoke-virtual {p1}, Landroid/view/DisplayList;->start()Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 12614
    .local v0, canvas:Landroid/view/HardwareCanvas;
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int v13, v1, v2

    .line 12615
    .local v13, width:I
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int v9, v1, v2

    .line 12618
    .local v9, height:I
    :try_start_0
    invoke-virtual {v0, v13, v9}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 12620
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)I

    .line 12621
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v1, Landroid/view/ViewGroup;

    iget-boolean v1, v1, Landroid/view/ViewGroup;->mDrawLayers:Z

    if-eqz v1, :cond_8

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v11

    .line 12624
    .local v11, layerType:I
    :goto_1
    if-nez p2, :cond_b

    if-eqz v11, :cond_b

    .line 12625
    const/4 v1, 0x2

    if-ne v11, v1, :cond_a

    .line 12626
    invoke-virtual {p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v10

    .line 12627
    .local v10, layer:Landroid/view/HardwareLayer;
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 12628
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12634
    :goto_2
    const/4 v8, 0x1

    .line 12661
    .end local v10           #layer:Landroid/view/HardwareLayer;
    :cond_6
    :goto_3
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 12663
    invoke-virtual {p1}, Landroid/view/DisplayList;->end()V

    .line 12664
    invoke-virtual {p1, v8}, Landroid/view/DisplayList;->setCaching(Z)V

    .line 12665
    if-eqz p2, :cond_e

    .line 12666
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v13, v9}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .end local v0           #canvas:Landroid/view/HardwareCanvas;
    .end local v8           #caching:Z
    .end local v9           #height:I
    .end local v11           #layerType:I
    .end local v13           #width:I
    :cond_7
    :goto_4
    move-object v1, p1

    .line 12676
    goto/16 :goto_0

    .line 12621
    .restart local v0       #canvas:Landroid/view/HardwareCanvas;
    .restart local v8       #caching:Z
    .restart local v9       #height:I
    .restart local v13       #width:I
    :cond_8
    const/4 v11, 0x0

    goto :goto_1

    .line 12630
    .restart local v10       #layer:Landroid/view/HardwareLayer;
    .restart local v11       #layerType:I
    :cond_9
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    const/16 v6, 0x14

    invoke-virtual/range {v0 .. v6}, Landroid/view/HardwareCanvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 12661
    .end local v10           #layer:Landroid/view/HardwareLayer;
    .end local v11           #layerType:I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 12663
    invoke-virtual {p1}, Landroid/view/DisplayList;->end()V

    .line 12664
    invoke-virtual {p1, v8}, Landroid/view/DisplayList;->setCaching(Z)V

    .line 12665
    if-eqz p2, :cond_f

    .line 12666
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v13, v9}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 12668
    :goto_5
    throw v1

    .line 12636
    .restart local v11       #layerType:I
    :cond_a
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 12637
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 12638
    .local v7, cache:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_6

    .line 12639
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/view/HardwareCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 12640
    const/4 v8, 0x1

    goto :goto_3

    .line 12645
    .end local v7           #cache:Landroid/graphics/Bitmap;
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 12647
    iget v1, p0, Landroid/view/View;->mScrollX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/View;->mScrollY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 12648
    if-nez p2, :cond_c

    .line 12649
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8020

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12650
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x600001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12654
    :cond_c
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_d

    .line 12655
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 12657
    :cond_d
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 12668
    :cond_e
    invoke-virtual {p0, p1}, Landroid/view/View;->setDisplayListProperties(Landroid/view/DisplayList;)V

    goto :goto_4

    .end local v11           #layerType:I
    :cond_f
    invoke-virtual {p0, p1}, Landroid/view/View;->setDisplayListProperties(Landroid/view/DisplayList;)V

    goto :goto_5

    .line 12671
    .end local v0           #canvas:Landroid/view/HardwareCanvas;
    .end local v8           #caching:Z
    .end local v9           #height:I
    .end local v13           #width:I
    :cond_10
    if-nez p2, :cond_7

    .line 12672
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8020

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12673
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x600001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_4
.end method

.method private getHardwareLayerDisplayList(Landroid/view/HardwareLayer;)Landroid/view/DisplayList;
    .locals 3
    .parameter "layer"

    .prologue
    .line 12686
    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/view/View;->getDisplayList(Landroid/view/DisplayList;Z)Landroid/view/DisplayList;

    move-result-object v0

    .line 12687
    .local v0, displayList:Landroid/view/DisplayList;
    invoke-virtual {p1, v0}, Landroid/view/HardwareLayer;->setDisplayList(Landroid/view/DisplayList;)V

    .line 12688
    return-object v0
.end method

.method private getScrollCache()Landroid/view/View$ScrollabilityCache;
    .locals 1

    .prologue
    .line 4008
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 4009
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    return-object v0
.end method

.method private hasAncestorThatBlocksDescendantFocus()Z
    .locals 4

    .prologue
    .line 6615
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6616
    .local v0, ancestor:Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 6617
    check-cast v1, Landroid/view/ViewGroup;

    .line 6618
    .local v1, vgAncestor:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 6619
    const/4 v2, 0x1

    .line 6624
    .end local v1           #vgAncestor:Landroid/view/ViewGroup;
    :goto_1
    return v2

    .line 6621
    .restart local v1       #vgAncestor:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6623
    goto :goto_0

    .line 6624
    .end local v1           #vgAncestor:Landroid/view/ViewGroup;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private hasListenersForAccessibility()Z
    .locals 2

    .prologue
    .line 6835
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 6836
    .local v0, info:Landroid/view/View$ListenerInfo;
    iget-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-nez v1, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    if-nez v1, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    if-nez v1, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v1

    if-nez v1, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    if-nez v1, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasRtlSupport()Z
    .locals 1

    .prologue
    .line 11719
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "resource"
    .parameter "root"

    .prologue
    .line 16406
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 16407
    .local v0, factory:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 3796
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mListViewItemTag:Ljava/lang/Object;

    .line 3797
    return-void
.end method

.method private initScrollCache()V
    .locals 2

    .prologue
    .line 4002
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    .line 4003
    new-instance v0, Landroid/view/View$ScrollabilityCache;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/View$ScrollabilityCache;-><init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4005
    :cond_0
    return-void
.end method

.method private initialAwakenScrollBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10198
    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v1, v1, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private internalSetPadding(IIII)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/high16 v6, 0x100

    const/4 v3, 0x0

    .line 14608
    iput p1, p0, Landroid/view/View;->mUserPaddingLeft:I

    .line 14609
    iput p3, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 14610
    iput p4, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 14612
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    .line 14613
    .local v2, viewFlags:I
    const/4 v0, 0x0

    .line 14616
    .local v0, changed:Z
    and-int/lit16 v4, v2, 0x300

    if-eqz v4, :cond_1

    .line 14617
    and-int/lit16 v4, v2, 0x200

    if-eqz v4, :cond_0

    .line 14618
    and-int v4, v2, v6

    if-nez v4, :cond_7

    move v1, v3

    .line 14620
    .local v1, offset:I
    :goto_0
    iget v4, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    packed-switch v4, :pswitch_data_0

    .line 14636
    .end local v1           #offset:I
    :cond_0
    :goto_1
    and-int/lit16 v4, v2, 0x100

    if-eqz v4, :cond_1

    .line 14637
    and-int v4, v2, v6

    if-nez v4, :cond_9

    :goto_2
    add-int/2addr p4, v3

    .line 14642
    :cond_1
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-eq v3, p1, :cond_2

    .line 14643
    const/4 v0, 0x1

    .line 14644
    iput p1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 14646
    :cond_2
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-eq v3, p2, :cond_3

    .line 14647
    const/4 v0, 0x1

    .line 14648
    iput p2, p0, Landroid/view/View;->mPaddingTop:I

    .line 14650
    :cond_3
    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-eq v3, p3, :cond_4

    .line 14651
    const/4 v0, 0x1

    .line 14652
    iput p3, p0, Landroid/view/View;->mPaddingRight:I

    .line 14654
    :cond_4
    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq v3, p4, :cond_5

    .line 14655
    const/4 v0, 0x1

    .line 14656
    iput p4, p0, Landroid/view/View;->mPaddingBottom:I

    .line 14659
    :cond_5
    if-eqz v0, :cond_6

    .line 14660
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 14662
    :cond_6
    return-void

    .line 14618
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v1

    goto :goto_0

    .line 14622
    .restart local v1       #offset:I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 14623
    add-int/2addr p1, v1

    goto :goto_1

    .line 14625
    :cond_8
    add-int/2addr p3, v1

    .line 14627
    goto :goto_1

    .line 14629
    :pswitch_1
    add-int/2addr p3, v1

    .line 14630
    goto :goto_1

    .line 14632
    :pswitch_2
    add-int/2addr p1, v1

    goto :goto_1

    .line 14637
    .end local v1           #offset:I
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v3

    goto :goto_2

    .line 14620
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private isHoverable()Z
    .locals 5

    .prologue
    const/high16 v4, 0x20

    const/4 v1, 0x0

    .line 8183
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 8184
    .local v0, viewFlags:I
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 8188
    :cond_0
    :goto_0
    return v1

    :cond_1
    and-int/lit16 v2, v0, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_2

    and-int v2, v0, v4

    if-ne v2, v4, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected static isLayoutDirectionRtl(Ljava/util/Locale;)Z
    .locals 2
    .parameter "locale"

    .prologue
    const/4 v0, 0x1

    .line 11891
    invoke-static {p0}, Landroid/util/LocaleUtil;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static mergeDrawableStates([I[I)[I
    .locals 5
    .parameter "baseState"
    .parameter "additionalState"

    .prologue
    .line 14406
    array-length v0, p0

    .line 14407
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .line 14408
    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    aget v2, p0, v1

    if-nez v2, :cond_0

    .line 14409
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 14411
    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    invoke-static {p1, v2, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14412
    return-object p0
.end method

.method private nextAtGranularity(I)Z
    .locals 9
    .parameter "granularity"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6975
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v5

    .line 6976
    .local v5, text:Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 6994
    :cond_0
    :goto_0
    return v6

    .line 6979
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v2

    .line 6980
    .local v2, iterator:Landroid/view/AccessibilityIterators$TextSegmentIterator;
    if-eqz v2, :cond_0

    .line 6983
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityCursorPosition()I

    move-result v0

    .line 6984
    .local v0, current:I
    invoke-interface {v2, v0}, Landroid/view/AccessibilityIterators$TextSegmentIterator;->following(I)[I

    move-result-object v3

    .line 6985
    .local v3, range:[I
    if-eqz v3, :cond_0

    .line 6988
    aget v4, v3, v6

    .line 6989
    .local v4, start:I
    aget v1, v3, v7

    .line 6990
    .local v1, end:I
    invoke-virtual {p0, v1}, Landroid/view/View;->setAccessibilityCursorPosition(I)V

    .line 6991
    const/16 v6, 0x100

    invoke-direct {p0, v6, p1, v4, v1}, Landroid/view/View;->sendViewTextTraversedAtGranularityEvent(IIII)V

    move v6, v7

    .line 6994
    goto :goto_0
.end method

.method private static nonzero(F)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 8885
    const v0, -0x457ced91

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const v0, 0x3a83126f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pointInView(FFF)Z
    .locals 2
    .parameter "localX"
    .parameter "localY"
    .parameter "slop"

    .prologue
    .line 9925
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postSendViewScrolledAccessibilityEventCallback()V
    .locals 3

    .prologue
    .line 10915
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-nez v0, :cond_0

    .line 10916
    new-instance v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$SendViewScrolledAccessibilityEvent;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    .line 10918
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    iget-boolean v0, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    if-nez v0, :cond_1

    .line 10919
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    .line 10920
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10923
    :cond_1
    return-void
.end method

.method private previousAtGranularity(I)Z
    .locals 9
    .parameter "granularity"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6998
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v5

    .line 6999
    .local v5, text:Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 7029
    :cond_0
    :goto_0
    return v6

    .line 7002
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v2

    .line 7003
    .local v2, iterator:Landroid/view/AccessibilityIterators$TextSegmentIterator;
    if-eqz v2, :cond_0

    .line 7006
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityCursorPosition()I

    move-result v0

    .line 7007
    .local v0, current:I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_3

    .line 7008
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 7014
    :cond_2
    :goto_1
    invoke-interface {v2, v0}, Landroid/view/AccessibilityIterators$TextSegmentIterator;->preceding(I)[I

    move-result-object v3

    .line 7015
    .local v3, range:[I
    if-eqz v3, :cond_0

    .line 7018
    aget v4, v3, v6

    .line 7019
    .local v4, start:I
    aget v1, v3, v7

    .line 7021
    .local v1, end:I
    if-ne p1, v7, :cond_4

    .line 7022
    invoke-virtual {p0, v1}, Landroid/view/View;->setAccessibilityCursorPosition(I)V

    .line 7026
    :goto_2
    const/16 v6, 0x200

    invoke-direct {p0, v6, p1, v4, v1}, Landroid/view/View;->sendViewTextTraversedAtGranularityEvent(IIII)V

    move v6, v7

    .line 7029
    goto :goto_0

    .line 7009
    .end local v1           #end:I
    .end local v3           #range:[I
    .end local v4           #start:I
    :cond_3
    if-ne p1, v7, :cond_2

    .line 7012
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 7024
    .restart local v1       #end:I
    .restart local v3       #range:[I
    .restart local v4       #start:I
    :cond_4
    invoke-virtual {p0, v4}, Landroid/view/View;->setAccessibilityCursorPosition(I)V

    goto :goto_2
.end method

.method private static printFlags(I)Ljava/lang/String;
    .locals 4
    .parameter "flags"

    .prologue
    .line 13884
    const-string v1, ""

    .line 13885
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 13886
    .local v0, numFlags:I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 13887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAKES_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13888
    add-int/lit8 v0, v0, 0x1

    .line 13891
    :cond_0
    and-int/lit8 v2, p0, 0xc

    sparse-switch v2, :sswitch_data_0

    .line 13909
    :goto_0
    return-object v1

    .line 13893
    :sswitch_0
    if-lez v0, :cond_1

    .line 13894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13896
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INVISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13898
    goto :goto_0

    .line 13900
    :sswitch_1
    if-lez v0, :cond_2

    .line 13901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13903
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13905
    goto :goto_0

    .line 13891
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private static printPrivateFlags(I)Ljava/lang/String;
    .locals 4
    .parameter "privateFlags"

    .prologue
    .line 13920
    const-string v1, ""

    .line 13921
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 13923
    .local v0, numFlags:I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 13924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WANTS_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13925
    add-int/lit8 v0, v0, 0x1

    .line 13928
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 13929
    if-lez v0, :cond_1

    .line 13930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13932
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FOCUSED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13933
    add-int/lit8 v0, v0, 0x1

    .line 13936
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 13937
    if-lez v0, :cond_3

    .line 13938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13940
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13941
    add-int/lit8 v0, v0, 0x1

    .line 13944
    :cond_4
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 13945
    if-lez v0, :cond_5

    .line 13946
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13948
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IS_ROOT_NAMESPACE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13949
    add-int/lit8 v0, v0, 0x1

    .line 13952
    :cond_6
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_8

    .line 13953
    if-lez v0, :cond_7

    .line 13954
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13956
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HAS_BOUNDS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13957
    add-int/lit8 v0, v0, 0x1

    .line 13960
    :cond_8
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_a

    .line 13961
    if-lez v0, :cond_9

    .line 13962
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13964
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DRAWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13967
    :cond_a
    return-object v1
.end method

.method private removeLongPressCallback()V
    .locals 1

    .prologue
    .line 8401
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 8402
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8404
    :cond_0
    return-void
.end method

.method private removePerformClickCallback()V
    .locals 1

    .prologue
    .line 8410
    iget-object v0, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-eqz v0, :cond_0

    .line 8411
    iget-object v0, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8413
    :cond_0
    return-void
.end method

.method private removeSendViewScrolledAccessibilityEventCallback()V
    .locals 2

    .prologue
    .line 8457
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-eqz v0, :cond_0

    .line 8458
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8459
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    .line 8461
    :cond_0
    return-void
.end method

.method private removeTapCallback()V
    .locals 2

    .prologue
    .line 8429
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-eqz v0, :cond_0

    .line 8430
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8431
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8433
    :cond_0
    return-void
.end method

.method private removeUnsetPressCallback()V
    .locals 1

    .prologue
    .line 8419
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-eqz v0, :cond_0

    .line 8420
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 8421
    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8423
    :cond_0
    return-void
.end method

.method private requestAccessibilityFocusFromHover()V
    .locals 2

    .prologue
    .line 6459
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isActionableForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6460
    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 6469
    :cond_0
    :goto_0
    return-void

    .line 6462
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 6463
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, p0}, Landroid/view/ViewParent;->findViewToTakeAccessibilityFocusFromHover(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 6464
    .local v0, nextFocus:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 6465
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_0
.end method

.method private requestFocusNoSearch(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/high16 v3, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6570
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_1

    .line 6587
    :cond_0
    :goto_0
    return v0

    .line 6576
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v3

    if-ne v3, v2, :cond_0

    .line 6582
    :cond_2
    invoke-direct {p0}, Landroid/view/View;->hasAncestorThatBlocksDescendantFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6586
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    move v0, v1

    .line 6587
    goto :goto_0
.end method

.method private resetPressedState()V
    .locals 2

    .prologue
    .line 5197
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 5208
    :cond_0
    :goto_0
    return-void

    .line 5201
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5204
    iget-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v0, :cond_0

    .line 5205
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    goto :goto_0
.end method

.method public static resolveSize(II)I
    .locals 2
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 15564
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static resolveSizeAndState(III)I
    .locals 4
    .parameter "size"
    .parameter "measureSpec"
    .parameter "childMeasuredState"

    .prologue
    .line 15581
    move v0, p0

    .line 15582
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 15583
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 15584
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 15599
    :goto_0
    const/high16 v3, -0x100

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 15586
    :sswitch_0
    move v0, p0

    .line 15587
    goto :goto_0

    .line 15589
    :sswitch_1
    if-ge v2, p0, :cond_0

    .line 15590
    const/high16 v3, 0x100

    or-int v0, v2, v3

    goto :goto_0

    .line 15592
    :cond_0
    move v0, p0

    .line 15594
    goto :goto_0

    .line 15596
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 15584
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private sendAccessibilityHoverEvent(I)V
    .locals 3
    .parameter "eventType"

    .prologue
    .line 6443
    move-object v1, p0

    .line 6445
    .local v1, source:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->includeForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6446
    invoke-virtual {v1, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 6453
    :cond_0
    return-void

    .line 6449
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6450
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 6451
    check-cast v1, Landroid/view/View;

    goto :goto_0
.end method

.method private sendViewTextTraversedAtGranularityEvent(IIII)V
    .locals 2
    .parameter "action"
    .parameter "granularity"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 7059
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v1, :cond_0

    .line 7071
    :goto_0
    return-void

    .line 7062
    :cond_0
    const/high16 v1, 0x2

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 7064
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7065
    invoke-virtual {p0, v0}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7066
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 7067
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 7068
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 7069
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 7070
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0
.end method

.method private setKeyedTag(ILjava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 15289
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 15290
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    .line 15293
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15294
    return-void
.end method

.method private skipInvalidate()Z
    .locals 1

    .prologue
    .line 10327
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->isViewTransitioning(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMatrix()V
    .locals 6

    .prologue
    const/high16 v3, 0x4000

    .line 8912
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8913
    .local v0, info:Landroid/view/View$TransformationInfo;
    if-nez v0, :cond_1

    .line 8953
    :cond_0
    :goto_0
    return-void

    .line 8916
    :cond_1
    iget-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    if-eqz v1, :cond_0

    .line 8921
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    .line 8922
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    #getter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1300(Landroid/view/View$TransformationInfo;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    #getter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1400(Landroid/view/View$TransformationInfo;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 8923
    :cond_2
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    #setter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1302(Landroid/view/View$TransformationInfo;I)I

    .line 8924
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    #setter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1402(Landroid/view/View$TransformationInfo;I)I

    .line 8925
    #getter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1300(Landroid/view/View$TransformationInfo;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    .line 8926
    #getter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1400(Landroid/view/View$TransformationInfo;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    .line 8929
    :cond_3
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 8930
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    invoke-static {v1}, Landroid/view/View;->nonzero(F)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    invoke-static {v1}, Landroid/view/View;->nonzero(F)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8931
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 8932
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 8933
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 8949
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 8950
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    #setter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1202(Landroid/view/View$TransformationInfo;Z)Z

    .line 8951
    const/4 v1, 0x1

    #setter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1702(Landroid/view/View$TransformationInfo;Z)Z

    goto/16 :goto_0

    .line 8935
    :cond_4
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    if-nez v1, :cond_5

    .line 8936
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1502(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 8937
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1602(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 8939
    :cond_5
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 8940
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 8941
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    neg-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Camera;->rotate(FFF)V

    .line 8942
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    #getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 8943
    #getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    neg-float v2, v2

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 8944
    #getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 8946
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    #getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 8947
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    goto/16 :goto_1
.end method

.method private updateUserPaddingRelative()V
    .locals 1

    .prologue
    .line 3800
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    if-gez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/View;->mUserPaddingRelative:Z

    .line 3801
    return-void

    .line 3800
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6790
    .local p1, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6791
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6793
    :cond_0
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;I)V
    .locals 1
    .parameter
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 6265
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 6266
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 6285
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_1

    .line 6302
    :cond_0
    :goto_0
    return-void

    .line 6288
    :cond_1
    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 6289
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6290
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6294
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6297
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6301
    :cond_3
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 4092
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 4093
    .local v0, li:Landroid/view/View$ListenerInfo;
    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4094
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #setter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$102(Landroid/view/View$ListenerInfo;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4097
    :cond_0
    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4098
    return-void
.end method

.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 4059
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 4060
    .local v0, li:Landroid/view/View$ListenerInfo;
    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4061
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$002(Landroid/view/View$ListenerInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 4063
    :cond_0
    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4064
    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4066
    :cond_1
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/high16 v3, 0x20

    .line 6354
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 6356
    .local v0, viewFlags:I
    and-int/lit16 v1, v0, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_0

    and-int v1, v0, v3

    if-ne v1, v3, :cond_1

    :cond_0
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_1

    .line 6358
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6360
    :cond_1
    return-void
.end method

.method public animate()Landroid/view/ViewPropertyAnimator;
    .locals 1

    .prologue
    .line 17270
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    .line 17271
    new-instance v0, Landroid/view/ViewPropertyAnimator;

    invoke-direct {v0, p0}, Landroid/view/ViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 17273
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 4613
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4614
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 4616
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4617
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4619
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method public applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V
    .locals 15
    .parameter "dr"
    .parameter "region"

    .prologue
    .line 16351
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    .line 16352
    .local v1, r:Landroid/graphics/Region;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 16353
    .local v13, db:Landroid/graphics/Rect;
    iget-object v12, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 16354
    .local v12, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_4

    if-eqz v12, :cond_4

    .line 16355
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v9, v2, v3

    .line 16356
    .local v9, w:I
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v2, v3

    .line 16357
    .local v5, h:I
    iget v2, v13, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_0

    .line 16359
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v13, Landroid/graphics/Rect;->left:I

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 16361
    :cond_0
    iget v2, v13, Landroid/graphics/Rect;->right:I

    if-ge v2, v9, :cond_1

    .line 16363
    iget v2, v13, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x0

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 16365
    :cond_1
    iget v2, v13, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_2

    .line 16367
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v10, v13, Landroid/graphics/Rect;->top:I

    sget-object v11, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 16369
    :cond_2
    iget v2, v13, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v5, :cond_3

    .line 16371
    const/4 v2, 0x0

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 16373
    :cond_3
    iget-object v14, v12, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 16374
    .local v14, location:[I
    invoke-virtual {p0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 16375
    const/4 v2, 0x0

    aget v2, v14, v2

    const/4 v3, 0x1

    aget v3, v14, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    .line 16376
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 16380
    .end local v5           #h:I
    .end local v9           #w:I
    .end local v14           #location:[I
    :goto_0
    return-void

    .line 16378
    :cond_4
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method assignParent(Landroid/view/ViewParent;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 11647
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    .line 11648
    iput-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 11655
    :goto_0
    return-void

    .line 11649
    :cond_0
    if-nez p1, :cond_1

    .line 11650
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 11652
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being added, but"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " it already has a parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected awakenScrollBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10185
    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v1, v1, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected awakenScrollBars(I)Z
    .locals 1
    .parameter "startDelay"

    .prologue
    .line 10237
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .locals 10
    .parameter "startDelay"
    .parameter "invalidate"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10279
    iget-object v3, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 10281
    .local v3, scrollCache:Landroid/view/View$ScrollabilityCache;
    if-eqz v3, :cond_0

    iget-boolean v6, v3, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-nez v6, :cond_1

    .line 10319
    :cond_0
    :goto_0
    return v4

    .line 10285
    :cond_1
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v6, :cond_2

    .line 10286
    new-instance v6, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v6}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 10289
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 10291
    :cond_3
    if-eqz p2, :cond_4

    .line 10293
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 10296
    :cond_4
    iget v4, v3, Landroid/view/View$ScrollabilityCache;->state:I

    if-nez v4, :cond_5

    .line 10300
    const/16 v0, 0x2ee

    .line 10301
    .local v0, KEY_REPEAT_FIRST_DELAY:I
    const/16 v4, 0x2ee

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 10306
    .end local v0           #KEY_REPEAT_FIRST_DELAY:I
    :cond_5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    int-to-long v8, p1

    add-long v1, v6, v8

    .line 10307
    .local v1, fadeStartTime:J
    iput-wide v1, v3, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    .line 10308
    iput v5, v3, Landroid/view/View$ScrollabilityCache;->state:I

    .line 10311
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_6

    .line 10312
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10313
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_6
    move v4, v5

    .line 10316
    goto :goto_0
.end method

.method public bringToFront()V
    .locals 1

    .prologue
    .line 8637
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 8638
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 8640
    :cond_0
    return-void
.end method

.method public buildDrawingCache()V
    .locals 1

    .prologue
    .line 12814
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 12815
    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 17
    .parameter "autoScale"

    .prologue
    .line 12841
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    const v16, 0x8000

    and-int v15, v15, v16

    if-eqz v15, :cond_0

    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    if-nez v15, :cond_4

    .line 12843
    :cond_0
    :goto_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/View;->mCachingFailed:Z

    .line 12845
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v16, v0

    sub-int v14, v15, v16

    .line 12846
    .local v14, width:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v16, v0

    sub-int v7, v15, v16

    .line 12848
    .local v7, height:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12849
    .local v1, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_6

    iget-boolean v15, v1, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v15, :cond_6

    const/4 v12, 0x1

    .line 12851
    .local v12, scalingRequired:Z
    :goto_1
    if-eqz p1, :cond_1

    if-eqz v12, :cond_1

    .line 12852
    int-to-float v15, v14

    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v14, v15

    .line 12853
    int-to-float v15, v7

    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v7, v15

    .line 12856
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 12857
    .local v5, drawingCacheBackgroundColor:I
    if-nez v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_2
    const/4 v8, 0x1

    .line 12858
    .local v8, opaque:Z
    :goto_2
    if-eqz v1, :cond_8

    iget-boolean v15, v1, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    if-eqz v15, :cond_8

    const/4 v13, 0x1

    .line 12860
    .local v13, use32BitCache:Z
    :goto_3
    if-lez v14, :cond_3

    if-lez v7, :cond_3

    mul-int v16, v14, v7

    if-eqz v8, :cond_9

    if-nez v13, :cond_9

    const/4 v15, 0x2

    :goto_4
    mul-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewConfiguration;->getScaledMaximumDrawingCacheSize()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_a

    .line 12864
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 12865
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/View;->mCachingFailed:Z

    .line 12978
    .end local v1           #attachInfo:Landroid/view/View$AttachInfo;
    .end local v5           #drawingCacheBackgroundColor:I
    .end local v7           #height:I
    .end local v8           #opaque:Z
    .end local v12           #scalingRequired:Z
    .end local v13           #use32BitCache:Z
    .end local v14           #width:I
    :cond_4
    :goto_5
    return-void

    .line 12841
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    if-nez v15, :cond_4

    goto/16 :goto_0

    .line 12849
    .restart local v1       #attachInfo:Landroid/view/View$AttachInfo;
    .restart local v7       #height:I
    .restart local v14       #width:I
    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    .line 12857
    .restart local v5       #drawingCacheBackgroundColor:I
    .restart local v12       #scalingRequired:Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 12858
    .restart local v8       #opaque:Z
    :cond_8
    const/4 v13, 0x0

    goto :goto_3

    .line 12860
    .restart local v13       #use32BitCache:Z
    :cond_9
    const/4 v15, 0x4

    goto :goto_4

    .line 12869
    :cond_a
    const/4 v4, 0x1

    .line 12870
    .local v4, clear:Z
    if-eqz p1, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 12872
    .local v2, bitmap:Landroid/graphics/Bitmap;
    :goto_6
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-ne v15, v14, :cond_b

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-eq v15, v7, :cond_e

    .line 12874
    :cond_b
    if-nez v8, :cond_15

    .line 12877
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v16, 0x18

    and-int v15, v15, v16

    sparse-switch v15, :sswitch_data_0

    .line 12888
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12898
    .local v9, quality:Landroid/graphics/Bitmap$Config;
    :goto_7
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 12901
    :cond_c
    :try_start_0
    invoke-static {v14, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 12902
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v15}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 12903
    if-eqz p1, :cond_17

    .line 12904
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 12908
    :goto_8
    if-eqz v8, :cond_d

    if-eqz v13, :cond_d

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 12922
    :cond_d
    if-eqz v5, :cond_19

    const/4 v4, 0x1

    .line 12926
    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :cond_e
    :goto_9
    if-eqz v1, :cond_1a

    .line 12927
    iget-object v3, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 12928
    .local v3, canvas:Landroid/graphics/Canvas;
    if-nez v3, :cond_f

    .line 12929
    new-instance v3, Landroid/graphics/Canvas;

    .end local v3           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 12931
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    :cond_f
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 12936
    const/4 v15, 0x0

    iput-object v15, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 12942
    :goto_a
    if-eqz v4, :cond_10

    .line 12943
    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 12946
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 12947
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 12949
    .local v10, restoreCount:I
    if-eqz p1, :cond_11

    if-eqz v12, :cond_11

    .line 12950
    iget v11, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 12951
    .local v11, scale:F
    invoke-virtual {v3, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 12954
    .end local v11           #scale:F
    :cond_11
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mScrollX:I

    neg-int v15, v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12956
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v15, v15, 0x20

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/View;->mPrivateFlags:I

    .line 12957
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v15, v15, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mLayerType:I

    if-eqz v15, :cond_13

    .line 12959
    :cond_12
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    const v16, 0x8000

    or-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/View;->mPrivateFlags:I

    .line 12963
    :cond_13
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v15, v15, 0x80

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b

    .line 12964
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    const v16, -0x600001

    and-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/View;->mPrivateFlags:I

    .line 12965
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 12970
    :goto_b
    invoke-virtual {v3, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 12971
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 12973
    if-eqz v1, :cond_4

    .line 12975
    iput-object v3, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_5

    .line 12870
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v10           #restoreCount:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    .line 12879
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    :sswitch_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12880
    .restart local v9       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_7

    .line 12882
    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :sswitch_1
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12883
    .restart local v9       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_7

    .line 12885
    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :sswitch_2
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12886
    .restart local v9       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_7

    .line 12894
    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :cond_15
    if-eqz v13, :cond_16

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .restart local v9       #quality:Landroid/graphics/Bitmap$Config;
    :goto_c
    goto/16 :goto_7

    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :cond_16
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_c

    .line 12906
    .restart local v9       #quality:Landroid/graphics/Bitmap$Config;
    :cond_17
    :try_start_1
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    .line 12909
    :catch_0
    move-exception v6

    .line 12913
    .local v6, e:Ljava/lang/OutOfMemoryError;
    if-eqz p1, :cond_18

    .line 12914
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 12918
    :goto_d
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/View;->mCachingFailed:Z

    goto/16 :goto_5

    .line 12916
    :cond_18
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_d

    .line 12922
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 12939
    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :cond_1a
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v3       #canvas:Landroid/graphics/Canvas;
    goto/16 :goto_a

    .line 12967
    .restart local v10       #restoreCount:I
    :cond_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    .line 12877
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x80000 -> :sswitch_1
        0x100000 -> :sswitch_2
    .end sparse-switch
.end method

.method public buildLayer()V
    .locals 2

    .prologue
    .line 12354
    iget v0, p0, Landroid/view/View;->mLayerType:I

    if-nez v0, :cond_1

    .line 12372
    :cond_0
    :goto_0
    return-void

    .line 12356
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_2

    .line 12357
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This view must be attached to a window first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12360
    :cond_2
    iget v0, p0, Landroid/view/View;->mLayerType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 12369
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    goto :goto_0

    .line 12362
    :pswitch_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12365
    invoke-virtual {p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    goto :goto_0

    .line 12360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public callOnClick()Z
    .locals 2

    .prologue
    .line 4208
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4209
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 4210
    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4211
    const/4 v1, 0x1

    .line 4213
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method canAcceptDrag()Z
    .locals 1

    .prologue
    .line 16321
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canHaveDisplayList()Z
    .locals 1

    .prologue
    .line 12553
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canResolveLayoutDirection()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11850
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 11854
    :cond_0
    :goto_0
    return v0

    .line 11852
    :pswitch_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 11850
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public canResolveTextAlignment()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 16907
    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 16911
    :cond_0
    :goto_0
    return v0

    .line 16909
    :pswitch_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 16907
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public canResolveTextDirection()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 16717
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 16721
    :cond_0
    :goto_0
    return v0

    .line 16719
    :pswitch_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 16717
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 11413
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    .line 11414
    .local v0, offset:I
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 11415
    .local v1, range:I
    if-nez v1, :cond_1

    move v2, v3

    .line 11419
    :cond_0
    :goto_0
    return v2

    .line 11416
    :cond_1
    if-gez p1, :cond_2

    .line 11417
    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 11419
    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public canScrollVertically(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 11430
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    .line 11431
    .local v0, offset:I
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 11432
    .local v1, range:I
    if-nez v1, :cond_1

    move v2, v3

    .line 11436
    :cond_0
    :goto_0
    return v2

    .line 11433
    :cond_1
    if-gez p1, :cond_2

    .line 11434
    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 11436
    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 0

    .prologue
    .line 8442
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 8449
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 8450
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 7958
    const/4 v0, 0x0

    return v0
.end method

.method public clearAccessibilityFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6416
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v3, 0x400

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 6417
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    const v3, -0x4000001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6418
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6419
    const/high16 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 6420
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 6424
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 6425
    .local v1, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_1

    .line 6426
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    .line 6427
    .local v0, focusHost:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-static {v0, p0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6428
    invoke-virtual {v1, v4, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6431
    .end local v0           #focusHost:Landroid/view/View;
    :cond_1
    return-void
.end method

.method clearAccessibilityFocusNoCallbacks()V
    .locals 2

    .prologue
    .line 6488
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 6489
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6490
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6492
    :cond_0
    return-void
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    .line 15744
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 15745
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    .line 15747
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 15748
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 15749
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4443
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4444
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4446
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 4447
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 4450
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4452
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4454
    invoke-virtual {p0}, Landroid/view/View;->ensureInputFocusOnFirstFocusable()V

    .line 4456
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4457
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 4460
    :cond_1
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 11342
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 11321
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 11300
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeOpaqueFlags()V
    .locals 3

    .prologue
    .line 10583
    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 10584
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x80

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10589
    :goto_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 10590
    .local v0, flags:I
    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_0

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1

    :cond_0
    const/high16 v1, 0x300

    and-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 10592
    :cond_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10596
    :goto_1
    return-void

    .line 10586
    .end local v0           #flags:I
    :cond_2
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x800001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0

    .line 10594
    .restart local v0       #flags:I
    :cond_3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 10932
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 11403
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 11382
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 11361
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .prologue
    .line 4837
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .line 4838
    .local v1, provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v1, :cond_0

    .line 4839
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 4843
    :goto_0
    return-object v0

    .line 4841
    :cond_0
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 4842
    .local v0, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 7972
    invoke-virtual {p0}, Landroid/view/View;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .local v1, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v2, p1

    .line 7976
    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 7978
    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 7979
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7980
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_0

    .line 7981
    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v2, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    move-object v2, p1

    .line 7986
    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 7988
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    .line 7989
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 7991
    :cond_1
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    .line 12985
    iget v9, p0, Landroid/view/View;->mRight:I

    iget v10, p0, Landroid/view/View;->mLeft:I

    sub-int v8, v9, v10

    .line 12986
    .local v8, width:I
    iget v9, p0, Landroid/view/View;->mBottom:I

    iget v10, p0, Landroid/view/View;->mTop:I

    sub-int v4, v9, v10

    .line 12988
    .local v4, height:I
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12989
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    iget v7, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 12990
    .local v7, scale:F
    :goto_0
    int-to-float v9, v8

    mul-float/2addr v9, v7

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v8, v9

    .line 12991
    int-to-float v9, v4

    mul-float/2addr v9, v7

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v4, v9

    .line 12993
    if-lez v8, :cond_1

    .end local v8           #width:I
    :goto_1
    if-lez v4, :cond_2

    .end local v4           #height:I
    :goto_2
    invoke-static {v8, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 12994
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    .line 12995
    new-instance v9, Ljava/lang/OutOfMemoryError;

    invoke-direct {v9}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v9

    .line 12989
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #scale:F
    .restart local v4       #height:I
    .restart local v8       #width:I
    :cond_0
    const/high16 v7, 0x3f80

    goto :goto_0

    .line 12993
    .restart local v7       #scale:F
    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    .end local v8           #width:I
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 12998
    .end local v4           #height:I
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 12999
    .local v5, resources:Landroid/content/res/Resources;
    if-eqz v5, :cond_4

    .line 13000
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 13004
    :cond_4
    if-eqz v0, :cond_8

    .line 13005
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 13006
    .local v2, canvas:Landroid/graphics/Canvas;
    if-nez v2, :cond_5

    .line 13007
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 13009
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    :cond_5
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 13014
    const/4 v9, 0x0

    iput-object v9, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 13020
    :goto_3
    const/high16 v9, -0x100

    and-int/2addr v9, p2

    if-eqz v9, :cond_6

    .line 13021
    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 13024
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 13025
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 13026
    .local v6, restoreCount:I
    invoke-virtual {v2, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 13027
    iget v9, p0, Landroid/view/View;->mScrollX:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Landroid/view/View;->mScrollY:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13030
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13031
    .local v3, flags:I
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    const v10, -0x600001

    and-int/2addr v9, v10

    iput v9, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13034
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x80

    const/16 v10, 0x80

    if-ne v9, v10, :cond_9

    .line 13035
    invoke-virtual {p0, v2}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 13040
    :goto_4
    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13042
    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 13043
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 13045
    if-eqz v0, :cond_7

    .line 13047
    iput-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 13050
    :cond_7
    return-object v1

    .line 13017
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #flags:I
    .end local v6           #restoreCount:I
    :cond_8
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v2       #canvas:Landroid/graphics/Canvas;
    goto :goto_3

    .line 13037
    .restart local v3       #flags:I
    .restart local v6       #restoreCount:I
    :cond_9
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method public debug()V
    .locals 1

    .prologue
    .line 15303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->debug(I)V

    .line 15304
    return-void
.end method

.method protected debug(I)V
    .locals 5
    .parameter "depth"

    .prologue
    .line 15316
    add-int/lit8 v3, p1, -0x1

    invoke-static {v3}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 15318
    .local v1, output:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15319
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 15320
    .local v0, id:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 15321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15323
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 15324
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 15325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15327
    :cond_1
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15329
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 15330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FOCUSED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15331
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15334
    :cond_2
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 15335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "frame={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} scroll={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15338
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15340
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eqz v3, :cond_4

    .line 15342
    :cond_3
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 15343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "padding={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15345
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15348
    :cond_4
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 15349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mMeasureWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMeasureHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15351
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15353
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 15354
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v3, :cond_5

    .line 15355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BAD! no layout params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15359
    :goto_0
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15361
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 15362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "flags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mViewFlags:I

    invoke-static {v4}, Landroid/view/View;->printFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15365
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15367
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 15368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "privateFlags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-static {v4}, Landroid/view/View;->printPrivateFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15371
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15372
    return-void

    .line 15357
    :cond_5
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public destroyDrawingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12771
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 12772
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 12773
    iput-object v1, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 12775
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 12776
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 12777
    iput-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    .line 12779
    :cond_1
    return-void
.end method

.method protected destroyHardwareResources()V
    .locals 1

    .prologue
    .line 12461
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->destroyLayer(Z)Z

    .line 12462
    return-void
.end method

.method destroyLayer(Z)Z
    .locals 3
    .parameter "valid"

    .prologue
    const/4 v1, 0x1

    .line 12433
    iget-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-eqz v2, :cond_2

    .line 12434
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12435
    .local v0, info:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12438
    :cond_0
    iget-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v2}, Landroid/view/HardwareLayer;->destroy()V

    .line 12439
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    .line 12441
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 12442
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 12446
    .end local v0           #info:Landroid/view/View$AttachInfo;
    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 7
    .parameter "info"
    .parameter "visibility"

    .prologue
    const/4 v3, 0x0

    .line 11990
    iput-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11991
    iget v5, p0, Landroid/view/View;->mWindowAttachCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/view/View;->mWindowAttachCount:I

    .line 11993
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11994
    iget-object v5, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v5, :cond_0

    .line 11995
    iget-object v5, p1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v6, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->merge(Landroid/view/ViewTreeObserver;)V

    .line 11996
    iput-object v3, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 11998
    :cond_0
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x8

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 11999
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12000
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x10

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12002
    :cond_1
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {p0, v5, p2}, Landroid/view/View;->performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 12003
    invoke-virtual {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 12005
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 12006
    .local v1, li:Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_2

    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    .line 12008
    .local v3, listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 12013
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnAttachStateChangeListener;

    .line 12014
    .local v2, listener:Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v2, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    goto :goto_0

    .line 12018
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Landroid/view/View$OnAttachStateChangeListener;
    :cond_3
    iget v4, p1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 12019
    .local v4, vis:I
    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 12020
    invoke-virtual {p0, v4}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 12022
    :cond_4
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_5

    .line 12024
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 12026
    :cond_5
    return-void
.end method

.method dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 0
    .parameter "attachInfo"
    .parameter "visibility"

    .prologue
    .line 7722
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 7723
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 7701
    invoke-virtual {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7702
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 12029
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12030
    .local v1, info:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    .line 12031
    iget v5, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 12032
    .local v5, vis:I
    if-eq v5, v7, :cond_0

    .line 12033
    invoke-virtual {p0, v7}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 12037
    .end local v5           #vis:I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 12039
    iget-object v2, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 12040
    .local v2, li:Landroid/view/View$ListenerInfo;
    if-eqz v2, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    .line 12042
    .local v4, listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 12047
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnAttachStateChangeListener;

    .line 12048
    .local v3, listener:Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v3, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Landroid/view/View$OnAttachStateChangeListener;
    .end local v4           #listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_1
    move-object v4, v6

    .line 12040
    goto :goto_0

    .line 12052
    .restart local v4       #listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_2
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v8, 0x10

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    .line 12053
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12054
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    const v8, -0x100001

    and-int/2addr v7, v8

    iput v7, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12057
    :cond_3
    iput-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12058
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 7601
    invoke-virtual {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    .line 7602
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 16312
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 16313
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16315
    const/4 v1, 0x1

    .line 16317
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 8709
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 0

    .prologue
    .line 7136
    invoke-virtual {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 7137
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 7472
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 7365
    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v4, :cond_0

    .line 7366
    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v4, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 7369
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 7370
    .local v1, source:I
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_6

    .line 7371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 7373
    .local v0, action:I
    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1

    const/16 v4, 0xa

    if-ne v0, v4, :cond_3

    .line 7376
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7393
    .end local v0           #action:I
    :cond_2
    :goto_0
    return v2

    .line 7379
    .restart local v0       #action:I
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7386
    .end local v0           #action:I
    :cond_4
    invoke-direct {p0, p1}, Landroid/view/View;->dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7390
    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_5

    .line 7391
    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_5
    move v2, v3

    .line 7393
    goto :goto_0

    .line 7382
    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 7458
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchGetDisplayList()V
    .locals 0

    .prologue
    .line 12542
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 7427
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7428
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7431
    const/4 v1, 0x1

    .line 7434
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7182
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 7183
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 7188
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7189
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-interface {v1, p0, v4, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 7202
    :goto_0
    return v1

    .line 7194
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_1
    invoke-virtual {p1, p0, v1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 7196
    goto :goto_0

    .line 7194
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 7199
    :cond_3
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4

    .line 7200
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_4
    move v1, v3

    .line 7202
    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 7168
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 7212
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final dispatchPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 7489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7490
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 7492
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 4699
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4700
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 4702
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 4712
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4713
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12152
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 12153
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 12154
    .local v0, state:Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 12157
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12158
    invoke-virtual {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 12159
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 12160
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12165
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12085
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 12086
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12087
    invoke-virtual {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 12088
    .local v0, state:Landroid/os/Parcelable;
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 12089
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12092
    :cond_0
    if-eqz v0, :cond_1

    .line 12095
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12098
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method dispatchScreenStateChanged(I)V
    .locals 0
    .parameter "screenState"

    .prologue
    .line 11700
    invoke-virtual {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 11701
    return-void
.end method

.method protected dispatchSetActivated(Z)V
    .locals 0
    .parameter "activated"

    .prologue
    .line 14857
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 6021
    return-void
.end method

.method protected dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 14815
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 0

    .prologue
    .line 7115
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7116
    invoke-direct {p0}, Landroid/view/View;->clearDisplayList()V

    .line 7118
    invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 7119
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 16024
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 16025
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 16026
    #getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    const v2, 0xffff

    and-int/2addr v2, p1

    invoke-interface {v1, v2}, Landroid/view/View$OnSystemUiVisibilityChangeListener;->onSystemUiVisibilityChange(I)V

    .line 16029
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7224
    if-eqz p1, :cond_3

    iget-boolean v5, p0, Landroid/view/View;->mEnablePenGesture:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Landroid/view/View;->mDisablePenGestureforfactorytest:Z

    if-nez v5, :cond_3

    .line 7225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 7226
    .local v0, action:I
    const/4 v2, 0x0

    .line 7228
    .local v2, ret:Z
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 7230
    packed-switch v0, :pswitch_data_0

    .line 7277
    :cond_0
    :goto_0
    if-ne v2, v3, :cond_3

    .line 7279
    invoke-virtual {p0}, Landroid/view/View;->isTextSelectionEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7280
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/ViewParent;->requestOnStylusButtonEvent(Landroid/view/MotionEvent;)V

    .line 7317
    .end local v0           #action:I
    .end local v2           #ret:Z
    :cond_1
    :goto_1
    return v3

    .line 7233
    .restart local v0       #action:I
    .restart local v2       #ret:Z
    :pswitch_0
    iput-boolean v3, p0, Landroid/view/View;->isPenSideButton:Z

    .line 7234
    const/4 v2, 0x1

    .line 7235
    goto :goto_0

    .line 7237
    :pswitch_1
    iget-boolean v5, p0, Landroid/view/View;->isPenSideButton:Z

    if-eqz v5, :cond_0

    .line 7239
    const/4 v2, 0x1

    .line 7240
    goto :goto_0

    .line 7248
    :pswitch_2
    iget-boolean v5, p0, Landroid/view/View;->isPenSideButton:Z

    if-eqz v5, :cond_0

    .line 7250
    iput-boolean v4, p0, Landroid/view/View;->isPenSideButton:Z

    .line 7251
    const/4 v2, 0x1

    goto :goto_0

    .line 7259
    :cond_2
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 7264
    :pswitch_3
    iput-boolean v4, p0, Landroid/view/View;->isPenSideButton:Z

    goto :goto_0

    .line 7267
    :pswitch_4
    iget-boolean v5, p0, Landroid/view/View;->isPenSideButton:Z

    if-eqz v5, :cond_0

    .line 7269
    const/4 v2, 0x1

    goto :goto_0

    .line 7297
    .end local v0           #action:I
    .end local v2           #ret:Z
    :cond_3
    iget-object v5, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v5, :cond_4

    .line 7298
    iget-object v5, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v5, p1, v4}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 7301
    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7303
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7304
    .local v1, li:Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_5

    #getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v5

    if-eqz v5, :cond_5

    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_5

    #getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-interface {v5, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7309
    :cond_5
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7314
    .end local v1           #li:Landroid/view/View$ListenerInfo;
    :cond_6
    iget-object v3, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_7

    .line 7315
    iget-object v3, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v3, p1, v4}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_7
    move v3, v4

    .line 7317
    goto :goto_1

    .line 7230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 7259
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 7345
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_0

    .line 7346
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 7349
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 6186
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 7564
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 7565
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 7504
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 7505
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 16005
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowSystemUiVisibilityChanged(I)V

    .line 16006
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 7625
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 7626
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 40
    .parameter "canvas"

    .prologue
    .line 13659
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v28, v0

    .line 13660
    .local v28, privateFlags:I
    const/high16 v2, 0x60

    and-int v2, v2, v28

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    if-nez v2, :cond_4

    :cond_0
    const/4 v12, 0x1

    .line 13662
    .local v12, dirtyOpaque:Z
    :goto_0
    const v2, -0x600001

    and-int v2, v2, v28

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/View;->mPrivateFlags:I

    .line 13679
    if-nez v12, :cond_2

    .line 13680
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 13681
    .local v9, background:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_2

    .line 13682
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v32, v0

    .line 13683
    .local v32, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v33, v0

    .line 13685
    .local v33, scrollY:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    if-eqz v2, :cond_1

    .line 13686
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13687
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 13690
    :cond_1
    or-int v2, v32, v33

    if-nez v2, :cond_5

    .line 13691
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 13701
    .end local v9           #background:Landroid/graphics/drawable/Drawable;
    .end local v32           #scrollX:I
    .end local v33           #scrollY:I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v39, v0

    .line 13702
    .local v39, viewFlags:I
    move/from16 v0, v39

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_6

    const/16 v21, 0x1

    .line 13703
    .local v21, horizontalEdges:Z
    :goto_2
    move/from16 v0, v39

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_7

    const/16 v38, 0x1

    .line 13704
    .local v38, verticalEdges:Z
    :goto_3
    if-nez v38, :cond_8

    if-nez v21, :cond_8

    .line 13706
    if-nez v12, :cond_3

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 13709
    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 13712
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 13859
    :goto_4
    return-void

    .line 13660
    .end local v12           #dirtyOpaque:Z
    .end local v21           #horizontalEdges:Z
    .end local v38           #verticalEdges:Z
    .end local v39           #viewFlags:I
    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    .line 13693
    .restart local v9       #background:Landroid/graphics/drawable/Drawable;
    .restart local v12       #dirtyOpaque:Z
    .restart local v32       #scrollX:I
    .restart local v33       #scrollY:I
    :cond_5
    move/from16 v0, v32

    int-to-float v2, v0

    move/from16 v0, v33

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13694
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 13695
    move/from16 v0, v32

    neg-int v2, v0

    int-to-float v2, v2

    move/from16 v0, v33

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 13702
    .end local v9           #background:Landroid/graphics/drawable/Drawable;
    .end local v32           #scrollX:I
    .end local v33           #scrollY:I
    .restart local v39       #viewFlags:I
    :cond_6
    const/16 v21, 0x0

    goto :goto_2

    .line 13703
    .restart local v21       #horizontalEdges:Z
    :cond_7
    const/16 v38, 0x0

    goto :goto_3

    .line 13725
    .restart local v38       #verticalEdges:Z
    :cond_8
    const/16 v16, 0x0

    .line 13726
    .local v16, drawTop:Z
    const/4 v13, 0x0

    .line 13727
    .local v13, drawBottom:Z
    const/4 v14, 0x0

    .line 13728
    .local v14, drawLeft:Z
    const/4 v15, 0x0

    .line 13730
    .local v15, drawRight:Z
    const/16 v37, 0x0

    .line 13731
    .local v37, topFadeStrength:F
    const/4 v11, 0x0

    .line 13732
    .local v11, bottomFadeStrength:F
    const/16 v23, 0x0

    .line 13733
    .local v23, leftFadeStrength:F
    const/16 v30, 0x0

    .line 13736
    .local v30, rightFadeStrength:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v27, v0

    .line 13738
    .local v27, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v26

    .line 13739
    .local v26, offsetRequired:Z
    if-eqz v26, :cond_9

    .line 13740
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result v2

    add-int v27, v27, v2

    .line 13743
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mScrollX:I

    add-int v22, v2, v27

    .line 13744
    .local v22, left:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mRight:I

    add-int v2, v2, v22

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v2, v3

    sub-int v29, v2, v27

    .line 13745
    .local v29, right:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->getFadeTop(Z)I

    move-result v3

    add-int v36, v2, v3

    .line 13746
    .local v36, top:I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->getFadeHeight(Z)I

    move-result v2

    add-int v10, v36, v2

    .line 13748
    .local v10, bottom:I
    if-eqz v26, :cond_a

    .line 13749
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightPaddingOffset()I

    move-result v2

    add-int v29, v29, v2

    .line 13750
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomPaddingOffset()I

    move-result v2

    add-int/2addr v10, v2

    .line 13753
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object/from16 v34, v0

    .line 13756
    .local v34, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    const/high16 v2, 0x4040

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v19, v2, v3

    .line 13757
    .local v19, fixedFadeHeight:F
    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/widget/NumberPicker;

    if-nez v2, :cond_19

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    int-to-float v2, v2

    cmpl-float v2, v19, v2

    if-lez v2, :cond_18

    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 13761
    .local v18, fadeHeight:F
    :goto_5
    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v24, v0

    .line 13765
    .local v24, length:I
    if-eqz v38, :cond_b

    add-int v2, v36, v24

    sub-int v3, v10, v24

    if-le v2, v3, :cond_b

    .line 13766
    sub-int v2, v10, v36

    div-int/lit8 v24, v2, 0x2

    .line 13770
    :cond_b
    if-eqz v21, :cond_c

    add-int v2, v22, v24

    sub-int v3, v29, v24

    if-le v2, v3, :cond_c

    .line 13771
    sub-int v2, v29, v22

    div-int/lit8 v24, v2, 0x2

    .line 13774
    :cond_c
    if-eqz v38, :cond_d

    .line 13775
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v37

    .line 13776
    mul-float v2, v37, v18

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1a

    const/16 v16, 0x1

    .line 13777
    :goto_6
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 13778
    mul-float v2, v11, v18

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b

    const/4 v13, 0x1

    .line 13781
    :cond_d
    :goto_7
    if-eqz v21, :cond_e

    .line 13782
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 13783
    mul-float v2, v23, v18

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1c

    const/4 v14, 0x1

    .line 13784
    :goto_8
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v30

    .line 13785
    mul-float v2, v30, v18

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1d

    const/4 v15, 0x1

    .line 13788
    :cond_e
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v31

    .line 13790
    .local v31, saveCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSolidColor()I

    move-result v35

    .line 13791
    .local v35, solidColor:I
    if-nez v35, :cond_1e

    .line 13792
    const/16 v20, 0x4

    .line 13794
    .local v20, flags:I
    if-eqz v16, :cond_f

    .line 13795
    move/from16 v0, v22

    int-to-float v3, v0

    move/from16 v0, v36

    int-to-float v4, v0

    move/from16 v0, v29

    int-to-float v5, v0

    add-int v2, v36, v24

    int-to-float v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 13798
    :cond_f
    if-eqz v13, :cond_10

    .line 13799
    move/from16 v0, v22

    int-to-float v3, v0

    sub-int v2, v10, v24

    int-to-float v4, v2

    move/from16 v0, v29

    int-to-float v5, v0

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 13802
    :cond_10
    if-eqz v14, :cond_11

    if-ltz v24, :cond_11

    .line 13803
    move/from16 v0, v22

    int-to-float v3, v0

    move/from16 v0, v36

    int-to-float v4, v0

    add-int v2, v22, v24

    int-to-float v5, v2

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 13806
    :cond_11
    if-eqz v15, :cond_12

    if-ltz v24, :cond_12

    .line 13807
    sub-int v2, v29, v24

    int-to-float v3, v2

    move/from16 v0, v36

    int-to-float v4, v0

    move/from16 v0, v29

    int-to-float v5, v0

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 13814
    .end local v20           #flags:I
    :cond_12
    :goto_a
    if-nez v12, :cond_13

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 13817
    :cond_13
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 13820
    move-object/from16 v0, v34

    iget-object v7, v0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 13821
    .local v7, p:Landroid/graphics/Paint;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    .line 13822
    .local v25, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    move-object/from16 v17, v0

    .line 13824
    .local v17, fade:Landroid/graphics/Shader;
    if-eqz v16, :cond_14

    .line 13825
    const/high16 v2, 0x3f80

    mul-float v3, v18, v37

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 13826
    move/from16 v0, v22

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 13827
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 13828
    move/from16 v0, v22

    int-to-float v3, v0

    move/from16 v0, v36

    int-to-float v4, v0

    move/from16 v0, v29

    int-to-float v5, v0

    add-int v2, v36, v24

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13831
    :cond_14
    if-eqz v13, :cond_15

    .line 13832
    const/high16 v2, 0x3f80

    mul-float v3, v18, v11

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 13833
    const/high16 v2, 0x4334

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 13834
    move/from16 v0, v22

    int-to-float v2, v0

    int-to-float v3, v10

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 13835
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 13836
    move/from16 v0, v22

    int-to-float v3, v0

    sub-int v2, v10, v24

    int-to-float v4, v2

    move/from16 v0, v29

    int-to-float v5, v0

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13839
    :cond_15
    if-eqz v14, :cond_16

    if-ltz v24, :cond_16

    .line 13840
    const/high16 v2, 0x3f80

    mul-float v3, v18, v23

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 13841
    const/high16 v2, -0x3d4c

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 13842
    move/from16 v0, v22

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 13843
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 13844
    move/from16 v0, v22

    int-to-float v3, v0

    move/from16 v0, v36

    int-to-float v4, v0

    add-int v2, v22, v24

    int-to-float v5, v2

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13847
    :cond_16
    if-eqz v15, :cond_17

    if-ltz v24, :cond_17

    .line 13848
    const/high16 v2, 0x3f80

    mul-float v3, v18, v30

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 13849
    const/high16 v2, 0x42b4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 13850
    move/from16 v0, v29

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 13851
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 13852
    sub-int v2, v29, v24

    int-to-float v3, v2

    move/from16 v0, v36

    int-to-float v4, v0

    move/from16 v0, v29

    int-to-float v5, v0

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13855
    :cond_17
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 13858
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .end local v7           #p:Landroid/graphics/Paint;
    .end local v17           #fade:Landroid/graphics/Shader;
    .end local v18           #fadeHeight:F
    .end local v24           #length:I
    .end local v25           #matrix:Landroid/graphics/Matrix;
    .end local v31           #saveCount:I
    .end local v35           #solidColor:I
    :cond_18
    move/from16 v18, v19

    .line 13757
    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, v34

    iget v2, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    int-to-float v0, v2

    move/from16 v18, v0

    goto/16 :goto_5

    .line 13776
    .restart local v18       #fadeHeight:F
    .restart local v24       #length:I
    :cond_1a
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 13778
    :cond_1b
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 13783
    :cond_1c
    const/4 v14, 0x0

    goto/16 :goto_8

    .line 13785
    :cond_1d
    const/4 v15, 0x0

    goto/16 :goto_9

    .line 13810
    .restart local v31       #saveCount:I
    .restart local v35       #solidColor:I
    :cond_1e
    invoke-virtual/range {v34 .. v35}, Landroid/view/View$ScrollabilityCache;->setFadeColor(I)V

    goto/16 :goto_a
.end method

.method draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z
    .locals 52
    .parameter "canvas"
    .parameter "parent"
    .parameter "drawingTime"

    .prologue
    .line 13315
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v3, :cond_5

    const/16 v51, 0x1

    .line 13316
    .local v51, useDisplayListProperties:Z
    :goto_0
    const/16 v38, 0x0

    .line 13317
    .local v38, more:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v27

    .line 13318
    .local v27, childHasIdentityMatrix:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    .line 13320
    .local v30, flags:I
    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_0

    .line 13321
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 13322
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v3, v3, -0x101

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 13325
    :cond_0
    const/16 v49, 0x0

    .line 13326
    .local v49, transformToApply:Landroid/view/animation/Transformation;
    const/16 v28, 0x0

    .line 13328
    .local v28, concatMatrix:Z
    const/4 v8, 0x0

    .line 13330
    .local v8, scalingRequired:Z
    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/view/ViewGroup;->mDrawLayers:Z

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayerType()I

    move-result v37

    .line 13332
    .local v37, layerType:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v31

    .line 13333
    .local v31, hardwareAccelerated:Z
    const v3, 0x8000

    and-int v3, v3, v30

    if-nez v3, :cond_1

    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_7

    .line 13335
    :cond_1
    const/16 v26, 0x1

    .line 13337
    .local v26, caching:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v8, v3, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 13342
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    .line 13343
    .local v7, a:Landroid/view/animation/Animation;
    if-eqz v7, :cond_a

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    .line 13344
    invoke-direct/range {v3 .. v8}, Landroid/view/View;->drawAnimation(Landroid/view/ViewGroup;JLandroid/view/animation/Animation;Z)Z

    move-result v38

    .line 13345
    invoke-virtual {v7}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v28

    .line 13346
    if-eqz v28, :cond_3

    .line 13347
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 13349
    :cond_3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v49, v0

    .line 13370
    :cond_4
    :goto_3
    if-nez v27, :cond_e

    const/4 v3, 0x1

    :goto_4
    or-int v28, v28, v3

    .line 13374
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    .line 13376
    if-nez v28, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    int-to-float v10, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mTop:I

    int-to-float v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    int-to-float v12, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    int-to-float v13, v3

    sget-object v14, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_f

    .line 13378
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v4, 0x1000

    or-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags2:I

    .line 13646
    :goto_5
    return v38

    .line 13315
    .end local v7           #a:Landroid/view/animation/Animation;
    .end local v8           #scalingRequired:Z
    .end local v26           #caching:Z
    .end local v27           #childHasIdentityMatrix:Z
    .end local v28           #concatMatrix:Z
    .end local v30           #flags:I
    .end local v31           #hardwareAccelerated:Z
    .end local v37           #layerType:I
    .end local v38           #more:Z
    .end local v49           #transformToApply:Landroid/view/animation/Transformation;
    .end local v51           #useDisplayListProperties:Z
    :cond_5
    const/16 v51, 0x0

    goto/16 :goto_0

    .line 13330
    .restart local v8       #scalingRequired:Z
    .restart local v27       #childHasIdentityMatrix:Z
    .restart local v28       #concatMatrix:Z
    .restart local v30       #flags:I
    .restart local v38       #more:Z
    .restart local v49       #transformToApply:Landroid/view/animation/Transformation;
    .restart local v51       #useDisplayListProperties:Z
    :cond_6
    const/16 v37, 0x0

    goto/16 :goto_1

    .line 13339
    .restart local v31       #hardwareAccelerated:Z
    .restart local v37       #layerType:I
    :cond_7
    if-nez v37, :cond_8

    if-eqz v31, :cond_9

    :cond_8
    const/16 v26, 0x1

    .restart local v26       #caching:Z
    :goto_6
    goto :goto_2

    .end local v26           #caching:Z
    :cond_9
    const/16 v26, 0x0

    goto :goto_6

    .line 13351
    .restart local v7       #a:Landroid/view/animation/Animation;
    .restart local v26       #caching:Z
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v3, :cond_b

    .line 13354
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/DisplayList;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 13355
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, -0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 13357
    :cond_b
    if-nez v51, :cond_4

    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x800

    if-eqz v3, :cond_4

    .line 13359
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v34

    .line 13361
    .local v34, hasTransform:Z
    if-eqz v34, :cond_4

    .line 13362
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v50

    .line 13363
    .local v50, transformType:I
    sget v3, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    move/from16 v0, v50

    if-eq v0, v3, :cond_c

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v49, v0

    .line 13365
    :goto_7
    sget v3, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    and-int v3, v3, v50

    if-eqz v3, :cond_d

    const/16 v28, 0x1

    :goto_8
    goto/16 :goto_3

    .line 13363
    :cond_c
    const/16 v49, 0x0

    goto :goto_7

    .line 13365
    :cond_d
    const/16 v28, 0x0

    goto :goto_8

    .line 13370
    .end local v34           #hasTransform:Z
    .end local v50           #transformType:I
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 13381
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags2:I

    const v4, -0x10000001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags2:I

    .line 13383
    if-eqz v31, :cond_10

    .line 13386
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, -0x8000

    and-int/2addr v3, v4

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_2a

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 13387
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    .line 13390
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 13392
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v44, v0

    .line 13393
    .local v44, sx:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v45, v0

    .line 13395
    .local v45, sy:I
    const/16 v29, 0x0

    .line 13396
    .local v29, displayList:Landroid/view/DisplayList;
    const/16 v24, 0x0

    .line 13397
    .local v24, cache:Landroid/graphics/Bitmap;
    const/16 v32, 0x0

    .line 13398
    .local v32, hasDisplayList:Z
    if-eqz v26, :cond_12

    .line 13399
    if-nez v31, :cond_2b

    .line 13400
    if-eqz v37, :cond_11

    .line 13401
    const/16 v37, 0x1

    .line 13402
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 13404
    :cond_11
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 13428
    :cond_12
    :goto_a
    and-int v51, v51, v32

    .line 13429
    if-eqz v51, :cond_13

    .line 13430
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v29

    .line 13431
    invoke-virtual/range {v29 .. v29}, Landroid/view/DisplayList;->isValid()Z

    move-result v3

    if-nez v3, :cond_13

    .line 13435
    const/16 v29, 0x0

    .line 13436
    const/16 v32, 0x0

    .line 13437
    const/16 v51, 0x0

    .line 13441
    :cond_13
    if-eqz v24, :cond_14

    if-eqz v32, :cond_2d

    :cond_14
    const/16 v33, 0x1

    .line 13442
    .local v33, hasNoCache:Z
    :goto_b
    if-nez v24, :cond_2e

    if-nez v32, :cond_2e

    const/4 v3, 0x2

    move/from16 v0, v37

    if-eq v0, v3, :cond_2e

    const/16 v39, 0x1

    .line 13445
    .local v39, offsetForScroll:Z
    :goto_c
    const/16 v40, -0x1

    .line 13446
    .local v40, restoreTo:I
    if-eqz v51, :cond_15

    if-eqz v49, :cond_16

    .line 13447
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v40

    .line 13449
    :cond_16
    if-eqz v39, :cond_2f

    .line 13450
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int v3, v3, v44

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int v4, v4, v45

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13466
    :cond_17
    :goto_d
    if-eqz v51, :cond_32

    const/high16 v23, 0x3f80

    .line 13467
    .local v23, alpha:F
    :goto_e
    if-nez v49, :cond_18

    const/high16 v3, 0x3f80

    cmpg-float v3, v23, v3

    if-ltz v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_39

    .line 13469
    :cond_18
    if-nez v49, :cond_19

    if-nez v27, :cond_1d

    .line 13470
    :cond_19
    const/16 v46, 0x0

    .line 13471
    .local v46, transX:I
    const/16 v47, 0x0

    .line 13473
    .local v47, transY:I
    if-eqz v39, :cond_1a

    .line 13474
    move/from16 v0, v44

    neg-int v0, v0

    move/from16 v46, v0

    .line 13475
    move/from16 v0, v45

    neg-int v0, v0

    move/from16 v47, v0

    .line 13478
    :cond_1a
    if-eqz v49, :cond_1c

    .line 13479
    if-eqz v28, :cond_1b

    .line 13480
    if-eqz v51, :cond_33

    .line 13481
    invoke-virtual/range {v49 .. v49}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/DisplayList;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 13489
    :goto_f
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 13492
    :cond_1b
    invoke-virtual/range {v49 .. v49}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v48

    .line 13493
    .local v48, transformAlpha:F
    const/high16 v3, 0x3f80

    cmpg-float v3, v48, v3

    if-gez v3, :cond_1c

    .line 13494
    mul-float v23, v23, v48

    .line 13495
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 13499
    .end local v48           #transformAlpha:F
    :cond_1c
    if-nez v27, :cond_1d

    if-nez v51, :cond_1d

    .line 13500
    move/from16 v0, v46

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v47

    neg-int v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13501
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 13502
    move/from16 v0, v46

    int-to-float v3, v0

    move/from16 v0, v47

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13507
    .end local v46           #transX:I
    .end local v47           #transY:I
    :cond_1d
    const/high16 v3, 0x3f80

    cmpg-float v3, v23, v3

    if-ltz v3, :cond_1e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    .line 13509
    :cond_1e
    const/high16 v3, 0x3f80

    cmpg-float v3, v23, v3

    if-gez v3, :cond_34

    .line 13510
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 13514
    :goto_10
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 13515
    if-eqz v33, :cond_21

    .line 13516
    const/high16 v3, 0x437f

    mul-float v3, v3, v23

    float-to-int v14, v3

    .line 13517
    .local v14, multipliedAlpha:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v3

    if-nez v3, :cond_38

    .line 13518
    const/4 v15, 0x4

    .line 13519
    .local v15, layerFlags:I
    and-int/lit8 v3, v30, 0x1

    if-nez v3, :cond_1f

    if-eqz v37, :cond_20

    .line 13521
    :cond_1f
    or-int/lit8 v15, v15, 0x10

    .line 13523
    :cond_20
    if-eqz v51, :cond_35

    .line 13524
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float v3, v3, v23

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/DisplayList;->setAlpha(F)V

    .line 13542
    .end local v14           #multipliedAlpha:I
    .end local v15           #layerFlags:I
    :cond_21
    :goto_11
    and-int/lit8 v3, v30, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    if-nez v51, :cond_22

    .line 13544
    if-eqz v39, :cond_3a

    .line 13545
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    add-int v3, v3, v44

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    add-int v4, v4, v45

    move-object/from16 v0, p1

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 13555
    :cond_22
    :goto_12
    if-nez v51, :cond_23

    if-eqz v32, :cond_23

    .line 13556
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v29

    .line 13557
    invoke-virtual/range {v29 .. v29}, Landroid/view/DisplayList;->isValid()Z

    move-result v3

    if-nez v3, :cond_23

    .line 13561
    const/16 v29, 0x0

    .line 13562
    const/16 v32, 0x0

    .line 13566
    :cond_23
    if-eqz v33, :cond_42

    .line 13567
    const/16 v36, 0x0

    .line 13568
    .local v36, layerRendered:Z
    const/4 v3, 0x2

    move/from16 v0, v37

    if-ne v0, v3, :cond_24

    if-nez v51, :cond_24

    .line 13569
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v35

    .line 13570
    .local v35, layer:Landroid/view/HardwareLayer;
    if-eqz v35, :cond_3d

    invoke-virtual/range {v35 .. v35}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 13571
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f

    mul-float v4, v4, v23

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v3, p1

    .line 13572
    check-cast v3, Landroid/view/HardwareCanvas;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 13573
    const/16 v36, 0x1

    .line 13583
    .end local v35           #layer:Landroid/view/HardwareLayer;
    :cond_24
    :goto_13
    if-nez v36, :cond_25

    .line 13584
    if-nez v32, :cond_41

    .line 13586
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_40

    .line 13587
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x600001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    .line 13588
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 13622
    .end local v36           #layerRendered:Z
    :cond_25
    :goto_14
    if-ltz v40, :cond_26

    .line 13623
    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 13626
    :cond_26
    if-eqz v7, :cond_28

    if-nez v38, :cond_28

    .line 13627
    if-nez v31, :cond_27

    invoke-virtual {v7}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v3

    if-nez v3, :cond_27

    .line 13628
    const/16 v3, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->onSetAlpha(I)Z

    .line 13630
    :cond_27
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7}, Landroid/view/ViewGroup;->finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 13633
    :cond_28
    if-eqz v38, :cond_29

    if-eqz v31, :cond_29

    .line 13637
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 13638
    invoke-virtual {v7}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v3

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x4

    and-int/2addr v3, v4

    const/high16 v4, 0x4

    if-ne v3, v4, :cond_29

    .line 13640
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 13644
    :cond_29
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/View;->mRecreateDisplayList:Z

    goto/16 :goto_5

    .line 13386
    .end local v23           #alpha:F
    .end local v24           #cache:Landroid/graphics/Bitmap;
    .end local v29           #displayList:Landroid/view/DisplayList;
    .end local v32           #hasDisplayList:Z
    .end local v33           #hasNoCache:Z
    .end local v39           #offsetForScroll:Z
    .end local v40           #restoreTo:I
    .end local v44           #sx:I
    .end local v45           #sy:I
    :cond_2a
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 13406
    .restart local v24       #cache:Landroid/graphics/Bitmap;
    .restart local v29       #displayList:Landroid/view/DisplayList;
    .restart local v32       #hasDisplayList:Z
    .restart local v44       #sx:I
    .restart local v45       #sy:I
    :cond_2b
    packed-switch v37, :pswitch_data_0

    goto/16 :goto_a

    .line 13423
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v32

    goto/16 :goto_a

    .line 13408
    :pswitch_1
    if-eqz v51, :cond_2c

    .line 13409
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v32

    goto/16 :goto_a

    .line 13411
    :cond_2c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 13412
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 13414
    goto/16 :goto_a

    .line 13416
    :pswitch_2
    if-eqz v51, :cond_12

    .line 13417
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v32

    goto/16 :goto_a

    .line 13441
    :cond_2d
    const/16 v33, 0x0

    goto/16 :goto_b

    .line 13442
    .restart local v33       #hasNoCache:Z
    :cond_2e
    const/16 v39, 0x0

    goto/16 :goto_c

    .line 13452
    .restart local v39       #offsetForScroll:Z
    .restart local v40       #restoreTo:I
    :cond_2f
    if-nez v51, :cond_30

    .line 13453
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13455
    :cond_30
    if-eqz v8, :cond_17

    .line 13456
    if-eqz v51, :cond_31

    .line 13458
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v40

    .line 13461
    :cond_31
    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mApplicationScale:F

    div-float v41, v3, v4

    .line 13462
    .local v41, scale:F
    move-object/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_d

    .line 13466
    .end local v41           #scale:F
    :cond_32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v23

    goto/16 :goto_e

    .line 13485
    .restart local v23       #alpha:F
    .restart local v46       #transX:I
    .restart local v47       #transY:I
    :cond_33
    move/from16 v0, v46

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v47

    neg-int v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13486
    invoke-virtual/range {v49 .. v49}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 13487
    move/from16 v0, v46

    int-to-float v3, v0

    move/from16 v0, v47

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_f

    .line 13512
    .end local v46           #transX:I
    .end local v47           #transY:I
    :cond_34
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, -0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags3:I

    goto/16 :goto_10

    .line 13525
    .restart local v14       #multipliedAlpha:I
    .restart local v15       #layerFlags:I
    :cond_35
    if-nez v37, :cond_21

    .line 13526
    if-eqz v32, :cond_36

    const/16 v42, 0x0

    .line 13527
    .local v42, scrollX:I
    :goto_15
    if-eqz v32, :cond_37

    const/16 v43, 0x0

    .line 13528
    .local v43, scrollY:I
    :goto_16
    move/from16 v0, v42

    int-to-float v10, v0

    move/from16 v0, v43

    int-to-float v11, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    add-int v3, v3, v42

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v12, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    add-int v3, v3, v43

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    int-to-float v13, v3

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto/16 :goto_11

    .end local v42           #scrollX:I
    .end local v43           #scrollY:I
    :cond_36
    move/from16 v42, v44

    .line 13526
    goto :goto_15

    .restart local v42       #scrollX:I
    :cond_37
    move/from16 v43, v45

    .line 13527
    goto :goto_16

    .line 13533
    .end local v15           #layerFlags:I
    .end local v42           #scrollX:I
    :cond_38
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x4

    or-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_11

    .line 13537
    .end local v14           #multipliedAlpha:I
    :cond_39
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x4

    and-int/2addr v3, v4

    const/high16 v4, 0x4

    if-ne v3, v4, :cond_21

    .line 13538
    const/16 v3, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->onSetAlpha(I)Z

    .line 13539
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x40001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_11

    .line 13547
    :cond_3a
    if-eqz v8, :cond_3b

    if-nez v24, :cond_3c

    .line 13548
    :cond_3b
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_12

    .line 13550
    :cond_3c
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_12

    .line 13575
    .restart local v35       #layer:Landroid/view/HardwareLayer;
    .restart local v36       #layerRendered:Z
    :cond_3d
    if-eqz v32, :cond_3e

    const/16 v42, 0x0

    .line 13576
    .restart local v42       #scrollX:I
    :goto_17
    if-eqz v32, :cond_3f

    const/16 v43, 0x0

    .line 13577
    .restart local v43       #scrollY:I
    :goto_18
    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    add-int v3, v3, v42

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    add-int v3, v3, v43

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0x14

    move-object/from16 v16, p1

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto/16 :goto_13

    .end local v42           #scrollX:I
    .end local v43           #scrollY:I
    :cond_3e
    move/from16 v42, v44

    .line 13575
    goto :goto_17

    .restart local v42       #scrollX:I
    :cond_3f
    move/from16 v43, v45

    .line 13576
    goto :goto_18

    .line 13590
    .end local v35           #layer:Landroid/view/HardwareLayer;
    .end local v42           #scrollX:I
    :cond_40
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_14

    .line 13593
    :cond_41
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x600001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    move-object/from16 v3, p1

    .line 13594
    check-cast v3, Landroid/view/HardwareCanvas;

    const/4 v4, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v4, v1}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    goto/16 :goto_14

    .line 13597
    .end local v36           #layerRendered:Z
    :cond_42
    if-eqz v24, :cond_25

    .line 13598
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x600001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    .line 13601
    if-nez v37, :cond_46

    .line 13602
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 13603
    .local v25, cachePaint:Landroid/graphics/Paint;
    if-nez v25, :cond_43

    .line 13604
    new-instance v25, Landroid/graphics/Paint;

    .end local v25           #cachePaint:Landroid/graphics/Paint;
    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    .line 13605
    .restart local v25       #cachePaint:Landroid/graphics/Paint;
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 13606
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 13608
    :cond_43
    const/high16 v3, 0x3f80

    cmpg-float v3, v23, v3

    if-gez v3, :cond_45

    .line 13609
    const/high16 v3, 0x437f

    mul-float v3, v3, v23

    float-to-int v3, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13610
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v3, v3, 0x1000

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 13619
    :cond_44
    :goto_19
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_14

    .line 13611
    :cond_45
    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x1000

    if-eqz v3, :cond_44

    .line 13612
    const/16 v3, 0xff

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13613
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v3, v3, -0x1001

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_19

    .line 13616
    .end local v25           #cachePaint:Landroid/graphics/Paint;
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 13617
    .restart local v25       #cachePaint:Landroid/graphics/Paint;
    const/high16 v3, 0x437f

    mul-float v3, v3, v23

    float-to-int v3, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_19

    .line 13406
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 14270
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 14271
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14272
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 14274
    :cond_0
    return-void
.end method

.method ensureInputFocusOnFirstFocusable()V
    .locals 1

    .prologue
    .line 4463
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 4464
    .local v0, root:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4465
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4467
    :cond_0
    return-void
.end method

.method ensureTransformationInfo()V
    .locals 1

    .prologue
    .line 8903
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-nez v0, :cond_0

    .line 8904
    new-instance v0, Landroid/view/View$TransformationInfo;

    invoke-direct {v0}, Landroid/view/View$TransformationInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8906
    :cond_0
    return-void
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 5228
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .parameter "root"
    .parameter "direction"

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 6198
    sparse-switch p2, :sswitch_data_0

    .line 6225
    :cond_0
    :goto_0
    return-object v1

    .line 6200
    :sswitch_0
    iget v2, p0, Landroid/view/View;->mNextFocusLeftId:I

    if-eq v2, v3, :cond_0

    .line 6201
    iget v1, p0, Landroid/view/View;->mNextFocusLeftId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6203
    :sswitch_1
    iget v2, p0, Landroid/view/View;->mNextFocusRightId:I

    if-eq v2, v3, :cond_0

    .line 6204
    iget v1, p0, Landroid/view/View;->mNextFocusRightId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6206
    :sswitch_2
    iget v2, p0, Landroid/view/View;->mNextFocusUpId:I

    if-eq v2, v3, :cond_0

    .line 6207
    iget v1, p0, Landroid/view/View;->mNextFocusUpId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6209
    :sswitch_3
    iget v2, p0, Landroid/view/View;->mNextFocusDownId:I

    if-eq v2, v3, :cond_0

    .line 6210
    iget v1, p0, Landroid/view/View;->mNextFocusDownId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6212
    :sswitch_4
    iget v2, p0, Landroid/view/View;->mNextFocusForwardId:I

    if-eq v2, v3, :cond_0

    .line 6213
    iget v1, p0, Landroid/view/View;->mNextFocusForwardId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6215
    :sswitch_5
    iget v2, p0, Landroid/view/View;->mID:I

    if-eq v2, v3, :cond_0

    .line 6216
    iget v0, p0, Landroid/view/View;->mID:I

    .line 6217
    .local v0, id:I
    new-instance v1, Landroid/view/View$2;

    invoke-direct {v1, p0, v0}, Landroid/view/View$2;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6198
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method final findViewByAccessibilityId(I)Landroid/view/View;
    .locals 1
    .parameter "accessibilityId"

    .prologue
    .line 15043
    if-gez p1, :cond_0

    .line 15044
    const/4 v0, 0x0

    .line 15046
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .parameter "accessibilityId"

    .prologue
    .line 15063
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 15066
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 15030
    if-gez p1, :cond_0

    .line 15031
    const/4 v0, 0x0

    .line 15033
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 15092
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .locals 4
    .parameter "start"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 15112
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 15114
    .local v0, childToSkip:Landroid/view/View;
    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 15115
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    if-ne p1, p0, :cond_1

    .line 15121
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v2

    .line 15119
    .restart local v2       #view:Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 15120
    .local v1, parent:Landroid/view/ViewParent;
    if-eqz v1, :cond_2

    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_3

    .line 15121
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 15124
    :cond_3
    move-object v0, p1

    move-object p1, v1

    .line 15125
    check-cast p1, Landroid/view/View;

    .line 15126
    goto :goto_0
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 15016
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15019
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 14991
    iget v0, p0, Landroid/view/View;->mID:I

    if-ne p1, v0, :cond_0

    .line 14994
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 15077
    if-nez p1, :cond_0

    .line 15078
    const/4 v0, 0x0

    .line 15080
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 15003
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15006
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter
    .parameter "searched"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 6320
    .local p1, outViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6321
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_0

    .line 6322
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6333
    :cond_0
    :goto_0
    return-void

    .line 6324
    :cond_1
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 6327
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 6328
    .local v1, searchedLowerCase:Ljava/lang/String;
    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 6329
    .local v0, contentDescriptionLowerCase:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6330
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4
    .parameter "insets"

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 5518
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5519
    iput v3, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 5520
    iput v3, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 5521
    iput-boolean v0, p0, Landroid/view/View;->mUserPaddingRelative:Z

    .line 5522
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    and-int/lit16 v1, v1, 0x600

    if-nez v1, :cond_2

    .line 5525
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 5526
    const/4 v0, 0x1

    .line 5532
    :cond_1
    :goto_0
    return v0

    .line 5528
    :cond_2
    invoke-direct {p0, v0, v0, v0, v0}, Landroid/view/View;->internalSetPadding(IIII)V

    goto :goto_0
.end method

.method public fitsSystemWindows()Z
    .locals 1

    .prologue
    .line 5577
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0
.end method

.method flushLayer()V
    .locals 2

    .prologue
    .line 12376
    iget v0, p0, Landroid/view/View;->mLayerType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 12377
    iget-object v0, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->flush()V

    .line 12379
    :cond_0
    return-void
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 1
    .parameter "direction"

    .prologue
    .line 6167
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 6168
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 6170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceLayout()V
    .locals 2

    .prologue
    .line 15427
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15428
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15429
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 10
    .parameter "region"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 15834
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 15835
    .local v6, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz p1, :cond_0

    if-eqz v6, :cond_0

    .line 15836
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15837
    .local v8, pflags:I
    and-int/lit16 v0, v8, 0x80

    if-nez v0, :cond_1

    .line 15840
    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 15841
    .local v7, location:[I
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 15842
    aget v1, v7, v3

    aget v2, v7, v9

    aget v0, v7, v3

    iget v3, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v0, v3

    aget v0, v7, v9

    iget v4, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, v4

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v4, v0, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 15851
    .end local v7           #location:[I
    .end local v8           #pflags:I
    :cond_0
    :goto_0
    return v9

    .line 15844
    .restart local v8       #pflags:I
    :cond_1
    and-int/lit16 v0, v8, 0x100

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 15848
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    goto :goto_0
.end method

.method public getAccessibilityCursorPosition()I
    .locals 1

    .prologue
    .line 7047
    iget v0, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    return v0
.end method

.method public getAccessibilityFocusable()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "auto"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "yes"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "no"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 6714
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x6000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1d

    return v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 5110
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 5111
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 5113
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccessibilityViewId()I
    .locals 2

    .prologue
    .line 5126
    iget v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5127
    sget v0, Landroid/view/View;->sNextAccessibilityViewId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/view/View;->sNextAccessibilityViewId:I

    iput v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 5129
    :cond_0
    iget v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    return v0
.end method

.method public getAccessibilityWindowId()I
    .locals 1

    .prologue
    .line 5140
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getActualAndReportedWindowLeftDelta()I
    .locals 2

    .prologue
    .line 5008
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 5009
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mActualWindowLeft:I

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    sub-int/2addr v0, v1

    .line 5011
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActualAndReportedWindowTopDelta()I
    .locals 2

    .prologue
    .line 5020
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 5021
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mActualWindowTop:I

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    sub-int/2addr v0, v1

    .line 5023
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9404
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 15725
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getApplicationWindowToken()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 11964
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 11965
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 11966
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 11967
    .local v1, appWindowToken:Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 11968
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    .line 11972
    .end local v1           #appWindowToken:Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 14579
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 15400
    const/4 v0, -0x1

    return v0
.end method

.method public final getBottom()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 9564
    iget v0, p0, Landroid/view/View;->mBottom:I

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 2

    .prologue
    .line 11033
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 1

    .prologue
    .line 13147
    const/4 v0, 0x0

    return v0
.end method

.method public getCameraDistance()F
    .locals 3

    .prologue
    .line 8986
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 8987
    iget-object v2, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v2

    .line 8988
    .local v0, dpi:F
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8989
    .local v1, info:Landroid/view/View$TransformationInfo;
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    if-nez v2, :cond_0

    .line 8990
    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1502(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 8991
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1602(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 8993
    :cond_0
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Camera;->getLocationZ()F

    move-result v2

    mul-float/2addr v2, v0

    neg-float v2, v2

    return v2
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
    .end annotation

    .prologue
    .line 5156
    iget-object v0, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 7772
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 8004
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContextMenuZOrderToTop()Z
    .locals 1

    .prologue
    .line 18326
    iget-boolean v0, p0, Landroid/view/View;->mIsSetContextMenuZOrderToTop:Z

    return v0
.end method

.method public getDisplayList()Landroid/view/DisplayList;
    .locals 2

    .prologue
    .line 12701
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/View;->getDisplayList(Landroid/view/DisplayList;Z)Landroid/view/DisplayList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    .line 12702
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    return-object v0
.end method

.method public final getDrawableState()[I
    .locals 1

    .prologue
    .line 14305
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 14306
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 14310
    :goto_0
    return-object v0

    .line 14308
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 14309
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14310
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    goto :goto_0
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 12720
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "autoScale"

    .prologue
    const/high16 v2, 0x2

    const v1, 0x8000

    .line 12751
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 12752
    const/4 v0, 0x0

    .line 12757
    :goto_0
    return-object v0

    .line 12754
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 12755
    invoke-virtual {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 12757
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getDrawingCacheBackgroundColor()I
    .locals 1

    .prologue
    .line 12805
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    return v0
.end method

.method public getDrawingCacheQuality()I
    .locals 2

    .prologue
    .line 5281
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x18

    and-int/2addr v0, v1

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "outRect"

    .prologue
    .line 8792
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 8793
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 8794
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 8795
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 8796
    return-void
.end method

.method public getDrawingTime()J
    .locals 2

    .prologue
    .line 12196
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-wide v0, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getFadeHeight(Z)I
    .locals 3
    .parameter "offsetRequired"

    .prologue
    .line 13165
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 13166
    .local v0, padding:I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 13167
    :cond_0
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method protected getFadeTop(Z)I
    .locals 2
    .parameter "offsetRequired"

    .prologue
    .line 13155
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 13156
    .local v0, top:I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 13157
    :cond_0
    return v0
.end method

.method public getFilterTouchesWhenObscured()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 6083
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFitsSystemWindows()Z
    .locals 2

    .prologue
    .line 5572
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFocusables(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6251
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6252
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 6253
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 9941
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 9942
    return-void
.end method

.method public final getGlobalVisibleRect(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 9972
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 5
    .parameter "r"
    .parameter "globalOffset"

    .prologue
    const/4 v2, 0x0

    .line 9959
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v3, v4

    .line 9960
    .local v1, width:I
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v0, v3, v4

    .line 9961
    .local v0, height:I
    if-lez v1, :cond_2

    if-lez v0, :cond_2

    .line 9962
    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9963
    if-eqz p2, :cond_0

    .line 9964
    iget v3, p0, Landroid/view/View;->mScrollX:I

    neg-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    neg-int v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 9966
    :cond_0
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, p1, p2}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 9968
    :cond_2
    return v2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 10610
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 10611
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 10613
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getHardwareLayer()Landroid/view/HardwareLayer;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 12388
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v3}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 12421
    :cond_0
    :goto_0
    return-object v2

    .line 12393
    :cond_1
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v3}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12395
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v3, v4

    .line 12396
    .local v1, width:I
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v0, v3, v4

    .line 12398
    .local v0, height:I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 12402
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-nez v3, :cond_4

    .line 12403
    :cond_2
    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-nez v3, :cond_5

    .line 12404
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v4

    invoke-virtual {v3, v1, v0, v4}, Landroid/view/HardwareRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v3

    iput-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    .line 12406
    iget-object v3, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5, v5, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 12413
    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v3}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12417
    iget-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-direct {p0, v3}, Landroid/view/View;->getHardwareLayerDisplayList(Landroid/view/HardwareLayer;)Landroid/view/DisplayList;

    move-result-object v3

    iget-object v4, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Landroid/view/HardwareLayer;->redraw(Landroid/view/DisplayList;Landroid/graphics/Rect;)V

    .line 12418
    iget-object v2, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 12421
    :cond_4
    iget-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    goto :goto_0

    .line 12407
    :cond_5
    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v3}, Landroid/view/HardwareLayer;->getWidth()I

    move-result v3

    if-ne v3, v1, :cond_6

    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v3}, Landroid/view/HardwareLayer;->getHeight()I

    move-result v3

    if-eq v3, v0, :cond_3

    .line 12408
    :cond_6
    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v3, v1, v0}, Landroid/view/HardwareLayer;->resize(II)V

    .line 12409
    iget-object v3, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5, v5, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public getHardwareRenderer()Landroid/view/HardwareRenderer;
    .locals 1

    .prologue
    .line 12563
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 12564
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 12566
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeight()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 8781
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 7
    .parameter "outRect"

    .prologue
    .line 9896
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9897
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9898
    .local v0, info:Landroid/view/View$TransformationInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v2, :cond_1

    .line 9899
    :cond_0
    iget v2, p0, Landroid/view/View;->mLeft:I

    iget v3, p0, Landroid/view/View;->mTop:I

    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 9908
    :goto_0
    return-void

    .line 9901
    :cond_1
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 9902
    .local v1, tmpRect:Landroid/graphics/RectF;
    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    neg-float v2, v2

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    neg-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9904
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 9905
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mTop:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/view/View;->mTop:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 2

    .prologue
    .line 3871
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3872
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3873
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 3874
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 3877
    .end local v0           #cache:Landroid/view/View$ScrollabilityCache;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHorizontalScrollFactor()F
    .locals 1

    .prologue
    .line 16561
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method protected getHorizontalScrollbarHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3909
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3910
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 3911
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 3912
    .local v1, scrollBar:Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_0

    .line 3913
    invoke-virtual {v1, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 3914
    .local v2, size:I
    if-gtz v2, :cond_0

    .line 3915
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 3921
    .end local v1           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v2           #size:I
    :cond_0
    return v2
.end method

.method public getHoverPopupWindow()Landroid/widget/HoverPopupWindow;
    .locals 2

    .prologue
    .line 18281
    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-nez v0, :cond_0

    .line 18282
    new-instance v0, Landroid/widget/HoverPopupWindow;

    iget v1, p0, Landroid/view/View;->mHoverPopupType:I

    invoke-direct {v0, p0, v1}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 18284
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    return-object v0
.end method

.method public getId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 15181
    iget v0, p0, Landroid/view/View;->mID:I

    return v0
.end method

.method public getImportantForAccessibility()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "auto"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "yes"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "no"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 6646
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x30

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method final getInverseMatrix()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 8963
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8964
    .local v0, info:Landroid/view/View$TransformationInfo;
    if-eqz v0, :cond_2

    .line 8965
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 8966
    #getter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1700(Landroid/view/View$TransformationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8967
    #getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    if-nez v1, :cond_0

    .line 8968
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1802(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 8970
    :cond_0
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    #getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 8971
    const/4 v1, 0x0

    #setter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1702(Landroid/view/View$TransformationInfo;Z)Z

    .line 8973
    :cond_1
    #getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 8975
    :goto_0
    return-object v1

    :cond_2
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 7040
    iget-object v0, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 3
    .parameter "granularity"

    .prologue
    .line 7077
    sparse-switch p1, :sswitch_data_0

    .line 7108
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 7079
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7080
    .local v1, text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 7081
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    move-result-object v0

    .line 7084
    .local v0, iterator:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_0

    .line 7089
    .end local v0           #iterator:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    .end local v1           #text:Ljava/lang/CharSequence;
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7090
    .restart local v1       #text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 7091
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    move-result-object v0

    .line 7094
    .local v0, iterator:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_0

    .line 7099
    .end local v0           #iterator:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    .end local v1           #text:Ljava/lang/CharSequence;
    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7100
    .restart local v1       #text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 7101
    invoke-static {}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getInstance()Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    move-result-object v0

    .line 7103
    .local v0, iterator:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_0

    .line 7077
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public getKeepScreenOn()Z
    .locals 2

    .prologue
    .line 5312
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .locals 1

    .prologue
    .line 7154
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayerType()I
    .locals 1

    .prologue
    .line 12337
    iget v0, p0, Landroid/view/View;->mLayerType:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 5774
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation

    .prologue
    .line 10100
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public final getLeft()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 9637
    iget v0, p0, Landroid/view/View;->mLeft:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 11048
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 1

    .prologue
    .line 13105
    const/4 v0, 0x0

    return v0
.end method

.method public getListViewItemTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15216
    iget-object v0, p0, Landroid/view/View;->mListViewItemTag:Ljava/lang/Object;

    return-object v0
.end method

.method getListenerInfo()Landroid/view/View$ListenerInfo;
    .locals 1

    .prologue
    .line 4036
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_0

    .line 4037
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4040
    :goto_0
    return-object v0

    .line 4039
    :cond_0
    new-instance v0, Landroid/view/View$ListenerInfo;

    invoke-direct {v0}, Landroid/view/View$ListenerInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4040
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    goto :goto_0
.end method

.method public final getLocalVisibleRect(Landroid/graphics/Rect;)Z
    .locals 3
    .parameter "r"

    .prologue
    .line 9976
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 9977
    .local v0, offset:Landroid/graphics/Point;
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9978
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 9979
    const/4 v1, 0x1

    .line 9981
    :goto_1
    return v1

    .line 9976
    .end local v0           #offset:Landroid/graphics/Point;
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0

    .line 9981
    .restart local v0       #offset:Landroid/graphics/Point;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getLocationInWindow([I)V
    .locals 9
    .parameter "location"

    .prologue
    const/high16 v8, 0x3f00

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 14938
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 14939
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "location must be an array of two integers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 14942
    :cond_1
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v4, :cond_2

    .line 14944
    aput v6, p1, v7

    aput v6, p1, v6

    .line 14983
    :goto_0
    return-void

    .line 14948
    :cond_2
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v4, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 14949
    .local v0, position:[F
    const/4 v4, 0x0

    aput v4, v0, v7

    aput v4, v0, v6

    .line 14951
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_3

    .line 14952
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 14955
    :cond_3
    aget v4, v0, v6

    iget v5, p0, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v6

    .line 14956
    aget v4, v0, v7

    iget v5, p0, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 14958
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 14959
    .local v2, viewParent:Landroid/view/ViewParent;
    :goto_1
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_5

    move-object v1, v2

    .line 14960
    check-cast v1, Landroid/view/View;

    .line 14962
    .local v1, view:Landroid/view/View;
    aget v4, v0, v6

    iget v5, v1, Landroid/view/View;->mScrollX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v6

    .line 14963
    aget v4, v0, v7

    iget v5, v1, Landroid/view/View;->mScrollY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v7

    .line 14965
    invoke-virtual {v1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_4

    .line 14966
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 14969
    :cond_4
    aget v4, v0, v6

    iget v5, v1, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v6

    .line 14970
    aget v4, v0, v7

    iget v5, v1, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 14972
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 14973
    goto :goto_1

    .line 14975
    .end local v1           #view:Landroid/view/View;
    :cond_5
    instance-of v4, v2, Landroid/view/ViewRootImpl;

    if-eqz v4, :cond_6

    move-object v3, v2

    .line 14977
    check-cast v3, Landroid/view/ViewRootImpl;

    .line 14978
    .local v3, vr:Landroid/view/ViewRootImpl;
    aget v4, v0, v7

    iget v5, v3, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v7

    .line 14981
    .end local v3           #vr:Landroid/view/ViewRootImpl;
    :cond_6
    aget v4, v0, v6

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p1, v6

    .line 14982
    aget v4, v0, v7

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p1, v7

    goto :goto_0
.end method

.method public getLocationOnScreen([I)V
    .locals 4
    .parameter "location"

    .prologue
    .line 14921
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 14923
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 14924
    .local v0, info:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 14925
    const/4 v1, 0x0

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 14926
    const/4 v1, 0x1

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 14928
    :cond_0
    return-void
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 8871
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    .line 8872
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 8873
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 8875
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public final getMeasuredHeight()I
    .locals 2

    .prologue
    .line 8830
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredHeightAndState()I
    .locals 1

    .prologue
    .line 8843
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    return v0
.end method

.method public final getMeasuredState()I
    .locals 2

    .prologue
    .line 8854
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mMeasuredHeight:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidth()I
    .locals 2

    .prologue
    .line 8806
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidthAndState()I
    .locals 1

    .prologue
    .line 8819
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 15669
    iget v0, p0, Landroid/view/View;->mMinHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 15698
    iget v0, p0, Landroid/view/View;->mMinWidth:I

    return v0
.end method

.method public getNextFocusDownId()I
    .locals 1

    .prologue
    .line 5399
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    return v0
.end method

.method public getNextFocusForwardId()I
    .locals 1

    .prologue
    .line 5420
    iget v0, p0, Landroid/view/View;->mNextFocusForwardId:I

    return v0
.end method

.method public getNextFocusLeftId()I
    .locals 1

    .prologue
    .line 5336
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    return v0
.end method

.method public getNextFocusRightId()I
    .locals 1

    .prologue
    .line 5357
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    return v0
.end method

.method public getNextFocusUpId()I
    .locals 1

    .prologue
    .line 5378
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    return v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 2

    .prologue
    .line 4121
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4122
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .prologue
    .line 14773
    iget-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    if-nez v0, :cond_0

    .line 14774
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_0
    iput-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    .line 14776
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    return-object v0

    .line 14774
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLayoutInsets()Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_0
.end method

.method public getOverScrollMode()I
    .locals 1

    .prologue
    .line 16510
    iget v0, p0, Landroid/view/View;->mOverScrollMode:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 14707
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingEnd()I
    .locals 2

    .prologue
    .line 14754
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 14718
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 14742
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method public getPaddingStart()I
    .locals 2

    .prologue
    .line 14730
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    goto :goto_0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 14696
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method public final getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 8718
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 2

    .prologue
    .line 6770
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 6771
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    .line 6772
    .local v0, parentView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6773
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6778
    .end local v0           #parentView:Landroid/view/View;
    :goto_0
    return-object v1

    .line 6775
    .restart local v0       #parentView:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 6778
    .end local v0           #parentView:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPivotX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9308
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPivotY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9359
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResolvedLayoutDirection()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "RESOLVED_DIRECTION_LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "RESOLVED_DIRECTION_RTL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 5815
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 5816
    invoke-virtual {p0}, Landroid/view/View;->resolveLayoutDirection()V

    .line 5818
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .parameter "who"

    .prologue
    .line 14234
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getResolvedTextAlignment()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "GRAVITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TEXT_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TEXT_END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "VIEW_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "VIEW_END"
            .end subannotation
        }
    .end annotation

    .prologue
    const/high16 v1, 0x1

    .line 16830
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 16831
    invoke-virtual {p0}, Landroid/view/View;->resolveTextAlignment()V

    .line 16833
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0xe

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public getResolvedTextDirection()I
    .locals 2

    .prologue
    .line 16635
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    .line 16636
    invoke-virtual {p0}, Landroid/view/View;->resolveTextDirection()V

    .line 16638
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x1c00

    shr-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 14154
    iget-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getRight()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 9704
    iget v0, p0, Landroid/view/View;->mRight:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 2

    .prologue
    .line 11062
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRightPaddingOffset()I
    .locals 1

    .prologue
    .line 13119
    const/4 v0, 0x0

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 3

    .prologue
    .line 14897
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    .line 14898
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 14899
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 14910
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 14904
    :cond_0
    move-object v0, p0

    .line 14906
    .local v0, parent:Landroid/view/View;
    :goto_1
    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 14907
    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v0           #parent:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0       #parent:Landroid/view/View;
    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 14910
    goto :goto_0
.end method

.method public getRotation()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9070
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRotationX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9168
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRotationY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9117
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScaleX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9220
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getScaleY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9263
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getScrollBarDefaultDelayBeforeFade()I
    .locals 1

    .prologue
    .line 11172
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    goto :goto_0
.end method

.method public getScrollBarFadeDuration()I
    .locals 1

    .prologue
    .line 11196
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    goto :goto_0
.end method

.method public getScrollBarSize()I
    .locals 1

    .prologue
    .line 11220
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    goto :goto_0
.end method

.method public getScrollBarStyle()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1000000
                to = "INSIDE_INSET"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2000000
                to = "OUTSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3000000
                to = "OUTSIDE_INSET"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 11279
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x300

    and-int/2addr v0, v1

    return v0
.end method

.method public final getScrollX()I
    .locals 1

    .prologue
    .line 8750
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method public final getScrollY()I
    .locals 1

    .prologue
    .line 8761
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 13874
    const/4 v0, 0x0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    .prologue
    .line 15640
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mMinHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mMinHeight:I

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 2

    .prologue
    .line 15656
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mMinWidth:I

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    .prologue
    .line 15976
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 15194
    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 15237
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 15238
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextAlignment()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "GRAVITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TEXT_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TEXT_END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "VIEW_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "VIEW_END"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 16770
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, 0xe000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xd

    return v0
.end method

.method public getTextDirection()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "FIRST_STRONG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ANY_RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 16587
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x1c0

    shr-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public final getTop()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 9497
    iget v0, p0, Landroid/view/View;->mTop:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 11019
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 1

    .prologue
    .line 13133
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchDelegate()Landroid/view/TouchDelegate;
    .locals 1

    .prologue
    .line 8474
    iget-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    return-object v0
.end method

.method public getTouchables()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6343
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 6344
    return-object v0
.end method

.method public getTranslationX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9817
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTranslationY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9859
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 2

    .prologue
    .line 3838
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3839
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3840
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 3841
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 3844
    .end local v0           #cache:Landroid/view/View$ScrollabilityCache;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getVerticalScrollFactor()F
    .locals 4

    .prologue
    .line 16540
    iget v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 16541
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 16542
    .local v0, outValue:Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16544
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16547
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    .line 16550
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_1
    iget v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    return v1
.end method

.method public getVerticalScrollbarPosition()I
    .locals 1

    .prologue
    .line 4032
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3887
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3888
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 3889
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 3890
    .local v1, scrollBar:Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_0

    .line 3891
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 3892
    .local v2, size:I
    if-gtz v2, :cond_0

    .line 3893
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 3899
    .end local v1           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v2           #size:I
    :cond_0
    return v2
.end method

.method public getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 1

    .prologue
    .line 10622
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 10623
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 10625
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .locals 1

    .prologue
    .line 14882
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 14883
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 14888
    :goto_0
    return-object v0

    .line 14885
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_1

    .line 14886
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 14888
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    goto :goto_0
.end method

.method public getVisibility()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "VISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "INVISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "GONE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 5609
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public final getWidth()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 8771
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getWindowAttachCount()I
    .locals 1

    .prologue
    .line 11941
    iget v0, p0, Landroid/view/View;->mWindowAttachCount:I

    return v0
.end method

.method getWindowSession()Landroid/view/IWindowSession;
    .locals 1

    .prologue
    .line 11981
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowSystemUiVisibility()I
    .locals 1

    .prologue
    .line 15986
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 11950
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowVisibility()I
    .locals 1

    .prologue
    .line 7651
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "outRect"

    .prologue
    .line 7671
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_0

    .line 7673
    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v3, v4, p1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7680
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v3, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 7681
    .local v2, insets:Landroid/graphics/Rect;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 7682
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 7683
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 7684
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 7689
    .end local v2           #insets:Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 7674
    :catch_0
    move-exception v1

    .line 7675
    .local v1, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 7687
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 7688
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getX()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9770
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getY()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9793
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hackTurnOffWindowResizeAnim(Z)V
    .locals 1
    .parameter "off"

    .prologue
    .line 17260
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    .line 17261
    return-void
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 4358
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 4359
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4361
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 4362
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p0}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 4365
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4366
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4368
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4369
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 4372
    :cond_1
    return-void
.end method

.method public hasFocus()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 4498
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 1

    .prologue
    .line 4514
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasHoveredChild()Z
    .locals 1

    .prologue
    .line 7444
    const/4 v0, 0x0

    return v0
.end method

.method final hasIdentityMatrix()Z
    .locals 1

    .prologue
    .line 8895
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    .line 8896
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 8897
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v0

    .line 8899
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasOnClickListeners()Z
    .locals 2

    .prologue
    .line 4145
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4146
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hasOpaqueScrollbars()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100

    .line 10602
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 9421
    const/4 v0, 0x1

    return v0
.end method

.method hasStaticLayer()Z
    .locals 1

    .prologue
    .line 12318
    const/4 v0, 0x1

    return v0
.end method

.method public hasTransientState()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 5848
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 7552
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public includeForAccessibility()Z
    .locals 1

    .prologue
    .line 6806
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 6807
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    if-nez v0, :cond_0

    .line 6808
    invoke-virtual {p0}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    .line 6812
    :goto_0
    return v0

    .line 6810
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 6812
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initializeFadingEdge(Landroid/content/res/TypedArray;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 3822
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 3824
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/16 v1, 0x18

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 3827
    return-void
.end method

.method protected initializeScrollbars(Landroid/content/res/TypedArray;)V
    .locals 9
    .parameter "a"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3936
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 3938
    iget-object v2, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3940
    .local v2, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v5, :cond_0

    .line 3941
    new-instance v5, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v5}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 3944
    :cond_0
    const/16 v5, 0x2c

    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 3946
    .local v1, fadeScrollbars:Z
    if-nez v1, :cond_1

    .line 3947
    iput v7, v2, Landroid/view/View$ScrollabilityCache;->state:I

    .line 3949
    :cond_1
    iput-boolean v1, v2, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 3952
    const/16 v5, 0x2a

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 3955
    const/16 v5, 0x2b

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 3960
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v5

    invoke-virtual {p1, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 3964
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3965
    .local v4, track:Landroid/graphics/drawable/Drawable;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3967
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3968
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 3969
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3972
    :cond_2
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 3974
    .local v0, alwaysDraw:Z
    if-eqz v0, :cond_3

    .line 3975
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawHorizontalTrack(Z)V

    .line 3978
    :cond_3
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3979
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3981
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3982
    if-eqz v3, :cond_4

    .line 3983
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3986
    :cond_4
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 3988
    if-eqz v0, :cond_5

    .line 3989
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawVerticalTrack(Z)V

    .line 3993
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 3994
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 10421
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 10422
    return-void
.end method

.method public invalidate(IIII)V
    .locals 9
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const v8, 0x8000

    const/high16 v7, -0x8000

    .line 10384
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10412
    :cond_0
    :goto_0
    return-void

    .line 10387
    :cond_1
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-eq v5, v6, :cond_2

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v8

    if-eq v5, v8, :cond_2

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_0

    .line 10390
    :cond_2
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10391
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v5, v7

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10392
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x20

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10393
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10394
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10404
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-ge p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    .line 10405
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 10406
    .local v2, scrollX:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 10407
    .local v3, scrollY:I
    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10408
    .local v4, tmpr:Landroid/graphics/Rect;
    sub-int v5, p1, v2

    sub-int v6, p2, v3

    sub-int v7, p3, v2

    sub-int v8, p4, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 10409
    invoke-interface {v1, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 9
    .parameter "dirty"

    .prologue
    const v8, 0x8000

    const/high16 v7, -0x8000

    .line 10341
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10370
    :cond_0
    :goto_0
    return-void

    .line 10344
    :cond_1
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-eq v5, v6, :cond_2

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v8

    if-eq v5, v8, :cond_2

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_0

    .line 10347
    :cond_2
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10348
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v5, v7

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10349
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x20

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10350
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10351
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10361
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 10362
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 10363
    .local v3, scrollX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 10364
    .local v4, scrollY:I
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10365
    .local v2, r:Landroid/graphics/Rect;
    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 10367
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method invalidate(Z)V
    .locals 8
    .parameter "invalidateCache"

    .prologue
    const v7, 0x8000

    const/4 v6, 0x0

    const/high16 v5, -0x8000

    .line 10436
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10469
    :cond_0
    :goto_0
    return-void

    .line 10439
    :cond_1
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x30

    if-eq v3, v4, :cond_3

    if-eqz p1, :cond_2

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_3

    :cond_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v3

    iget-boolean v4, p0, Landroid/view/View;->mLastIsOpaque:Z

    if-eq v3, v4, :cond_0

    .line 10442
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/View;->mLastIsOpaque:Z

    .line 10443
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10444
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x20

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10445
    if-eqz p1, :cond_4

    .line 10446
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10447
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x8001

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10449
    :cond_4
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10450
    .local v0, ai:Landroid/view/View$AttachInfo;
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10461
    .local v1, p:Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 10462
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10463
    .local v2, r:Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 10466
    invoke-interface {v1, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "drawable"

    .prologue
    .line 14163
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14164
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 14165
    .local v0, dirty:Landroid/graphics/Rect;
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 14166
    .local v1, scrollX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 14168
    .local v2, scrollY:I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 14171
    .end local v0           #dirty:Landroid/graphics/Rect;
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_0
    return-void
.end method

.method protected invalidateParentCaches()V
    .locals 3

    .prologue
    .line 10536
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 10537
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, -0x8000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 10539
    :cond_0
    return-void
.end method

.method protected invalidateParentIfNeeded()V
    .locals 2

    .prologue
    .line 10551
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 10552
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 10554
    :cond_0
    return-void
.end method

.method invalidateViewProperty(ZZ)V
    .locals 7
    .parameter "invalidateParent"
    .parameter "forceRedraw"

    .prologue
    const/4 v6, 0x0

    .line 10488
    iget-object v3, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_4

    .line 10489
    :cond_0
    if-eqz p1, :cond_1

    .line 10490
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 10492
    :cond_1
    if-eqz p2, :cond_2

    .line 10493
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10495
    :cond_2
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 10509
    :cond_3
    :goto_0
    return-void

    .line 10497
    :cond_4
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10498
    .local v0, ai:Landroid/view/View$AttachInfo;
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10499
    .local v1, p:Landroid/view/ViewParent;
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 10500
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10501
    .local v2, r:Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 10502
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 10503
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0, v2}, Landroid/view/ViewGroup;->invalidateChildFast(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 10505
    :cond_5
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public isAccessibilityFocusable()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6747
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v4, 0x6000

    and-int/2addr v3, v4

    ushr-int/lit8 v0, v3, 0x1d

    .line 6749
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 6758
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknow accessibility focusable mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    move v1, v2

    .line 6755
    :cond_0
    :goto_0
    :pswitch_1
    return v1

    :pswitch_2
    invoke-direct {p0}, Landroid/view/View;->canTakeAccessibilityFocusFromHover()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 6749
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isAccessibilityFocused()Z
    .locals 2

    .prologue
    .line 6368
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionableForAccessibility()Z
    .locals 1

    .prologue
    .line 6825
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActivated()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 14866
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClickable()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 5945
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 2

    .prologue
    .line 9573
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x60

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawingCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 12506
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDuplicateParentStateEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40

    .line 12234
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 5632
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocusable()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 6141
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocusableInTouchMode()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x4

    .line 6154
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 5217
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHapticFeedbackEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x1000

    .line 5753
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 13186
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalFadingEdgeEnabled()Z
    .locals 2

    .prologue
    .line 10946
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalScrollBarEnabled()Z
    .locals 2

    .prologue
    .line 11076
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHovered()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 8202
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isHoveringUIEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 18288
    sget v0, Landroid/view/View;->sHoverUIEnableFlag:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_0

    .line 18289
    sget v0, Landroid/view/View;->sHoverUIEnableFlag:I

    and-int/lit8 v0, v0, -0x10

    sput v0, Landroid/view/View;->sHoverUIEnableFlag:I

    .line 18290
    sget v2, Landroid/view/View;->sHoverUIEnableFlag:I

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v2

    sput v0, Landroid/view/View;->sHoverUIEnableFlag:I

    .line 18294
    :cond_0
    sget v0, Landroid/view/View;->sHoverUIEnableFlag:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v1, :cond_2

    :goto_1
    return v1

    .line 18290
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 18294
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isImportantForAccessibility()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6680
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v4, 0x30

    and-int/2addr v3, v4

    shr-int/lit8 v0, v3, 0x14

    .line 6682
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 6690
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknow important for accessibility mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    move v1, v2

    .line 6688
    :cond_0
    :goto_0
    :pswitch_1
    return v1

    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->isActionableForAccessibility()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Landroid/view/View;->hasListenersForAccessibility()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 6682
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 13069
    const/4 v0, 0x0

    return v0
.end method

.method public isInScrollingContainer()Z
    .locals 2

    .prologue
    .line 8387
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 8388
    .local v0, p:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 8389
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8390
    const/4 v1, 0x1

    .line 8394
    :goto_1
    return v1

    .line 8392
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 8394
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isInTouchMode()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 7757
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 7758
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 7760
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->isInTouchMode()Z

    move-result v0

    goto :goto_0
.end method

.method public isLayoutRequested()Z
    .locals 2

    .prologue
    .line 13977
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutRtl()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 5831
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongClickable()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 5972
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x180

    .line 10569
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    :goto_0
    const v1, 0x3f7aaaab

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 1

    .prologue
    .line 13091
    const/4 v0, 0x0

    return v0
.end method

.method public isPaddingRelative()Z
    .locals 1

    .prologue
    .line 14766
    iget-boolean v0, p0, Landroid/view/View;->mUserPaddingRelative:Z

    return v0
.end method

.method public isPressed()Z
    .locals 2

    .prologue
    .line 6035
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRootNamespace()Z
    .locals 1

    .prologue
    .line 15166
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaveEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 6048
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaveFromParentEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2000

    .line 6112
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollContainer()Z
    .locals 2

    .prologue
    .line 5241
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollbarFadingEnabled()Z
    .locals 1

    .prologue
    .line 11160
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget-boolean v0, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 14824
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShown()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 5440
    move-object v0, p0

    .line 5443
    .local v0, current:Landroid/view/View;
    :cond_0
    iget v3, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_2

    .line 5456
    :cond_1
    :goto_0
    return v2

    .line 5446
    :cond_2
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5447
    .local v1, parent:Landroid/view/ViewParent;
    if-eqz v1, :cond_1

    .line 5450
    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_3

    .line 5451
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 5453
    check-cast v0, Landroid/view/View;

    .line 5454
    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public isSoundEffectsEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x800

    .line 5724
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTextSelectionEnabled()Z
    .locals 4

    .prologue
    const/16 v1, 0x10

    .line 18298
    sget v0, Landroid/view/View;->sHoverUIEnableFlag:I

    and-int/lit16 v0, v0, 0xf0

    if-nez v0, :cond_0

    .line 18299
    sget v0, Landroid/view/View;->sHoverUIEnableFlag:I

    and-int/lit16 v0, v0, -0xf1

    sput v0, Landroid/view/View;->sHoverUIEnableFlag:I

    .line 18300
    sget v2, Landroid/view/View;->sHoverUIEnableFlag:I

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v2

    sput v0, Landroid/view/View;->sHoverUIEnableFlag:I

    .line 18304
    :cond_0
    sget v0, Landroid/view/View;->sHoverUIEnableFlag:I

    and-int/lit16 v0, v0, 0xf0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 18300
    :cond_1
    const/16 v0, 0x20

    goto :goto_0

    .line 18304
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isVerticalFadingEdgeEnabled()Z
    .locals 2

    .prologue
    .line 10983
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 2

    .prologue
    .line 11106
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 11591
    const/4 v0, 0x0

    return v0
.end method

.method protected isVisibleToUser()Z
    .locals 1

    .prologue
    .line 5036
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected isVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "boundInView"

    .prologue
    .line 5056
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v3, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5057
    .local v2, visibleRect:Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v3, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 5062
    .local v1, offset:Landroid/graphics/Point;
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 5067
    .local v0, isVisible:Z
    :goto_0
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 5068
    iget v3, v1, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 5069
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v3

    and-int/2addr v0, v3

    .line 5071
    :cond_0
    return v0

    .line 5062
    .end local v0           #isVisible:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 14420
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 14421
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 14423
    :cond_0
    return-void
.end method

.method public layout(IIII)V
    .locals 17
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 14002
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mLeft:I

    .line 14003
    .local v9, oldL:I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mTop:I

    .line 14004
    .local v10, oldT:I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mBottom:I

    .line 14005
    .local v12, oldB:I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mRight:I

    .line 14006
    .local v11, oldR:I
    invoke-virtual/range {p0 .. p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v2

    .line 14007
    .local v2, changed:Z
    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_1

    :cond_0
    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 14008
    invoke-virtual/range {v1 .. v6}, Landroid/view/View;->onLayout(ZIIII)V

    .line 14009
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x2001

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14011
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 14012
    .local v14, li:Landroid/view/View$ListenerInfo;
    if-eqz v14, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 14013
    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 14015
    .local v15, listenersCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 14016
    .local v16, numListeners:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    .line 14017
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnLayoutChangeListener;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-interface/range {v3 .. v12}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 14016
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 14021
    .end local v13           #i:I
    .end local v14           #li:Landroid/view/View$ListenerInfo;
    .end local v15           #listenersCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    .end local v16           #numListeners:I
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x1001

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14022
    return-void
.end method

.method public makeOptionalFitsSystemWindows()V
    .locals 1

    .prologue
    const/16 v0, 0x800

    .line 5594
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->setFlags(II)V

    .line 5595
    return-void
.end method

.method public final measure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 15452
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    if-eq p2, v0, :cond_2

    .line 15457
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15460
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 15464
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    .line 15465
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onMeasure() did not set the measured dimension by calling setMeasuredDimension()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15470
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15473
    :cond_2
    iput p1, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 15474
    iput p2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 15475
    return-void
.end method

.method needGlobalAttributesUpdate(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 7739
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 7740
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 7741
    if-nez p1, :cond_0

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    if-eqz v1, :cond_1

    .line 7743
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 7746
    :cond_1
    return-void
.end method

.method public notifyAccessibilityStateChanged()V
    .locals 2

    .prologue
    const/high16 v1, 0x800

    .line 6856
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6865
    :cond_0
    :goto_0
    return-void

    .line 6859
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 6860
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6861
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 6862
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->childAccessibilityStateChanged(Landroid/view/View;)V

    goto :goto_0
.end method

.method public offsetLeftAndRight(I)V
    .locals 10
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10041
    if-eqz p1, :cond_2

    .line 10042
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 10043
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    move v0, v6

    .line 10045
    .local v0, matrixIsIdentity:Z
    :goto_0
    if-eqz v0, :cond_6

    .line 10046
    iget-object v7, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v7, :cond_4

    .line 10047
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10069
    :cond_1
    :goto_1
    iget v7, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v7, p1

    iput v7, p0, Landroid/view/View;->mLeft:I

    .line 10070
    iget v7, p0, Landroid/view/View;->mRight:I

    add-int/2addr v7, p1

    iput v7, p0, Landroid/view/View;->mRight:I

    .line 10071
    iget-object v7, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v7, :cond_7

    .line 10072
    iget-object v6, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v6, p1}, Landroid/view/DisplayList;->offsetLeftRight(I)V

    .line 10073
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10081
    .end local v0           #matrixIsIdentity:Z
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v5

    .line 10043
    goto :goto_0

    .line 10049
    .restart local v0       #matrixIsIdentity:Z
    :cond_4
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10050
    .local v3, p:Landroid/view/ViewParent;
    if-eqz v3, :cond_1

    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_1

    .line 10051
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v7, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10054
    .local v4, r:Landroid/graphics/Rect;
    if-gez p1, :cond_5

    .line 10055
    iget v7, p0, Landroid/view/View;->mLeft:I

    add-int v2, v7, p1

    .line 10056
    .local v2, minLeft:I
    iget v1, p0, Landroid/view/View;->mRight:I

    .line 10061
    .local v1, maxRight:I
    :goto_3
    sub-int v7, v1, v2

    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v4, v5, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 10062
    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 10058
    .end local v1           #maxRight:I
    .end local v2           #minLeft:I
    :cond_5
    iget v2, p0, Landroid/view/View;->mLeft:I

    .line 10059
    .restart local v2       #minLeft:I
    iget v7, p0, Landroid/view/View;->mRight:I

    add-int v1, v7, p1

    .restart local v1       #maxRight:I
    goto :goto_3

    .line 10066
    .end local v1           #maxRight:I
    .end local v2           #minLeft:I
    .end local v3           #p:Landroid/view/ViewParent;
    .end local v4           #r:Landroid/graphics/Rect;
    :cond_6
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_1

    .line 10075
    :cond_7
    if-nez v0, :cond_8

    .line 10076
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10078
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    goto :goto_2
.end method

.method public offsetTopAndBottom(I)V
    .locals 10
    .parameter "offset"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 9990
    if-eqz p1, :cond_2

    .line 9991
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9992
    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v8}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    move v0, v7

    .line 9994
    .local v0, matrixIsIdentity:Z
    :goto_0
    if-eqz v0, :cond_6

    .line 9995
    iget-object v8, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v8, :cond_4

    .line 9996
    invoke-virtual {p0, v6, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10021
    :cond_1
    :goto_1
    iget v8, p0, Landroid/view/View;->mTop:I

    add-int/2addr v8, p1

    iput v8, p0, Landroid/view/View;->mTop:I

    .line 10022
    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v8, p1

    iput v8, p0, Landroid/view/View;->mBottom:I

    .line 10023
    iget-object v8, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v8, :cond_7

    .line 10024
    iget-object v7, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v7, p1}, Landroid/view/DisplayList;->offsetTopBottom(I)V

    .line 10025
    invoke-virtual {p0, v6, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10033
    .end local v0           #matrixIsIdentity:Z
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v6

    .line 9992
    goto :goto_0

    .line 9998
    .restart local v0       #matrixIsIdentity:Z
    :cond_4
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 9999
    .local v3, p:Landroid/view/ViewParent;
    if-eqz v3, :cond_1

    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_1

    .line 10000
    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v8, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10004
    .local v4, r:Landroid/graphics/Rect;
    if-gez p1, :cond_5

    .line 10005
    iget v8, p0, Landroid/view/View;->mTop:I

    add-int v2, v8, p1

    .line 10006
    .local v2, minTop:I
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 10007
    .local v1, maxBottom:I
    move v5, p1

    .line 10013
    .local v5, yLoc:I
    :goto_3
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v8, v9

    sub-int v9, v1, v2

    invoke-virtual {v4, v6, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 10014
    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 10009
    .end local v1           #maxBottom:I
    .end local v2           #minTop:I
    .end local v5           #yLoc:I
    :cond_5
    iget v2, p0, Landroid/view/View;->mTop:I

    .line 10010
    .restart local v2       #minTop:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int v1, v8, p1

    .line 10011
    .restart local v1       #maxBottom:I
    const/4 v5, 0x0

    .restart local v5       #yLoc:I
    goto :goto_3

    .line 10018
    .end local v1           #maxBottom:I
    .end local v2           #minTop:I
    .end local v3           #p:Landroid/view/ViewParent;
    .end local v4           #r:Landroid/graphics/Rect;
    .end local v5           #yLoc:I
    :cond_6
    invoke-virtual {p0, v6, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_1

    .line 10027
    :cond_7
    if-nez v0, :cond_8

    .line 10028
    invoke-virtual {p0, v6, v7}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10030
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    goto :goto_2
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 15800
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15801
    return-void
.end method

.method protected onAnimationStart()V
    .locals 2

    .prologue
    .line 15788
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15789
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 11667
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    .line 11668
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 11671
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x800

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 11672
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 11673
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x8000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11676
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 11680
    invoke-virtual {p0}, Landroid/view/View;->resolveLayoutDirection()V

    .line 11681
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 11682
    invoke-virtual {p0}, Landroid/view/View;->resolveTextDirection()V

    .line 11683
    invoke-virtual {p0}, Landroid/view/View;->resolveTextAlignment()V

    .line 11685
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 11686
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11687
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 11688
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 11691
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_3

    .line 11692
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->dequeueDisplayList(Landroid/view/DisplayList;)V

    .line 11694
    :cond_3
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 7928
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 16330
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 7715
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 8014
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 8
    .parameter "extraSpace"

    .prologue
    const/high16 v7, 0x40

    const/4 v6, 0x0

    .line 14330
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_1

    .line 14332
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 14385
    :cond_0
    :goto_0
    return-object v0

    .line 14337
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14339
    .local v2, privateFlags:I
    const/4 v4, 0x0

    .line 14340
    .local v4, viewStateIndex:I
    and-int/lit16 v5, v2, 0x4000

    if-eqz v5, :cond_2

    or-int/lit8 v4, v4, 0x10

    .line 14341
    :cond_2
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_3

    or-int/lit8 v4, v4, 0x8

    .line 14342
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_4

    or-int/lit8 v4, v4, 0x4

    .line 14343
    :cond_4
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_5

    or-int/lit8 v4, v4, 0x2

    .line 14344
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_6

    or-int/lit8 v4, v4, 0x1

    .line 14345
    :cond_6
    const/high16 v5, 0x4000

    and-int/2addr v5, v2

    if-eqz v5, :cond_7

    or-int/lit8 v4, v4, 0x20

    .line 14346
    :cond_7
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    if-eqz v5, :cond_8

    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 14351
    or-int/lit8 v4, v4, 0x40

    .line 14353
    :cond_8
    const/high16 v5, 0x1000

    and-int/2addr v5, v2

    if-eqz v5, :cond_9

    or-int/lit16 v4, v4, 0x80

    .line 14355
    :cond_9
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 14356
    .local v3, privateFlags2:I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_a

    or-int/lit16 v4, v4, 0x100

    .line 14357
    :cond_a
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_b

    or-int/lit16 v4, v4, 0x200

    .line 14359
    :cond_b
    sget-object v5, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aget-object v0, v5, v4

    .line 14373
    .local v0, drawableState:[I
    if-eqz p1, :cond_0

    .line 14378
    if-eqz v0, :cond_c

    .line 14379
    array-length v5, v0

    add-int/2addr v5, p1

    new-array v1, v5, [I

    .line 14380
    .local v1, fullState:[I
    array-length v5, v0

    invoke-static {v0, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    move-object v0, v1

    .line 14385
    goto :goto_0

    .line 14382
    .end local v1           #fullState:[I
    :cond_c
    new-array v1, p1, [I

    .restart local v1       #fullState:[I
    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "outAttrs"

    .prologue
    .line 7944
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11903
    iget v0, p0, Landroid/view/View;->mHoverPopupType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-eqz v0, :cond_0

    .line 11904
    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 11905
    iput-object v2, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 11909
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11911
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 11912
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 11913
    invoke-direct {p0}, Landroid/view/View;->removePerformClickCallback()V

    .line 11914
    invoke-direct {p0}, Landroid/view/View;->removeSendViewScrolledAccessibilityEventCallback()V

    .line 11916
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 11918
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->destroyLayer(Z)Z

    .line 11920
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2

    .line 11921
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_1

    .line 11922
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->enqueueDisplayList(Landroid/view/DisplayList;)V

    .line 11924
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->cancelInvalidate(Landroid/view/View;)V

    .line 11930
    :goto_0
    iput-object v2, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 11932
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 11933
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 11934
    invoke-virtual {p0}, Landroid/view/View;->resetAccessibilityStateChanged()V

    .line 11935
    return-void

    .line 11927
    :cond_2
    invoke-direct {p0}, Landroid/view/View;->clearDisplayList()V

    goto :goto_0
.end method

.method protected onDisplayHint(I)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 7614
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 16291
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 11640
    return-void
.end method

.method protected onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 11610
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11611
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11612
    return-void
.end method

.method protected final onDrawScrollBars(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 11450
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 11451
    .local v9, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v9, :cond_0

    .line 11453
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->state:I

    move/from16 v18, v0

    .line 11455
    .local v18, state:I
    if-nez v18, :cond_1

    .line 11566
    .end local v18           #state:I
    :cond_0
    :goto_0
    return-void

    .line 11459
    .restart local v18       #state:I
    :cond_1
    const/4 v14, 0x0

    .line 11461
    .local v14, invalidate:Z
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_9

    .line 11463
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    if-nez v2, :cond_2

    .line 11464
    const/4 v2, 0x1

    new-array v2, v2, [F

    iput-object v2, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    .line 11467
    :cond_2
    iget-object v0, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    move-object/from16 v19, v0

    .line 11470
    .local v19, values:[F
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v2

    sget-object v3, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v2, v3, :cond_8

    .line 11472
    const/4 v2, 0x0

    iput v2, v9, Landroid/view/View$ScrollabilityCache;->state:I

    .line 11480
    :goto_1
    const/4 v14, 0x1

    .line 11488
    .end local v19           #values:[F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v21, v0

    .line 11490
    .local v21, viewFlags:I
    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_a

    const/4 v10, 0x1

    .line 11492
    .local v10, drawHorizontalScrollBar:Z
    :goto_3
    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isVerticalScrollBarHidden()Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v11, 0x1

    .line 11496
    .local v11, drawVerticalScrollBar:Z
    :goto_4
    if-nez v11, :cond_3

    if-eqz v10, :cond_0

    .line 11497
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int v22, v2, v3

    .line 11498
    .local v22, width:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mTop:I

    sub-int v12, v2, v3

    .line 11500
    .local v12, height:I
    iget-object v4, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 11502
    .local v4, scrollBar:Landroid/widget/ScrollBarDrawable;
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mScrollX:I

    .line 11503
    .local v15, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v16, v0

    .line 11504
    .local v16, scrollY:I
    const/high16 v2, 0x200

    and-int v2, v2, v21

    if-nez v2, :cond_c

    const/4 v13, -0x1

    .line 11508
    .local v13, inside:I
    :goto_5
    if-eqz v10, :cond_5

    .line 11509
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v17

    .line 11510
    .local v17, size:I
    if-gtz v17, :cond_4

    .line 11511
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v17, v0

    .line 11514
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v23

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 11517
    if-eqz v11, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v20

    .line 11519
    .local v20, verticalScrollBarGap:I
    :goto_6
    add-int v2, v16, v12

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingBottom:I

    and-int/2addr v3, v13

    sub-int v6, v2, v3

    .line 11520
    .local v6, top:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingLeft:I

    and-int/2addr v2, v13

    add-int v5, v15, v2

    .line 11521
    .local v5, left:I
    add-int v2, v15, v22

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingRight:I

    and-int/2addr v3, v13

    sub-int/2addr v2, v3

    sub-int v7, v2, v20

    .line 11522
    .local v7, right:I
    add-int v8, v6, v17

    .local v8, bottom:I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 11523
    invoke-virtual/range {v2 .. v8}, Landroid/view/View;->onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 11524
    if-eqz v14, :cond_5

    .line 11525
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 11529
    .end local v5           #left:I
    .end local v6           #top:I
    .end local v7           #right:I
    .end local v8           #bottom:I
    .end local v17           #size:I
    .end local v20           #verticalScrollBarGap:I
    :cond_5
    if-eqz v11, :cond_0

    .line 11530
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v17

    .line 11531
    .restart local v17       #size:I
    if-gtz v17, :cond_6

    .line 11532
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v17, v0

    .line 11535
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 11538
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mVerticalScrollbarPosition:I

    packed-switch v2, :pswitch_data_0

    .line 11542
    add-int v2, v15, v22

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingRight:I

    and-int/2addr v3, v13

    sub-int v5, v2, v3

    .line 11548
    .restart local v5       #left:I
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingTop:I

    and-int/2addr v2, v13

    add-int v6, v16, v2

    .line 11549
    .restart local v6       #top:I
    add-int v7, v5, v17

    .line 11550
    .restart local v7       #right:I
    add-int v2, v16, v12

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingBottom:I

    and-int/2addr v3, v13

    sub-int v8, v2, v3

    .line 11553
    .restart local v8       #bottom:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/View;->mNeededToChangedScrollBarPosition:Z

    if-eqz v2, :cond_7

    .line 11554
    sget v2, Landroid/view/View;->mScrollBarPositionPadding:I

    sub-int/2addr v5, v2

    .line 11555
    sget v2, Landroid/view/View;->mScrollBarPositionPadding:I

    sub-int/2addr v7, v2

    .line 11556
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/ScrollBarDrawable;->setBounds(IIII)V

    :cond_7
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 11559
    invoke-virtual/range {v2 .. v8}, Landroid/view/View;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 11560
    if-eqz v14, :cond_0

    .line 11561
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    .line 11474
    .end local v4           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v5           #left:I
    .end local v6           #top:I
    .end local v7           #right:I
    .end local v8           #bottom:I
    .end local v10           #drawHorizontalScrollBar:Z
    .end local v11           #drawVerticalScrollBar:Z
    .end local v12           #height:I
    .end local v13           #inside:I
    .end local v15           #scrollX:I
    .end local v16           #scrollY:I
    .end local v17           #size:I
    .end local v21           #viewFlags:I
    .end local v22           #width:I
    .restart local v19       #values:[F
    :cond_8
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/4 v3, 0x0

    aget v3, v19, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 11484
    .end local v19           #values:[F
    :cond_9
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_2

    .line 11490
    .restart local v21       #viewFlags:I
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 11492
    .restart local v10       #drawHorizontalScrollBar:Z
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 11504
    .restart local v4       #scrollBar:Landroid/widget/ScrollBarDrawable;
    .restart local v11       #drawVerticalScrollBar:Z
    .restart local v12       #height:I
    .restart local v15       #scrollX:I
    .restart local v16       #scrollY:I
    .restart local v22       #width:I
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 11517
    .restart local v13       #inside:I
    .restart local v17       #size:I
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 11545
    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mUserPaddingLeft:I

    and-int/2addr v2, v13

    add-int v5, v15, v2

    .restart local v5       #left:I
    goto :goto_7

    .line 11538
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 11630
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11631
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11632
    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 7330
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7333
    const/4 v0, 0x0

    .line 7335
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 14146
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .prologue
    .line 7144
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 4536
    if-eqz p1, :cond_0

    .line 4537
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4538
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4542
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4543
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_6

    .line 4544
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4545
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 4547
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_2

    .line 4549
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 4551
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 4557
    :cond_3
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 4558
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4559
    .local v1, li:Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_4

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v2, :cond_4

    .line 4560
    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 4563
    :cond_4
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_5

    .line 4564
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v2, p0}, Landroid/view/KeyEvent$DispatcherState;->reset(Ljava/lang/Object;)V

    .line 4566
    :cond_5
    return-void

    .line 4552
    .end local v1           #li:Landroid/view/View$ListenerInfo;
    :cond_6
    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_3

    .line 4554
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onFocusLost()V
    .locals 0

    .prologue
    .line 5193
    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 5194
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 8070
    const/4 v0, 0x0

    return v0
.end method

.method public onHoverChanged(Z)V
    .locals 0
    .parameter "hovered"

    .prologue
    .line 8249
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 8114
    .local v0, action:I
    iget-boolean v3, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    if-nez v3, :cond_3

    .line 8115
    if-eq v0, v8, :cond_0

    if-ne v0, v7, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->hasHoveredChild()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8119
    const/16 v3, 0x80

    invoke-direct {p0, v3}, Landroid/view/View;->sendAccessibilityHoverEvent(I)V

    .line 8120
    iput-boolean v1, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    .line 8137
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-ne v3, v6, :cond_2

    iget v3, p0, Landroid/view/View;->mHoverPopupType:I

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/HoverPopupWindow;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8139
    if-ne v0, v8, :cond_5

    .line 8142
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 8143
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mHoverPopupType:I

    invoke-virtual {v3, v4}, Landroid/widget/HoverPopupWindow;->show(I)V

    .line 8152
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/view/View;->isHoverable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 8153
    packed-switch v0, :pswitch_data_0

    .line 8169
    :goto_2
    invoke-direct {p0, p1}, Landroid/view/View;->dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    .line 8173
    :goto_3
    return v1

    .line 8123
    :cond_3
    const/16 v3, 0xa

    if-eq v0, v3, :cond_4

    if-ne v0, v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8126
    :cond_4
    iput-boolean v2, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    .line 8127
    const/16 v3, 0x100

    invoke-direct {p0, v3}, Landroid/view/View;->sendAccessibilityHoverEvent(I)V

    .line 8130
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-nez v3, :cond_1

    .line 8131
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    .line 8144
    :cond_5
    if-eq v0, v7, :cond_2

    .line 8146
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 8147
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HoverPopupWindow;->dismiss()V

    goto :goto_1

    .line 8155
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setHovered(Z)V

    goto :goto_2

    .line 8158
    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setHovered(Z)V

    goto :goto_2

    :cond_6
    move v1, v2

    .line 8173
    goto :goto_3

    .line 8153
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 4791
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4792
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4796
    :goto_0
    return-void

    .line 4794
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 4804
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 4805
    const-class v1, Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 4806
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 4807
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 4808
    iget-object v1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4810
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 4811
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 4812
    .local v0, focusablesTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 4814
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 4815
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 4816
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4818
    .end local v0           #focusablesTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 4878
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4879
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4883
    :goto_0
    return-void

    .line 4881
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0
.end method

.method onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    .line 4936
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v3, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 4937
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4938
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 4940
    invoke-direct {p0, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 4941
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 4943
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v2

    .line 4944
    .local v2, parent:Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 4945
    check-cast v2, Landroid/view/View;

    .end local v2           #parent:Landroid/view/ViewParent;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 4948
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 4950
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 4951
    const-class v3, Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 4952
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4954
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 4955
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 4956
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 4957
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 4958
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 4959
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 4960
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 4965
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4966
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4968
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4969
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4970
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4976
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v3

    if-nez v3, :cond_8

    .line 4977
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityFocusable()I

    move-result v1

    .line 4978
    .local v1, mode:I
    if-eq v1, v4, :cond_2

    if-nez v1, :cond_3

    .line 4979
    :cond_2
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4985
    .end local v1           #mode:I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4986
    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4989
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4990
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4993
    :cond_5
    iget-object v3, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 4994
    const/16 v3, 0x100

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4995
    const/16 v3, 0x200

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 4996
    const/16 v3, 0xb

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 5000
    :cond_6
    return-void

    .line 4972
    :cond_7
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    .line 4982
    :cond_8
    const/16 v3, 0x80

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v4, 0x20

    const/4 v1, 0x1

    .line 7806
    const/4 v0, 0x0

    .line 7808
    .local v0, result:Z
    sparse-switch p1, :sswitch_data_0

    .line 7825
    .end local v0           #result:Z
    :cond_0
    :goto_0
    return v0

    .line 7811
    .restart local v0       #result:Z
    :sswitch_0
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 7812
    goto :goto_0

    .line 7815
    :cond_1
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_2

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 7818
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 7819
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/view/View;->checkForLongClick(I)V

    move v0, v1

    .line 7820
    goto :goto_0

    .line 7808
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 7837
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 7892
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 7788
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 7907
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 7854
    const/4 v0, 0x0

    .line 7856
    .local v0, result:Z
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v1, v0

    .line 7875
    :goto_1
    return v1

    .line 7859
    :sswitch_0
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 7860
    const/4 v1, 0x1

    goto :goto_1

    .line 7862
    :cond_1
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7863
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 7865
    iget-boolean v1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v1, :cond_0

    .line 7867
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 7869
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    goto :goto_0

    .line 7856
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 14038
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 15524
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 15526
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 16499
    return-void
.end method

.method public onPaddingChanged(I)V
    .locals 0
    .parameter "layoutDirection"

    .prologue
    .line 11841
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 4748
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4749
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4753
    :goto_0
    return-void

    .line 4751
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 4762
    return-void
.end method

.method public onResolvedLayoutDirectionChanged()V
    .locals 0

    .prologue
    .line 11774
    return-void
.end method

.method public onResolvedLayoutDirectionReset()V
    .locals 0

    .prologue
    .line 11881
    return-void
.end method

.method public onResolvedTextAlignmentChanged()V
    .locals 0

    .prologue
    .line 16923
    return-void
.end method

.method public onResolvedTextAlignmentReset()V
    .locals 0

    .prologue
    .line 16944
    return-void
.end method

.method public onResolvedTextDirectionChanged()V
    .locals 0

    .prologue
    .line 16708
    return-void
.end method

.method public onResolvedTextDirectionReset()V
    .locals 0

    .prologue
    .line 16743
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 12180
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12181
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 12182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong state class, expecting View State but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead. This usually happens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "when two views of different type have the same id in the same hierarchy. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "This view\'s id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Make sure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "other views do not use the same id."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12188
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 12122
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12123
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public onScreenStateChanged(I)V
    .locals 0
    .parameter "screenState"

    .prologue
    .line 11713
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v2, 0x1

    .line 8654
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8655
    invoke-direct {p0}, Landroid/view/View;->postSendViewScrolledAccessibilityEventCallback()V

    .line 8658
    :cond_0
    iput-boolean v2, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 8660
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8661
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 8662
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 8664
    :cond_1
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .parameter "alpha"

    .prologue
    .line 15815
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 8699
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .prologue
    .line 7128
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 7129
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7130
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/16 v12, 0x4000

    const/4 v11, 0x0

    const/high16 v10, 0x20

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 8258
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    .line 8260
    .local v3, viewFlags:I
    and-int/lit8 v8, v3, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_3

    .line 8261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v7, :cond_0

    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_0

    .line 8262
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 8266
    :cond_0
    and-int/lit16 v8, v3, 0x4000

    if-eq v8, v12, :cond_1

    and-int v8, v3, v10

    if-ne v8, v10, :cond_2

    :cond_1
    move v6, v7

    .line 8380
    :cond_2
    :goto_0
    return v6

    .line 8270
    :cond_3
    iget-object v8, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-eqz v8, :cond_4

    .line 8271
    iget-object v8, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v8, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v6, v7

    .line 8272
    goto :goto_0

    .line 8276
    :cond_4
    and-int/lit16 v8, v3, 0x4000

    if-eq v8, v12, :cond_5

    and-int v8, v3, v10

    if-ne v8, v10, :cond_2

    .line 8278
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_6
    :goto_1
    move v6, v7

    .line 8377
    goto :goto_0

    .line 8280
    :pswitch_0
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x200

    and-int/2addr v8, v9

    if-eqz v8, :cond_e

    move v2, v7

    .line 8281
    .local v2, prepressed:Z
    :goto_2
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-nez v6, :cond_7

    if-eqz v2, :cond_6

    .line 8284
    :cond_7
    const/4 v0, 0x0

    .line 8285
    .local v0, focusTaken:Z
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_8

    .line 8286
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 8289
    :cond_8
    if-eqz v2, :cond_9

    .line 8294
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 8297
    :cond_9
    iget-boolean v6, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v6, :cond_b

    .line 8299
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 8302
    if-nez v0, :cond_b

    .line 8306
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-nez v6, :cond_a

    .line 8307
    new-instance v6, Landroid/view/View$PerformClick;

    invoke-direct {v6, p0, v11}, Landroid/view/View$PerformClick;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    .line 8309
    :cond_a
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 8310
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 8315
    :cond_b
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-nez v6, :cond_c

    .line 8316
    new-instance v6, Landroid/view/View$UnsetPressedState;

    invoke-direct {v6, p0, v11}, Landroid/view/View$UnsetPressedState;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    .line 8319
    :cond_c
    if-eqz v2, :cond_f

    .line 8320
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8326
    :cond_d
    :goto_3
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto :goto_1

    .end local v0           #focusTaken:Z
    .end local v2           #prepressed:Z
    :cond_e
    move v2, v6

    .line 8280
    goto :goto_2

    .line 8322
    .restart local v0       #focusTaken:Z
    .restart local v2       #prepressed:Z
    :cond_f
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 8324
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {v6}, Landroid/view/View$UnsetPressedState;->run()V

    goto :goto_3

    .line 8331
    .end local v0           #focusTaken:Z
    .end local v2           #prepressed:Z
    :pswitch_1
    iput-boolean v6, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 8333
    invoke-virtual {p0, p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 8338
    invoke-virtual {p0}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v1

    .line 8342
    .local v1, isInScrollingContainer:Z
    if-eqz v1, :cond_11

    .line 8343
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v8, 0x200

    or-int/2addr v6, v8

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8344
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-nez v6, :cond_10

    .line 8345
    new-instance v6, Landroid/view/View$CheckForTap;

    invoke-direct {v6, p0, v11}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 8347
    :cond_10
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 8350
    :cond_11
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 8351
    invoke-direct {p0, v6}, Landroid/view/View;->checkForLongClick(I)V

    goto/16 :goto_1

    .line 8356
    .end local v1           #isInScrollingContainer:Z
    :pswitch_2
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 8357
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto/16 :goto_1

    .line 8361
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 8362
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 8365
    .local v5, y:I
    int-to-float v8, v4

    int-to-float v9, v5

    iget v10, p0, Landroid/view/View;->mTouchSlop:I

    int-to-float v10, v10

    invoke-direct {p0, v8, v9, v10}, Landroid/view/View;->pointInView(FFF)Z

    move-result v8

    if-nez v8, :cond_6

    .line 8367
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 8368
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_6

    .line 8370
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 8372
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_1

    .line 8278
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 8029
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 7575
    if-nez p2, :cond_0

    .line 7576
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2

    .line 7577
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 7584
    :cond_0
    :goto_0
    iget v0, p0, Landroid/view/View;->mHoverPopupType:I

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 7585
    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-eqz v0, :cond_1

    .line 7586
    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 7589
    :cond_1
    return-void

    .line 7579
    :cond_2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 7518
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 7519
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_4

    .line 7520
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7521
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 7523
    :cond_0
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7524
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 7526
    :cond_1
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 7527
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 7528
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 7531
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x1000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 7532
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7535
    :cond_2
    iget v1, p0, Landroid/view/View;->mHoverPopupType:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-eqz v1, :cond_3

    .line 7536
    iget-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v1}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 7542
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 7543
    return-void

    .line 7539
    :cond_4
    if-eqz v0, :cond_3

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 7540
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 15998
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 7639
    if-nez p1, :cond_0

    .line 7640
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 7642
    :cond_0
    return-void
.end method

.method public outputDirtyFlags(Ljava/lang/String;ZI)V
    .locals 8
    .parameter "indent"
    .parameter "clear"
    .parameter "clearMask"

    .prologue
    .line 12517
    const-string v4, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "             DIRTY("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x60

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") DRAWN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CACHE_VALID("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") INVALIDATED("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, -0x8000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12521
    if-eqz p2, :cond_0

    .line 12522
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, p3

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12524
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v3, p0

    .line 12525
    check-cast v3, Landroid/view/ViewGroup;

    .line 12526
    .local v3, parent:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 12527
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12528
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 12529
    .local v0, child:Landroid/view/View;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p2, p3}, Landroid/view/View;->outputDirtyFlags(Ljava/lang/String;ZI)V

    .line 12527
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12532
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 16
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scrollRangeX"
    .parameter "scrollRangeY"
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"
    .parameter "isTouchEvent"

    .prologue
    .line 16438
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mOverScrollMode:I

    .line 16439
    .local v10, overScrollMode:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_7

    const/4 v2, 0x1

    .line 16441
    .local v2, canScrollHorizontal:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_8

    const/4 v3, 0x1

    .line 16443
    .local v3, canScrollVertical:Z
    :goto_1
    if-eqz v10, :cond_0

    const/4 v14, 0x1

    if-ne v10, v14, :cond_9

    if-eqz v2, :cond_9

    :cond_0
    const/4 v9, 0x1

    .line 16445
    .local v9, overScrollHorizontal:Z
    :goto_2
    if-eqz v10, :cond_1

    const/4 v14, 0x1

    if-ne v10, v14, :cond_a

    if-eqz v3, :cond_a

    :cond_1
    const/4 v11, 0x1

    .line 16448
    .local v11, overScrollVertical:Z
    :goto_3
    add-int v7, p3, p1

    .line 16449
    .local v7, newScrollX:I
    if-nez v9, :cond_2

    .line 16450
    const/16 p7, 0x0

    .line 16453
    :cond_2
    add-int v8, p4, p2

    .line 16454
    .local v8, newScrollY:I
    if-nez v11, :cond_3

    .line 16455
    const/16 p8, 0x0

    .line 16459
    :cond_3
    move/from16 v0, p7

    neg-int v6, v0

    .line 16460
    .local v6, left:I
    add-int v12, p7, p5

    .line 16461
    .local v12, right:I
    move/from16 v0, p8

    neg-int v13, v0

    .line 16462
    .local v13, top:I
    add-int v1, p8, p6

    .line 16464
    .local v1, bottom:I
    const/4 v4, 0x0

    .line 16465
    .local v4, clampedX:Z
    if-le v7, v12, :cond_b

    .line 16466
    move v7, v12

    .line 16467
    const/4 v4, 0x1

    .line 16473
    :cond_4
    :goto_4
    const/4 v5, 0x0

    .line 16474
    .local v5, clampedY:Z
    if-le v8, v1, :cond_c

    .line 16475
    move v8, v1

    .line 16476
    const/4 v5, 0x1

    .line 16482
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v4, v5}, Landroid/view/View;->onOverScrolled(IIZZ)V

    .line 16484
    if-nez v4, :cond_6

    if-eqz v5, :cond_d

    :cond_6
    const/4 v14, 0x1

    :goto_6
    return v14

    .line 16439
    .end local v1           #bottom:I
    .end local v2           #canScrollHorizontal:Z
    .end local v3           #canScrollVertical:Z
    .end local v4           #clampedX:Z
    .end local v5           #clampedY:Z
    .end local v6           #left:I
    .end local v7           #newScrollX:I
    .end local v8           #newScrollY:I
    .end local v9           #overScrollHorizontal:Z
    .end local v11           #overScrollVertical:Z
    .end local v12           #right:I
    .end local v13           #top:I
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 16441
    .restart local v2       #canScrollHorizontal:Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    .line 16443
    .restart local v3       #canScrollVertical:Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    .line 16445
    .restart local v9       #overScrollHorizontal:Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_3

    .line 16468
    .restart local v1       #bottom:I
    .restart local v4       #clampedX:Z
    .restart local v6       #left:I
    .restart local v7       #newScrollX:I
    .restart local v8       #newScrollY:I
    .restart local v11       #overScrollVertical:Z
    .restart local v12       #right:I
    .restart local v13       #top:I
    :cond_b
    if-ge v7, v6, :cond_4

    .line 16469
    move v7, v6

    .line 16470
    const/4 v4, 0x1

    goto :goto_4

    .line 16477
    .restart local v5       #clampedY:Z
    :cond_c
    if-ge v8, v13, :cond_5

    .line 16478
    move v8, v13

    .line 16479
    const/4 v5, 0x1

    goto :goto_5

    .line 16484
    :cond_d
    const/4 v14, 0x0

    goto :goto_6
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "arguments"

    .prologue
    .line 6892
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 6893
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    .line 6895
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6905
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v2, v3

    .line 6971
    :cond_1
    :goto_0
    return v2

    .line 6907
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6908
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result v2

    goto :goto_0

    .line 6912
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6913
    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    move-result v2

    goto :goto_0

    .line 6917
    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6920
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 6921
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_0

    .line 6925
    :sswitch_3
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6926
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 6927
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 6931
    :sswitch_4
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6932
    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 6933
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v2

    goto :goto_0

    .line 6937
    :sswitch_5
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6938
    invoke-virtual {p0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 6939
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 6943
    :sswitch_6
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityFocusable()I

    move-result v1

    .line 6944
    .local v1, mode:I
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-nez v4, :cond_0

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_0

    .line 6947
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    move-result v2

    goto :goto_0

    .line 6951
    .end local v1           #mode:I
    :sswitch_7
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6952
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    goto :goto_0

    .line 6957
    :sswitch_8
    if-eqz p2, :cond_0

    .line 6958
    const-string v2, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 6960
    .local v0, granularity:I
    invoke-direct {p0, v0}, Landroid/view/View;->nextAtGranularity(I)Z

    move-result v2

    goto/16 :goto_0

    .line 6964
    .end local v0           #granularity:I
    :sswitch_9
    if-eqz p2, :cond_0

    .line 6965
    const-string v2, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 6967
    .restart local v0       #granularity:I
    invoke-direct {p0, v0}, Landroid/view/View;->previousAtGranularity(I)Z

    move-result v2

    goto/16 :goto_0

    .line 6905
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_4
        0x8 -> :sswitch_5
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method protected performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 4248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 4249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->showContextMenu(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4250
    const/4 v0, 0x1

    .line 4253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4187
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4189
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4190
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_0

    .line 4191
    invoke-virtual {p0, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 4192
    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4196
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 4
    .parameter "attachInfo"
    .parameter "visibility"

    .prologue
    const/high16 v2, 0x400

    const/4 v3, 0x1

    .line 7726
    and-int/lit8 v1, p2, 0xc

    if-nez v1, :cond_1

    .line 7727
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 7728
    iput-boolean v3, p1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 7730
    :cond_0
    iget v1, p1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v2, p0, Landroid/view/View;->mSystemUiVisibility:I

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 7731
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7732
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7733
    iput-boolean v3, p1, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 7736
    .end local v0           #li:Landroid/view/View$ListenerInfo;
    :cond_1
    return-void
.end method

.method public performHapticFeedback(I)Z
    .locals 1
    .parameter "feedbackConstant"

    .prologue
    .line 15889
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(II)Z
    .locals 3
    .parameter "feedbackConstant"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    .line 15902
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_1

    .line 15910
    :cond_0
    :goto_0
    return v0

    .line 15906
    :cond_1
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15910
    :cond_2
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-interface {v1, p1, v0}, Landroid/view/View$AttachInfo$Callbacks;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 3

    .prologue
    .line 4223
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4225
    const/4 v0, 0x0

    .line 4226
    .local v0, handled:Z
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4227
    .local v1, li:Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v2, :cond_0

    .line 4228
    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 4230
    :cond_0
    if-nez v0, :cond_1

    .line 4231
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    .line 4233
    :cond_1
    if-eqz v0, :cond_2

    .line 4234
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 4236
    :cond_2
    return v0
.end method

.method public playSoundEffect(I)V
    .locals 1
    .parameter "soundConstant"

    .prologue
    .line 15867
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15871
    :cond_0
    :goto_0
    return-void

    .line 15870
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    invoke-interface {v0, p1}, Landroid/view/View$AttachInfo$Callbacks;->playSoundEffect(I)V

    goto :goto_0
.end method

.method final pointInView(FF)Z
    .locals 3
    .parameter "localX"
    .parameter "localY"

    .prologue
    const/4 v2, 0x0

    .line 9914
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "action"

    .prologue
    .line 10645
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10646
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 10647
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 10651
    :goto_0
    return v1

    .line 10650
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V

    .line 10651
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 10677
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10678
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 10679
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .line 10683
    :goto_0
    return v1

    .line 10682
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 10683
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 2

    .prologue
    .line 10779
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 10780
    return-void
.end method

.method public postInvalidate(IIII)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 10799
    const-wide/16 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 10800
    return-void
.end method

.method public postInvalidateDelayed(J)V
    .locals 2
    .parameter "delayMilliseconds"

    .prologue
    .line 10818
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10819
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 10820
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInvalidateDelayed(Landroid/view/View;J)V

    .line 10822
    :cond_0
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .locals 3
    .parameter "delayMilliseconds"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 10847
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10848
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 10849
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->acquire()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v1

    .line 10850
    .local v1, info:Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 10851
    iput p3, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 10852
    iput p4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 10853
    iput p5, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 10854
    iput p6, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 10856
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V

    .line 10858
    .end local v1           #info:Landroid/view/View$AttachInfo$InvalidateInfo;
    :cond_0
    return-void
.end method

.method public postInvalidateOnAnimation()V
    .locals 2

    .prologue
    .line 10872
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10873
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 10874
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->dispatchInvalidateOnAnimation(Landroid/view/View;)V

    .line 10876
    :cond_0
    return-void
.end method

.method public postInvalidateOnAnimation(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 10896
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10897
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 10898
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->acquire()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v1

    .line 10899
    .local v1, info:Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 10900
    iput p1, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 10901
    iput p2, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 10902
    iput p3, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 10903
    iput p4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 10905
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    .line 10907
    .end local v1           #info:Landroid/view/View$AttachInfo$InvalidateInfo;
    :cond_0
    return-void
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 4
    .parameter "action"

    .prologue
    .line 10699
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10700
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 10701
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 10707
    :goto_0
    return-void

    .line 10705
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public postOnAnimationDelayed(Ljava/lang/Runnable;J)V
    .locals 7
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 10725
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10726
    .local v6, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v6, :cond_0

    .line 10727
    iget-object v0, v6, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 10733
    :goto_0
    return-void

    .line 10731
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method protected recomputePadding()V
    .locals 4

    .prologue
    .line 11130
    iget v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p0, Landroid/view/View;->mUserPaddingRight:I

    iget v3, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 11131
    return-void
.end method

.method public refreshDrawableState()V
    .locals 2

    .prologue
    .line 14285
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14286
    invoke-virtual {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 14288
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 14289
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 14290
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->childDrawableStateChanged(Landroid/view/View;)V

    .line 14292
    :cond_0
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 4
    .parameter "action"

    .prologue
    const/4 v3, 0x1

    .line 10754
    if-eqz p1, :cond_0

    .line 10755
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10756
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 10757
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10758
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 10765
    .end local v0           #attachInfo:Landroid/view/View$AttachInfo;
    :cond_0
    :goto_0
    return v3

    .line 10762
    .restart local v0       #attachInfo:Landroid/view/View$AttachInfo;
    :cond_1
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 4108
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4109
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4113
    :cond_0
    :goto_0
    return-void

    .line 4112
    :cond_1
    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 4074
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4075
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4079
    :cond_0
    :goto_0
    return-void

    .line 4078
    :cond_1
    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestAccessibilityFocus()Z
    .locals 5

    .prologue
    const/high16 v4, 0x400

    const/4 v2, 0x0

    .line 6386
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 6387
    .local v0, manager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6404
    :cond_0
    :goto_0
    return v2

    .line 6390
    :cond_1
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_0

    .line 6393
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 6394
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v2, v4

    iput v2, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6395
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 6396
    .local v1, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2

    .line 6397
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6399
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6400
    const v2, 0x8000

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 6401
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 6402
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public requestFitSystemWindows()V
    .locals 1

    .prologue
    .line 5584
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 5585
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->requestFitSystemWindows()V

    .line 5587
    :cond_0
    return-void
.end method

.method public final requestFocus()Z
    .locals 1

    .prologue
    .line 6511
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 6532
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 6565
    invoke-direct {p0, p1, p2}, Landroid/view/View;->requestFocusNoSearch(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public final requestFocusFromTouch()Z
    .locals 2

    .prologue
    .line 6602
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6603
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 6604
    .local v0, viewRoot:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 6605
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 6608
    .end local v0           #viewRoot:Landroid/view/ViewRootImpl;
    :cond_0
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    return v1
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 15409
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15410
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15412
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    .line 15413
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$LayoutParams;->onResolveLayoutDirection(I)V

    .line 15416
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15417
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 15419
    :cond_1
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "rectangle"

    .prologue
    .line 4386
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 5
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 4405
    move-object v0, p0

    .line 4406
    .local v0, child:Landroid/view/View;
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4407
    .local v1, parent:Landroid/view/ViewParent;
    const/4 v2, 0x0

    .line 4408
    .local v2, scrolled:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 4409
    invoke-interface {v1, v0, p1, p2}, Landroid/view/ViewParent;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 4414
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 4415
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 4417
    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_1

    .line 4424
    :cond_0
    return v2

    :cond_1
    move-object v0, v1

    .line 4421
    check-cast v0, Landroid/view/View;

    .line 4422
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method

.method public resetAccessibilityStateChanged()V
    .locals 2

    .prologue
    .line 6874
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6875
    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .locals 1

    .prologue
    .line 11865
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, -0x31

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 11866
    invoke-virtual {p0}, Landroid/view/View;->onResolvedLayoutDirectionReset()V

    .line 11868
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 11869
    return-void
.end method

.method public resetResolvedTextAlignment()V
    .locals 2

    .prologue
    .line 16933
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0xf0001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16934
    invoke-virtual {p0}, Landroid/view/View;->onResolvedTextAlignmentReset()V

    .line 16935
    return-void
.end method

.method public resetResolvedTextDirection()V
    .locals 1

    .prologue
    .line 16732
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, -0x1e01

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16733
    invoke-virtual {p0}, Landroid/view/View;->onResolvedTextDirectionReset()V

    .line 16734
    return-void
.end method

.method public resolveLayoutDirection()V
    .locals 3

    .prologue
    .line 11730
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v1, v1, -0x31

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 11732
    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11734
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 11761
    :cond_0
    :goto_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 11762
    invoke-virtual {p0}, Landroid/view/View;->onResolvedLayoutDirectionChanged()V

    .line 11764
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 11765
    return-void

    .line 11737
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11738
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    .line 11740
    .local v0, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResolvedLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 11741
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 11748
    .end local v0           #viewGroup:Landroid/view/ViewGroup;
    :pswitch_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 11751
    :pswitch_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/view/View;->isLayoutDirectionRtl(Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11752
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 11734
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public resolvePadding()V
    .locals 5

    .prologue
    .line 11785
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    .line 11786
    .local v0, resolvedLayoutDirection:I
    packed-switch v0, :pswitch_data_0

    .line 11807
    iget v1, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ltz v1, :cond_5

    .line 11808
    iget v1, p0, Landroid/view/View;->mUserPaddingStart:I

    iput v1, p0, Landroid/view/View;->mUserPaddingLeft:I

    .line 11812
    :cond_0
    :goto_0
    iget v1, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v1, :cond_6

    .line 11813
    iget v1, p0, Landroid/view/View;->mUserPaddingEnd:I

    iput v1, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 11819
    :cond_1
    :goto_1
    iget v1, p0, Landroid/view/View;->mUserPaddingBottom:I

    if-ltz v1, :cond_7

    iget v1, p0, Landroid/view/View;->mUserPaddingBottom:I

    :goto_2
    iput v1, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 11821
    invoke-virtual {p0}, Landroid/view/View;->isPaddingRelative()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 11822
    iget v1, p0, Landroid/view/View;->mUserPaddingStart:I

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    iget v3, p0, Landroid/view/View;->mUserPaddingEnd:I

    iget v4, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 11826
    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->onPaddingChanged(I)V

    .line 11827
    return-void

    .line 11791
    :pswitch_0
    iget v1, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ltz v1, :cond_3

    .line 11792
    iget v1, p0, Landroid/view/View;->mUserPaddingStart:I

    iput v1, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 11796
    :cond_2
    :goto_4
    iget v1, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v1, :cond_4

    .line 11797
    iget v1, p0, Landroid/view/View;->mUserPaddingEnd:I

    iput v1, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_1

    .line 11793
    :cond_3
    iget v1, p0, Landroid/view/View;->mUserPaddingRight:I

    if-gez v1, :cond_2

    .line 11794
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    iput v1, p0, Landroid/view/View;->mUserPaddingRight:I

    goto :goto_4

    .line 11798
    :cond_4
    iget v1, p0, Landroid/view/View;->mUserPaddingLeft:I

    if-gez v1, :cond_1

    .line 11799
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iput v1, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_1

    .line 11809
    :cond_5
    iget v1, p0, Landroid/view/View;->mUserPaddingLeft:I

    if-gez v1, :cond_0

    .line 11810
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iput v1, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_0

    .line 11814
    :cond_6
    iget v1, p0, Landroid/view/View;->mUserPaddingRight:I

    if-gez v1, :cond_1

    .line 11815
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    iput v1, p0, Landroid/view/View;->mUserPaddingRight:I

    goto :goto_1

    .line 11819
    :cond_7
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_2

    .line 11824
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->recomputePadding()V

    goto :goto_3

    .line 11786
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public resolveTextAlignment()V
    .locals 6

    .prologue
    const/high16 v5, 0x2

    .line 16843
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    const v4, -0xf0001

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16845
    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16847
    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result v1

    .line 16848
    .local v1, textAlignment:I
    packed-switch v1, :pswitch_data_0

    .line 16888
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16896
    .end local v1           #textAlignment:I
    :goto_0
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v4, 0x1

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16897
    invoke-virtual {p0}, Landroid/view/View;->onResolvedTextAlignmentChanged()V

    .line 16898
    return-void

    .line 16851
    .restart local v1       #textAlignment:I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 16852
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v2, Landroid/view/View;

    .line 16854
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getResolvedTextAlignment()I

    move-result v0

    .line 16855
    .local v0, parentResolvedTextAlignment:I
    packed-switch v0, :pswitch_data_1

    .line 16869
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16864
    :pswitch_1
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v4, v0, 0x11

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16874
    .end local v0           #parentResolvedTextAlignment:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16884
    :pswitch_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v4, v1, 0x11

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16892
    .end local v1           #textAlignment:I
    :cond_1
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16848
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 16855
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public resolveTextDirection()V
    .locals 5

    .prologue
    .line 16648
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v3, v3, -0x1e01

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16650
    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16652
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result v1

    .line 16653
    .local v1, textDirection:I
    packed-switch v1, :pswitch_data_0

    .line 16688
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16696
    .end local v1           #textDirection:I
    :goto_0
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16697
    invoke-virtual {p0}, Landroid/view/View;->onResolvedTextDirectionChanged()V

    .line 16698
    return-void

    .line 16655
    .restart local v1       #textDirection:I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->canResolveTextDirection()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16656
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v2, Landroid/view/ViewGroup;

    .line 16659
    .local v2, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResolvedTextDirection()I

    move-result v0

    .line 16660
    .local v0, parentResolvedDirection:I
    packed-switch v0, :pswitch_data_1

    .line 16671
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16666
    :pswitch_1
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v4, v0, 0xa

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16675
    .end local v0           #parentResolvedDirection:I
    .end local v2           #viewGroup:Landroid/view/ViewGroup;
    :cond_0
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16684
    :pswitch_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v4, v1, 0xa

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16692
    .end local v1           #textDirection:I
    :cond_1
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16653
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 16660
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12136
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 12137
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12070
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 12071
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 8
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 14182
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 14183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v6, p3, v0

    .line 14184
    .local v6, delay:J
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 14185
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    invoke-static {v6, v7}, Landroid/view/Choreographer;->subtractFrameDelay(J)J

    move-result-wide v4

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 14192
    .end local v6           #delay:J
    :cond_0
    :goto_0
    return-void

    .line 14189
    .restart local v6       #delay:J
    :cond_1
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p2, v6, v7}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 10152
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 10153
    return-void
.end method

.method public scrollTo(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 10131
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, p2, :cond_1

    .line 10132
    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 10133
    .local v0, oldX:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 10134
    .local v1, oldY:I
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 10135
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 10136
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 10137
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 10138
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10139
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 10142
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_1
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 4596
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4597
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 4601
    :goto_0
    return-void

    .line 4599
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    goto :goto_0
.end method

.method sendAccessibilityEventInternal(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 4627
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4628
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4630
    :cond_0
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 4648
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4649
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4653
    :goto_0
    return-void

    .line 4651
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 4661
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4671
    :goto_0
    return-void

    .line 4664
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4666
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x2a1bf

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 4667
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4670
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0
.end method

.method public setAccessibilityCursorPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 7054
    iput p1, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    .line 7055
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 5084
    iput-object p1, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 5085
    return-void
.end method

.method public setAccessibilityFocusable(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 6731
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityFocusable()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 6732
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x60000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6733
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x1d

    const/high16 v2, 0x6000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6735
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 6737
    :cond_0
    return-void
.end method

.method public setActivated(Z)V
    .locals 5
    .parameter "activated"

    .prologue
    const/high16 v0, 0x4000

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 14841
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    if-eq v2, p1, :cond_0

    .line 14842
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x40000001

    and-int/2addr v2, v4

    if-eqz p1, :cond_2

    :goto_1
    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14843
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 14844
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 14845
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetActivated(Z)V

    .line 14847
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 14841
    goto :goto_0

    :cond_2
    move v0, v1

    .line 14842
    goto :goto_1
.end method

.method public setAddonViewFlags(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 14134
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    .line 14135
    return-void
.end method

.method public setAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    const/4 v2, 0x1

    .line 9444
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9445
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 9446
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 9447
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9448
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9450
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 9451
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 9460
    :cond_0
    :goto_0
    return-void

    .line 9453
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9454
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9455
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 9456
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0, p1}, Landroid/view/DisplayList;->setAlpha(F)V

    goto :goto_0
.end method

.method setAlphaNoInvalidation(F)Z
    .locals 3
    .parameter "alpha"

    .prologue
    .line 9473
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9474
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, v1, Landroid/view/View$TransformationInfo;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9475
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v1, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 9476
    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    .line 9477
    .local v0, subclassHandlesAlpha:Z
    if-eqz v0, :cond_0

    .line 9478
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x4

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9479
    const/4 v1, 0x1

    .line 9487
    .end local v0           #subclassHandlesAlpha:Z
    :goto_0
    return v1

    .line 9481
    .restart local v0       #subclassHandlesAlpha:Z
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9482
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_1

    .line 9483
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setAlpha(F)V

    .line 9487
    .end local v0           #subclassHandlesAlpha:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 15765
    iput-object p1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 15767
    if-eqz p1, :cond_1

    .line 15771
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScreenOn:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 15773
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 15775
    :cond_0
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 15777
    :cond_1
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "background"

    .prologue
    .line 14472
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14473
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 14431
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 14432
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 14436
    :goto_0
    return-void

    .line 14434
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .parameter "background"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 14480
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v2, :cond_0

    .line 14567
    :goto_0
    return-void

    .line 14484
    :cond_0
    const/4 v1, 0x0

    .line 14486
    .local v1, requestLayout:Z
    iput v4, p0, Landroid/view/View;->mBackgroundResource:I

    .line 14492
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 14493
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 14494
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14497
    :cond_1
    if-eqz p1, :cond_a

    .line 14498
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 14499
    .local v0, padding:Landroid/graphics/Rect;
    if-nez v0, :cond_2

    .line 14500
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #padding:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14501
    .restart local v0       #padding:Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 14503
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14504
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getResolvedLayoutDirectionSelf()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 14510
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 14516
    :cond_3
    :goto_1
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    if-eq v2, v5, :cond_5

    .line 14518
    :cond_4
    const/4 v1, 0x1

    .line 14521
    :cond_5
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 14522
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14523
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 14525
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_2
    invoke-virtual {p1, v2, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 14526
    iput-object p1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 14528
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    .line 14529
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14530
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14531
    const/4 v1, 0x1

    .line 14559
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 14561
    if-eqz v1, :cond_8

    .line 14562
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 14565
    :cond_8
    iput-boolean v3, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 14566
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    goto/16 :goto_0

    .line 14506
    .restart local v0       #padding:Landroid/graphics/Rect;
    :pswitch_0
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_9
    move v2, v4

    .line 14525
    goto :goto_2

    .line 14535
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_a
    iput-object v5, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 14537
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_b

    .line 14543
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14544
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14556
    :cond_b
    const/4 v1, 0x1

    goto :goto_3

    .line 14504
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 14447
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/view/View;->mBackgroundResource:I

    if-ne p1, v1, :cond_0

    .line 14458
    :goto_0
    return-void

    .line 14451
    :cond_0
    const/4 v0, 0x0

    .line 14452
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .line 14453
    iget-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 14455
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14457
    iput p1, p0, Landroid/view/View;->mBackgroundResource:I

    goto :goto_0
.end method

.method public final setBottom(I)V
    .locals 9
    .parameter "bottom"

    .prologue
    const/high16 v8, 0x1000

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 9584
    iget v6, p0, Landroid/view/View;->mBottom:I

    if-eq p1, v6, :cond_5

    .line 9585
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9586
    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v6}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_0
    move v0, v5

    .line 9588
    .local v0, matrixIsIdentity:Z
    :goto_0
    if-eqz v0, :cond_8

    .line 9589
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_1

    .line 9591
    iget v6, p0, Landroid/view/View;->mBottom:I

    if-ge p1, v6, :cond_7

    .line 9592
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 9596
    .local v1, maxBottom:I
    :goto_1
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v7, v1, v7

    invoke-virtual {p0, v4, v4, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 9603
    .end local v1           #maxBottom:I
    :cond_1
    :goto_2
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v4, v6

    .line 9604
    .local v3, width:I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v2, v4, v6

    .line 9606
    .local v2, oldHeight:I
    iput p1, p0, Landroid/view/View;->mBottom:I

    .line 9607
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_2

    .line 9608
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    iget v6, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v4, v6}, Landroid/view/DisplayList;->setBottom(I)V

    .line 9611
    :cond_2
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v6

    invoke-virtual {p0, v3, v4, v3, v2}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 9613
    if-nez v0, :cond_4

    .line 9614
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x2000

    and-int/2addr v4, v6

    if-nez v4, :cond_3

    .line 9616
    iget-object v4, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v5, v4, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9618
    :cond_3
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9619
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 9621
    :cond_4
    iput-boolean v5, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 9622
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9623
    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_5

    .line 9625
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9628
    .end local v0           #matrixIsIdentity:Z
    .end local v2           #oldHeight:I
    .end local v3           #width:I
    :cond_5
    return-void

    :cond_6
    move v0, v4

    .line 9586
    goto :goto_0

    .line 9594
    .restart local v0       #matrixIsIdentity:Z
    :cond_7
    move v1, p1

    .restart local v1       #maxBottom:I
    goto :goto_1

    .line 9600
    .end local v1           #maxBottom:I
    :cond_8
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method public setCameraDistance(F)V
    .locals 8
    .parameter "distance"

    .prologue
    const/high16 v7, 0x1000

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 9036
    invoke-virtual {p0, v6, v4}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9038
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9039
    iget-object v2, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v2

    .line 9040
    .local v0, dpi:F
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9041
    .local v1, info:Landroid/view/View$TransformationInfo;
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    if-nez v2, :cond_0

    .line 9042
    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1502(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 9043
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1602(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 9046
    :cond_0
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v0

    invoke-virtual {v2, v5, v5, v3}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 9047
    iput-boolean v6, v1, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9049
    invoke-virtual {p0, v4, v4}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9050
    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v2, :cond_1

    .line 9051
    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/DisplayList;->setCameraDistance(F)V

    .line 9053
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_2

    .line 9055
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9057
    :cond_2
    return-void
.end method

.method public setClickable(Z)V
    .locals 2
    .parameter "clickable"

    .prologue
    const/16 v1, 0x4000

    .line 5960
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5961
    return-void

    .line 5960
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "contentDescription"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 5172
    iput-object p1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    .line 5173
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    move v0, v1

    .line 5174
    .local v0, nonEmptyDesc:Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 5175
    invoke-virtual {p0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 5177
    :cond_0
    return-void

    .line 5173
    .end local v0           #nonEmptyDesc:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContextMenuZOrderToTop(Z)V
    .locals 0
    .parameter "isTop"

    .prologue
    .line 18319
    iput-boolean p1, p0, Landroid/view/View;->mIsSetContextMenuZOrderToTop:Z

    .line 18320
    return-void
.end method

.method public setDisabledSystemUiVisibility(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 16042
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 16043
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    if-eq v0, p1, :cond_0

    .line 16044
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v0, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    .line 16045
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 16046
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 16050
    :cond_0
    return-void
.end method

.method setDisplayListProperties(Landroid/view/DisplayList;)V
    .locals 14
    .parameter "displayList"

    .prologue
    .line 13255
    if-eqz p1, :cond_5

    .line 13256
    iget v0, p0, Landroid/view/View;->mLeft:I

    iget v2, p0, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 13257
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setHasOverlappingRendering(Z)V

    .line 13258
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 13259
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setClipChildren(Z)V

    .line 13262
    :cond_0
    const/high16 v1, 0x3f80

    .line 13263
    .local v1, alpha:F
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_2

    .line 13265
    iget-object v11, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v11, Landroid/view/ViewGroup;

    .line 13266
    .local v11, parentVG:Landroid/view/ViewGroup;
    iget-object v0, v11, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v11, p0, v0}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v9

    .line 13268
    .local v9, hasTransform:Z
    if-eqz v9, :cond_2

    .line 13269
    iget-object v12, v11, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 13270
    .local v12, transform:Landroid/view/animation/Transformation;
    iget-object v0, v11, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v13

    .line 13271
    .local v13, transformType:I
    sget v0, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    if-eq v13, v0, :cond_2

    .line 13272
    sget v0, Landroid/view/animation/Transformation;->TYPE_ALPHA:I

    and-int/2addr v0, v13

    if-eqz v0, :cond_1

    .line 13273
    invoke-virtual {v12}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    .line 13275
    :cond_1
    sget v0, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    and-int/2addr v0, v13

    if-eqz v0, :cond_2

    .line 13276
    invoke-virtual {v12}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setStaticMatrix(Landroid/graphics/Matrix;)V

    .line 13281
    .end local v9           #hasTransform:Z
    .end local v11           #parentVG:Landroid/view/ViewGroup;
    .end local v12           #transform:Landroid/view/animation/Transformation;
    .end local v13           #transformType:I
    :cond_2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_7

    .line 13282
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    mul-float/2addr v1, v0

    .line 13283
    const/high16 v0, 0x3f80

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    .line 13284
    const/high16 v0, 0x437f

    mul-float/2addr v0, v1

    float-to-int v10, v0

    .line 13285
    .local v10, multipliedAlpha:I
    invoke-virtual {p0, v10}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13286
    const/high16 v1, 0x3f80

    .line 13289
    .end local v10           #multipliedAlpha:I
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v2, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v4, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v5, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v6, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v7, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v8, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/view/DisplayList;->setTransformationInfo(FFFFFFFF)V

    .line 13294
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v0

    if-nez v0, :cond_4

    .line 13295
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0, v2}, Landroid/view/View$TransformationInfo;->access$1502(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 13296
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0, v2}, Landroid/view/View$TransformationInfo;->access$1602(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 13298
    :cond_4
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Camera;->getLocationZ()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setCameraDistance(F)V

    .line 13299
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2000

    and-int/2addr v0, v2

    const/high16 v2, 0x2000

    if-ne v0, v2, :cond_5

    .line 13300
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setPivotX(F)V

    .line 13301
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setPivotY(F)V

    .line 13307
    .end local v1           #alpha:F
    :cond_5
    :goto_1
    return-void

    .line 13259
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 13303
    .restart local v1       #alpha:F
    :cond_7
    const/high16 v0, 0x3f80

    cmpg-float v0, v1, v0

    if-gez v0, :cond_5

    .line 13304
    invoke-virtual {p1, v1}, Landroid/view/DisplayList;->setAlpha(F)V

    goto :goto_1
.end method

.method public setDrawingCacheBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 12793
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    if-eq p1, v0, :cond_0

    .line 12794
    iput p1, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 12795
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12797
    :cond_0
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const v1, 0x8000

    const/4 v0, 0x0

    .line 12492
    iput-boolean v0, p0, Landroid/view/View;->mCachingFailed:Z

    .line 12493
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 12494
    return-void
.end method

.method public setDrawingCacheQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 5298
    const/high16 v0, 0x18

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 5299
    return-void
.end method

.method public setDuplicateParentStateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x40

    .line 12221
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 12222
    return-void

    .line 12221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v1, 0x20

    .line 5643
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 5656
    :goto_0
    return-void

    .line 5645
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5651
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 5655
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 5645
    goto :goto_1
.end method

.method public setFadingEdgeLength(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 3858
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 3859
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 3860
    return-void
.end method

.method public setFilterTouchesWhenObscured(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/16 v1, 0x400

    .line 6097
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6099
    return-void

    :cond_0
    move v0, v1

    .line 6097
    goto :goto_0
.end method

.method public setFitsSystemWindows(Z)V
    .locals 2
    .parameter "fitSystemWindows"

    .prologue
    const/4 v1, 0x2

    .line 5555
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5556
    return-void

    .line 5555
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setFlags(II)V
    .locals 8
    .parameter "flags"
    .parameter "mask"

    .prologue
    const/4 v5, 0x0

    const v7, -0x8001

    const/4 v6, 0x1

    .line 8484
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    .line 8485
    .local v1, old:I
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v3, v4

    and-int v4, p1, p2

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mViewFlags:I

    .line 8487
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int v0, v3, v1

    .line 8488
    .local v0, changed:I
    if-nez v0, :cond_1

    .line 8630
    :cond_0
    :goto_0
    return-void

    .line 8491
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8494
    .local v2, privateFlags:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_3

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_3

    .line 8496
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v6, :cond_13

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_13

    .line 8499
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 8508
    :cond_2
    :goto_1
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8509
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 8513
    :cond_3
    and-int/lit8 v3, p1, 0xc

    if-nez v3, :cond_4

    .line 8514
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_4

    .line 8520
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8521
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 8523
    invoke-virtual {p0, v6}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 8529
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    if-le v3, v4, :cond_4

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    if-le v3, v4, :cond_4

    .line 8530
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 8536
    :cond_4
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_8

    .line 8537
    invoke-virtual {p0, v5}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 8538
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8540
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    .line 8541
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 8542
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 8543
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 8544
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_6

    .line 8546
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->invalidate(Z)V

    .line 8550
    :cond_6
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8552
    :cond_7
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_8

    .line 8553
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 8558
    :cond_8
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_a

    .line 8559
    invoke-virtual {p0, v5}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 8564
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8566
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 8568
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eq v3, p0, :cond_9

    .line 8569
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 8570
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 8573
    :cond_9
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_a

    .line 8574
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 8578
    :cond_a
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_c

    .line 8579
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_14

    .line 8580
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/ViewGroup;

    and-int/lit8 v4, v0, 0xc

    and-int/lit8 v5, p1, 0xc

    invoke-virtual {v3, p0, v4, v5}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;II)V

    .line 8582
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->invalidate(Z)V

    .line 8586
    :cond_b
    :goto_2
    and-int/lit8 v3, p1, 0xc

    invoke-virtual {p0, p0, v3}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 8589
    :cond_c
    const/high16 v3, 0x2

    and-int/2addr v3, v0

    if-eqz v3, :cond_d

    .line 8590
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 8593
    :cond_d
    const v3, 0x8000

    and-int/2addr v3, v0

    if-eqz v3, :cond_e

    .line 8594
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 8595
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v7

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8596
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 8599
    :cond_e
    const/high16 v3, 0x18

    and-int/2addr v3, v0

    if-eqz v3, :cond_f

    .line 8600
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 8601
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v7

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8604
    :cond_f
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_10

    .line 8605
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_16

    .line 8606
    iget-object v3, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_15

    .line 8607
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8608
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8615
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8616
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 8619
    :cond_10
    const/high16 v3, 0x400

    and-int/2addr v3, v0

    if-eqz v3, :cond_11

    .line 8620
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_11

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_11

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v3, :cond_11

    .line 8621
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 8625
    :cond_11
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_12

    and-int/lit16 v3, v0, 0x4000

    if-nez v3, :cond_12

    const/high16 v3, 0x20

    and-int/2addr v3, v0

    if-nez v3, :cond_12

    and-int/lit8 v3, v0, 0x0

    if-eqz v3, :cond_0

    .line 8628
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    goto/16 :goto_0

    .line 8500
    :cond_13
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_2

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    .line 8506
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    goto/16 :goto_1

    .line 8583
    :cond_14
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_b

    .line 8584
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 8610
    :cond_15
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_3

    .line 8613
    :cond_16
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_3
.end method

.method public setFocusable(Z)V
    .locals 3
    .parameter "focusable"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5670
    if-nez p1, :cond_0

    .line 5671
    const/high16 v2, 0x4

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setFlags(II)V

    .line 5673
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5674
    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3
    .parameter "focusableInTouchMode"

    .prologue
    const/high16 v1, 0x4

    const/4 v2, 0x1

    .line 5692
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5693
    if-eqz p1, :cond_0

    .line 5694
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->setFlags(II)V

    .line 5696
    :cond_0
    return-void

    .line 5692
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 13
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 14054
    const/4 v1, 0x0

    .line 14061
    .local v1, changed:Z
    iget v8, p0, Landroid/view/View;->mLeft:I

    if-ne v8, p1, :cond_0

    iget v8, p0, Landroid/view/View;->mRight:I

    move/from16 v0, p3

    if-ne v8, v0, :cond_0

    iget v8, p0, Landroid/view/View;->mTop:I

    if-ne v8, p2, :cond_0

    iget v8, p0, Landroid/view/View;->mBottom:I

    move/from16 v0, p4

    if-eq v8, v0, :cond_8

    .line 14062
    :cond_0
    const/4 v1, 0x1

    .line 14065
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v2, v8, 0x20

    .line 14067
    .local v2, drawn:I
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int v6, v8, v9

    .line 14068
    .local v6, oldWidth:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int v5, v8, v9

    .line 14069
    .local v5, oldHeight:I
    sub-int v4, p3, p1

    .line 14070
    .local v4, newWidth:I
    sub-int v3, p4, p2

    .line 14071
    .local v3, newHeight:I
    if-ne v4, v6, :cond_1

    if-eq v3, v5, :cond_7

    :cond_1
    const/4 v7, 0x1

    .line 14074
    .local v7, sizeChanged:Z
    :goto_0
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    .line 14076
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 14077
    iput p2, p0, Landroid/view/View;->mTop:I

    .line 14078
    move/from16 v0, p3

    iput v0, p0, Landroid/view/View;->mRight:I

    .line 14079
    move/from16 v0, p4

    iput v0, p0, Landroid/view/View;->mBottom:I

    .line 14080
    iget-object v8, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v8, :cond_2

    .line 14081
    iget-object v8, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    iget v9, p0, Landroid/view/View;->mLeft:I

    iget v10, p0, Landroid/view/View;->mTop:I

    iget v11, p0, Landroid/view/View;->mRight:I

    iget v12, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 14084
    :cond_2
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14087
    if-eqz v7, :cond_4

    .line 14088
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x2000

    and-int/2addr v8, v9

    if-nez v8, :cond_3

    .line 14090
    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v8, :cond_3

    .line 14091
    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 14094
    :cond_3
    invoke-virtual {p0, v4, v3, v6, v5}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 14097
    :cond_4
    iget v8, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-nez v8, :cond_5

    .line 14103
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14104
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    .line 14107
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 14111
    :cond_5
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v8, v2

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14113
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 14123
    .end local v2           #drawn:I
    .end local v3           #newHeight:I
    .end local v4           #newWidth:I
    .end local v5           #oldHeight:I
    .end local v6           #oldWidth:I
    .end local v7           #sizeChanged:Z
    :cond_6
    :goto_1
    iget v8, p0, Landroid/view/View;->mPrivateFlags3:I

    const v9, -0x10001

    and-int/2addr v8, v9

    iput v8, p0, Landroid/view/View;->mPrivateFlags3:I

    .line 14125
    return v1

    .line 14071
    .restart local v2       #drawn:I
    .restart local v3       #newHeight:I
    .restart local v4       #newWidth:I
    .restart local v5       #oldHeight:I
    .restart local v6       #oldWidth:I
    :cond_7
    const/4 v7, 0x0

    goto :goto_0

    .line 14116
    .end local v2           #drawn:I
    .end local v3           #newHeight:I
    .end local v4           #newWidth:I
    .end local v5           #oldHeight:I
    .end local v6           #oldWidth:I
    :cond_8
    iget v8, p0, Landroid/view/View;->mPrivateFlags3:I

    const/high16 v9, 0x1

    and-int/2addr v8, v9

    const/high16 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 14117
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int v6, v8, v9

    .line 14118
    .restart local v6       #oldWidth:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int v5, v8, v9

    .line 14119
    .restart local v5       #oldHeight:I
    sub-int v4, p3, p1

    .line 14120
    .restart local v4       #newWidth:I
    sub-int v3, p4, p2

    .line 14121
    .restart local v3       #newHeight:I
    invoke-virtual {p0, v4, v3, v6, v5}, Landroid/view/View;->onSizeChanged(IIII)V

    goto :goto_1
.end method

.method public setHapticFeedbackEnabled(Z)V
    .locals 2
    .parameter "hapticFeedbackEnabled"

    .prologue
    const/high16 v1, 0x1000

    .line 5740
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5741
    return-void

    .line 5740
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHasTransientState(Z)V
    .locals 4
    .parameter "hasTransientState"

    .prologue
    const/4 v2, 0x0

    .line 5865
    if-eqz p1, :cond_4

    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    add-int/lit8 v1, v1, 0x1

    :goto_0
    iput v1, p0, Landroid/view/View;->mTransientStateCount:I

    .line 5867
    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    if-gez v1, :cond_0

    .line 5868
    iput v2, p0, Landroid/view/View;->mTransientStateCount:I

    .line 5869
    const-string v1, "View"

    const-string v3, "hasTransientState decremented below 0: unmatched pair of setHasTransientState calls"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5872
    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    if-nez v1, :cond_3

    .line 5875
    :cond_2
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v3, v1, -0x101

    if-eqz p1, :cond_5

    const/16 v1, 0x100

    :goto_1
    or-int/2addr v1, v3

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 5877
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_3

    .line 5879
    :try_start_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, p1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5886
    :cond_3
    :goto_2
    return-void

    .line 5865
    :cond_4
    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    move v1, v2

    .line 5875
    goto :goto_1

    .line 5880
    :catch_0
    move-exception v0

    .line 5881
    .local v0, e:Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public setHorizontalFadingEdgeEnabled(Z)V
    .locals 1
    .parameter "horizontalFadingEdgeEnabled"

    .prologue
    .line 10962
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 10963
    if-eqz p1, :cond_0

    .line 10964
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 10967
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 10969
    :cond_1
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1
    .parameter "horizontalScrollBarEnabled"

    .prologue
    .line 11089
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 11090
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11091
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 11092
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 11094
    :cond_0
    return-void
.end method

.method public setHoverPopupType(I)V
    .locals 1
    .parameter "type"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 18273
    invoke-virtual {p0}, Landroid/view/View;->isHoveringUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18274
    iput p1, p0, Landroid/view/View;->mHoverPopupType:I

    .line 18277
    :cond_0
    return-void
.end method

.method public setHovered(Z)V
    .locals 2
    .parameter "hovered"

    .prologue
    const/high16 v1, 0x1000

    .line 8221
    if-eqz p1, :cond_1

    .line 8222
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 8223
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8224
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 8225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->onHoverChanged(Z)V

    .line 8234
    :cond_0
    :goto_0
    return-void

    .line 8228
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 8229
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8230
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 8231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onHoverChanged(Z)V

    goto :goto_0
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 15143
    iput p1, p0, Landroid/view/View;->mID:I

    .line 15144
    return-void
.end method

.method public setImportantForAccessibility(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 6664
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 6665
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x300001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6666
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x14

    const/high16 v2, 0x30

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6668
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 6670
    :cond_0
    return-void
.end method

.method public setIsRootNamespace(Z)V
    .locals 1
    .parameter "isRoot"

    .prologue
    .line 15153
    if-eqz p1, :cond_0

    .line 15154
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15158
    :goto_0
    return-void

    .line 15156
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setKeepScreenOn(Z)V
    .locals 2
    .parameter "keepScreenOn"

    .prologue
    const/high16 v1, 0x400

    .line 5326
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5327
    return-void

    .line 5326
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 4
    .parameter "layerType"
    .parameter "paint"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 12277
    if-ltz p1, :cond_0

    const/4 v3, 0x2

    if-le p1, v3, :cond_1

    .line 12278
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Layer type can only be one of: LAYER_TYPE_NONE, LAYER_TYPE_SOFTWARE or LAYER_TYPE_HARDWARE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12282
    :cond_1
    iget v3, p0, Landroid/view/View;->mLayerType:I

    if-ne p1, v3, :cond_4

    .line 12283
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    if-eq p2, v1, :cond_3

    .line 12284
    if-nez p2, :cond_2

    new-instance p2, Landroid/graphics/Paint;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    :cond_2
    iput-object p2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    .line 12285
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 12286
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 12310
    :cond_3
    :goto_0
    return-void

    .line 12292
    .restart local p2
    :cond_4
    iget v3, p0, Landroid/view/View;->mLayerType:I

    packed-switch v3, :pswitch_data_0

    .line 12303
    :goto_1
    iput p1, p0, Landroid/view/View;->mLayerType:I

    .line 12304
    iget v3, p0, Landroid/view/View;->mLayerType:I

    if-nez v3, :cond_5

    move v0, v2

    .line 12305
    .local v0, layerDisabled:Z
    :cond_5
    if-eqz v0, :cond_7

    move-object p2, v1

    .end local p2
    :cond_6
    :goto_2
    iput-object p2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    .line 12306
    if-eqz v0, :cond_8

    :goto_3
    iput-object v1, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    .line 12308
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 12309
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    goto :goto_0

    .line 12294
    .end local v0           #layerDisabled:Z
    .restart local p2
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/view/View;->destroyLayer(Z)Z

    .line 12297
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_1

    .line 12305
    .restart local v0       #layerDisabled:Z
    :cond_7
    if-nez p2, :cond_6

    new-instance p2, Landroid/graphics/Paint;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    goto :goto_2

    .line 12306
    :cond_8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_3

    .line 12292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLayoutDirection(I)V
    .locals 2
    .parameter "layoutDirection"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 5791
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 5793
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, -0xd

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 5794
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 5796
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x2

    and-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 5798
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5800
    :cond_0
    return-void
.end method

.method public setLayoutInsets(Landroid/graphics/Insets;)V
    .locals 0
    .parameter "layoutInsets"

    .prologue
    .line 14783
    iput-object p1, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    .line 14784
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 10113
    if-nez p1, :cond_0

    .line 10114
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Layout parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10116
    :cond_0
    iput-object p1, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 10117
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 10118
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10120
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10121
    return-void
.end method

.method public final setLeft(I)V
    .locals 11
    .parameter "left"

    .prologue
    const/high16 v10, 0x1000

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 9648
    iget v7, p0, Landroid/view/View;->mLeft:I

    if-eq p1, v7, :cond_5

    .line 9649
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9650
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_0
    move v1, v6

    .line 9652
    .local v1, matrixIsIdentity:Z
    :goto_0
    if-eqz v1, :cond_8

    .line 9653
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_1

    .line 9656
    iget v7, p0, Landroid/view/View;->mLeft:I

    if-ge p1, v7, :cond_7

    .line 9657
    move v2, p1

    .line 9658
    .local v2, minLeft:I
    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v4, p1, v7

    .line 9663
    .local v4, xLoc:I
    :goto_1
    iget v7, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v7, v2

    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v4, v5, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 9670
    .end local v2           #minLeft:I
    .end local v4           #xLoc:I
    :cond_1
    :goto_2
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v5, v7

    .line 9671
    .local v3, oldWidth:I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v0, v5, v7

    .line 9673
    .local v0, height:I
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 9674
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v5, :cond_2

    .line 9675
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v5, p1}, Landroid/view/DisplayList;->setLeft(I)V

    .line 9678
    :cond_2
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v7

    invoke-virtual {p0, v5, v0, v3, v0}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 9680
    if-nez v1, :cond_4

    .line 9681
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x2000

    and-int/2addr v5, v7

    if-nez v5, :cond_3

    .line 9683
    iget-object v5, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v6, v5, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9685
    :cond_3
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9686
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 9688
    :cond_4
    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 9689
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9690
    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v5, v10

    if-ne v5, v10, :cond_5

    .line 9692
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9695
    .end local v0           #height:I
    .end local v1           #matrixIsIdentity:Z
    .end local v3           #oldWidth:I
    :cond_5
    return-void

    :cond_6
    move v1, v5

    .line 9650
    goto :goto_0

    .line 9660
    .restart local v1       #matrixIsIdentity:Z
    :cond_7
    iget v2, p0, Landroid/view/View;->mLeft:I

    .line 9661
    .restart local v2       #minLeft:I
    const/4 v4, 0x0

    .restart local v4       #xLoc:I
    goto :goto_1

    .line 9667
    .end local v2           #minLeft:I
    .end local v4           #xLoc:I
    :cond_8
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method public setListViewItemTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "listViewItemTag"

    .prologue
    .line 15223
    iput-object p1, p0, Landroid/view/View;->mListViewItemTag:Ljava/lang/Object;

    .line 15224
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 2
    .parameter "longClickable"

    .prologue
    const/high16 v1, 0x20

    .line 5986
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5987
    return-void

    .line 5986
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final setMeasuredDimension(II)V
    .locals 1
    .parameter "measuredWidth"
    .parameter "measuredHeight"

    .prologue
    .line 15541
    iput p1, p0, Landroid/view/View;->mMeasuredWidth:I

    .line 15542
    iput p2, p0, Landroid/view/View;->mMeasuredHeight:I

    .line 15544
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15545
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .parameter "minHeight"

    .prologue
    .line 15684
    iput p1, p0, Landroid/view/View;->mMinHeight:I

    .line 15685
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15686
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0
    .parameter "minWidth"

    .prologue
    .line 15713
    iput p1, p0, Landroid/view/View;->mMinWidth:I

    .line 15714
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15716
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0
    .parameter "nextFocusDownId"

    .prologue
    .line 5410
    iput p1, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 5411
    return-void
.end method

.method public setNextFocusForwardId(I)V
    .locals 0
    .parameter "nextFocusForwardId"

    .prologue
    .line 5431
    iput p1, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 5432
    return-void
.end method

.method public setNextFocusLeftId(I)V
    .locals 0
    .parameter "nextFocusLeftId"

    .prologue
    .line 5347
    iput p1, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 5348
    return-void
.end method

.method public setNextFocusRightId(I)V
    .locals 0
    .parameter "nextFocusRightId"

    .prologue
    .line 5368
    iput p1, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 5369
    return-void
.end method

.method public setNextFocusUpId(I)V
    .locals 0
    .parameter "nextFocusUpId"

    .prologue
    .line 5389
    iput p1, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 5390
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4134
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 4137
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 4138
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4172
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 4175
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 4176
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4335
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$602(Landroid/view/View$ListenerInfo;Landroid/view/View$OnDragListener;)Landroid/view/View$OnDragListener;

    .line 4336
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4049
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 4050
    return-void
.end method

.method public setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4316
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$402(Landroid/view/View$ListenerInfo;Landroid/view/View$OnGenericMotionListener;)Landroid/view/View$OnGenericMotionListener;

    .line 4317
    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4324
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$502(Landroid/view/View$ListenerInfo;Landroid/view/View$OnHoverListener;)Landroid/view/View$OnHoverListener;

    .line 4325
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4300
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$202(Landroid/view/View$ListenerInfo;Landroid/view/View$OnKeyListener;)Landroid/view/View$OnKeyListener;

    .line 4301
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4158
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 4161
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 4162
    return-void
.end method

.method public setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 16013
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$702(Landroid/view/View$ListenerInfo;Landroid/view/View$OnSystemUiVisibilityChangeListener;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 16014
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_0

    .line 16015
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 16017
    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4308
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$302(Landroid/view/View$ListenerInfo;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;

    .line 4309
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter "overScrollMode"

    .prologue
    .line 16525
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 16528
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid overscroll mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16530
    :cond_0
    iput p1, p0, Landroid/view/View;->mOverScrollMode:I

    .line 16531
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v0, -0x1

    .line 14600
    iput v0, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 14601
    iput v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 14602
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View;->mUserPaddingRelative:Z

    .line 14604
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 14605
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    .line 14676
    iput p1, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 14677
    iput p3, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 14678
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mUserPaddingRelative:Z

    .line 14680
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 14686
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 14688
    :goto_0
    return-void

    .line 14682
    :pswitch_0
    invoke-direct {p0, p3, p2, p1, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    goto :goto_0

    .line 14680
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setPivotX(F)V
    .locals 6
    .parameter "pivotX"

    .prologue
    const/high16 v5, 0x1000

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 9327
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9328
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9329
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9330
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9331
    invoke-virtual {p0, v3, v4}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9332
    iput p1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    .line 9333
    iput-boolean v3, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9334
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9335
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9336
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setPivotX(F)V

    .line 9338
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1

    .line 9340
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9343
    :cond_1
    return-void
.end method

.method public setPivotY(F)V
    .locals 6
    .parameter "pivotY"

    .prologue
    const/high16 v5, 0x1000

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 9377
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9378
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9379
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9380
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9381
    invoke-virtual {p0, v3, v4}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9382
    iput p1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    .line 9383
    iput-boolean v3, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9384
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9385
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9386
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setPivotY(F)V

    .line 9388
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1

    .line 9390
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9393
    :cond_1
    return-void
.end method

.method public setPressed(Z)V
    .locals 4
    .parameter "pressed"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5999
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_1

    move v2, v0

    :goto_0
    if-eq p1, v2, :cond_2

    .line 6001
    .local v0, needsRefresh:Z
    :goto_1
    if-eqz p1, :cond_3

    .line 6002
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6007
    :goto_2
    if-eqz v0, :cond_0

    .line 6008
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6010
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetPressed(Z)V

    .line 6011
    return-void

    .end local v0           #needsRefresh:Z
    :cond_1
    move v2, v1

    .line 5999
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 6004
    .restart local v0       #needsRefresh:Z
    :cond_3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_2
.end method

.method public final setRight(I)V
    .locals 10
    .parameter "right"

    .prologue
    const/high16 v9, 0x1000

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 9715
    iget v6, p0, Landroid/view/View;->mRight:I

    if-eq p1, v6, :cond_5

    .line 9716
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9717
    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v6}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_0
    move v1, v5

    .line 9719
    .local v1, matrixIsIdentity:Z
    :goto_0
    if-eqz v1, :cond_8

    .line 9720
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_1

    .line 9722
    iget v6, p0, Landroid/view/View;->mRight:I

    if-ge p1, v6, :cond_7

    .line 9723
    iget v2, p0, Landroid/view/View;->mRight:I

    .line 9727
    .local v2, maxRight:I
    :goto_1
    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v6, v2, v6

    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v4, v4, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 9734
    .end local v2           #maxRight:I
    :cond_1
    :goto_2
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v4, v6

    .line 9735
    .local v3, oldWidth:I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v0, v4, v6

    .line 9737
    .local v0, height:I
    iput p1, p0, Landroid/view/View;->mRight:I

    .line 9738
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_2

    .line 9739
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    iget v6, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v4, v6}, Landroid/view/DisplayList;->setRight(I)V

    .line 9742
    :cond_2
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v6

    invoke-virtual {p0, v4, v0, v3, v0}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 9744
    if-nez v1, :cond_4

    .line 9745
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x2000

    and-int/2addr v4, v6

    if-nez v4, :cond_3

    .line 9747
    iget-object v4, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v5, v4, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9749
    :cond_3
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9750
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 9752
    :cond_4
    iput-boolean v5, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 9753
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9754
    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v4, v9

    if-ne v4, v9, :cond_5

    .line 9756
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9759
    .end local v0           #height:I
    .end local v1           #matrixIsIdentity:Z
    .end local v3           #oldWidth:I
    :cond_5
    return-void

    :cond_6
    move v1, v4

    .line 9717
    goto :goto_0

    .line 9725
    .restart local v1       #matrixIsIdentity:Z
    :cond_7
    move v2, p1

    .restart local v2       #maxRight:I
    goto :goto_1

    .line 9731
    .end local v2           #maxRight:I
    :cond_8
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method public setRotation(F)V
    .locals 5
    .parameter "rotation"

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9088
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9089
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9090
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9092
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9093
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    .line 9094
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9095
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9096
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9097
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setRotation(F)V

    .line 9099
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9101
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9104
    :cond_1
    return-void
.end method

.method public setRotationX(F)V
    .locals 5
    .parameter "rotationX"

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9191
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9192
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9193
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9194
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9195
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    .line 9196
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9197
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9198
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9199
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setRotationX(F)V

    .line 9201
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9203
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9206
    :cond_1
    return-void
.end method

.method public setRotationY(F)V
    .locals 5
    .parameter "rotationY"

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9140
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9141
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9142
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9143
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9144
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    .line 9145
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9146
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9147
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9148
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setRotationY(F)V

    .line 9150
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9152
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9155
    :cond_1
    return-void
.end method

.method public setSaveEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x1

    .line 6068
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6069
    return-void

    :cond_0
    move v0, v1

    .line 6068
    goto :goto_0
.end method

.method public setSaveFromParentEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x2000

    .line 6129
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6130
    return-void

    :cond_0
    move v0, v1

    .line 6129
    goto :goto_0
.end method

.method public setScaleX(F)V
    .locals 5
    .parameter "scaleX"

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9234
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9235
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9236
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9237
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9238
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    .line 9239
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9240
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9241
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9242
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setScaleX(F)V

    .line 9244
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9246
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9249
    :cond_1
    return-void
.end method

.method public setScaleY(F)V
    .locals 5
    .parameter "scaleY"

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9277
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9278
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9279
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9280
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9281
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    .line 9282
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9283
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9284
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9285
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setScaleY(F)V

    .line 9287
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9289
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9292
    :cond_1
    return-void
.end method

.method public setScrollBarDefaultDelayBeforeFade(I)V
    .locals 1
    .parameter "scrollBarDefaultDelayBeforeFade"

    .prologue
    .line 11184
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 11185
    return-void
.end method

.method public setScrollBarFadeDuration(I)V
    .locals 1
    .parameter "scrollBarFadeDuration"

    .prologue
    .line 11208
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 11209
    return-void
.end method

.method public setScrollBarSize(I)V
    .locals 1
    .parameter "scrollBarSize"

    .prologue
    .line 11232
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 11233
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 3
    .parameter "style"

    .prologue
    const/high16 v2, 0x300

    .line 11255
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-eq p1, v0, :cond_0

    .line 11256
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const v1, -0x3000001

    and-int/2addr v0, v1

    and-int v1, p1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11257
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 11258
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 11260
    :cond_0
    return-void
.end method

.method public setScrollContainer(Z)V
    .locals 2
    .parameter "isScrollContainer"

    .prologue
    const/high16 v1, 0x10

    .line 5254
    if-eqz p1, :cond_1

    .line 5255
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 5256
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5257
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5259
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5266
    :goto_0
    return-void

    .line 5261
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 5262
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5264
    :cond_2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x180001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setScrollX(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 8728
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 8729
    return-void
.end method

.method public setScrollY(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 8738
    iget v0, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    .line 8739
    return-void
.end method

.method public setScrollbarFadingEnabled(Z)V
    .locals 2
    .parameter "fadeScrollbars"

    .prologue
    .line 11141
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 11142
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 11143
    .local v0, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    iput-boolean p1, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 11144
    if-eqz p1, :cond_0

    .line 11145
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 11149
    :goto_0
    return-void

    .line 11147
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 3
    .parameter "selected"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 14795
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    if-eq v1, p1, :cond_2

    .line 14796
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14797
    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 14798
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 14799
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 14800
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetSelected(Z)V

    .line 14801
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14802
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 14805
    :cond_2
    return-void

    :cond_3
    move v1, v0

    .line 14795
    goto :goto_0
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 2
    .parameter "soundEffectsEnabled"

    .prologue
    const/high16 v1, 0x800

    .line 5711
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5712
    return-void

    .line 5711
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSystemUiVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 15960
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    if-eq p1, v0, :cond_0

    .line 15961
    iput p1, p0, Landroid/view/View;->mSystemUiVisibility:I

    .line 15962
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_0

    .line 15963
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 15966
    :cond_0
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 15265
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 15266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be an application-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15270
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/View;->setKeyedTag(ILjava/lang/Object;)V

    .line 15271
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 15209
    iput-object p1, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    .line 15210
    return-void
.end method

.method public setTagInternal(ILjava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 15280
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 15281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be a framework-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15285
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/View;->setKeyedTag(ILjava/lang/Object;)V

    .line 15286
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 3
    .parameter "textAlignment"

    .prologue
    .line 16790
    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 16792
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0xe001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16793
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 16795
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0xd

    const v2, 0xe000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16797
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 16798
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 16800
    :cond_0
    return-void
.end method

.method public setTextDirection(I)V
    .locals 2
    .parameter "textDirection"

    .prologue
    .line 16604
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 16606
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, -0x1c1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16607
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 16609
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x6

    and-int/lit16 v1, v1, 0x1c0

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16611
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 16612
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 16614
    :cond_0
    return-void
.end method

.method public final setTop(I)V
    .locals 10
    .parameter "top"

    .prologue
    const/high16 v9, 0x1000

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 9508
    iget v7, p0, Landroid/view/View;->mTop:I

    if-eq p1, v7, :cond_5

    .line 9509
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9510
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_0
    move v0, v6

    .line 9512
    .local v0, matrixIsIdentity:Z
    :goto_0
    if-eqz v0, :cond_8

    .line 9513
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_1

    .line 9516
    iget v7, p0, Landroid/view/View;->mTop:I

    if-ge p1, v7, :cond_7

    .line 9517
    move v1, p1

    .line 9518
    .local v1, minTop:I
    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v4, p1, v7

    .line 9523
    .local v4, yLoc:I
    :goto_1
    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v8, v1

    invoke-virtual {p0, v5, v4, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 9530
    .end local v1           #minTop:I
    .end local v4           #yLoc:I
    :cond_1
    :goto_2
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v5, v7

    .line 9531
    .local v3, width:I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v2, v5, v7

    .line 9533
    .local v2, oldHeight:I
    iput p1, p0, Landroid/view/View;->mTop:I

    .line 9534
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v5, :cond_2

    .line 9535
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    iget v7, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v5, v7}, Landroid/view/DisplayList;->setTop(I)V

    .line 9538
    :cond_2
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v7

    invoke-virtual {p0, v3, v5, v3, v2}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 9540
    if-nez v0, :cond_4

    .line 9541
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x2000

    and-int/2addr v5, v7

    if-nez v5, :cond_3

    .line 9543
    iget-object v5, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v6, v5, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9545
    :cond_3
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9546
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 9548
    :cond_4
    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 9549
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9550
    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v5, v9

    if-ne v5, v9, :cond_5

    .line 9552
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9555
    .end local v0           #matrixIsIdentity:Z
    .end local v2           #oldHeight:I
    .end local v3           #width:I
    :cond_5
    return-void

    :cond_6
    move v0, v5

    .line 9510
    goto :goto_0

    .line 9520
    .restart local v0       #matrixIsIdentity:Z
    :cond_7
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 9521
    .restart local v1       #minTop:I
    const/4 v4, 0x0

    .restart local v4       #yLoc:I
    goto :goto_1

    .line 9527
    .end local v1           #minTop:I
    .end local v4           #yLoc:I
    :cond_8
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method public setTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 8467
    iput-object p1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 8468
    return-void
.end method

.method public setTranslationX(F)V
    .locals 5
    .parameter "translationX"

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9831
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9832
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9833
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9835
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9836
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    .line 9837
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9838
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9839
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9840
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setTranslationX(F)V

    .line 9842
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9844
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9847
    :cond_1
    return-void
.end method

.method public setTranslationY(F)V
    .locals 5
    .parameter "translationY"

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9873
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9874
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9875
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9876
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9877
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    .line 9878
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9879
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9880
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9881
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setTranslationY(F)V

    .line 9883
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9885
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9888
    :cond_1
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .locals 1
    .parameter "verticalFadingEdgeEnabled"

    .prologue
    .line 10999
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 11000
    if-eqz p1, :cond_0

    .line 11001
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 11004
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11006
    :cond_1
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .parameter "verticalScrollBarEnabled"

    .prologue
    .line 11119
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 11120
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11121
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 11122
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 11124
    :cond_0
    return-void
.end method

.method public setVerticalScrollBarPadding(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 11576
    iput-boolean p1, p0, Landroid/view/View;->mNeededToChangedScrollBarPosition:Z

    .line 11577
    return-void
.end method

.method public setVerticalScrollBarPaddingPosition(I)V
    .locals 0
    .parameter "paddingValue"

    .prologue
    .line 11581
    sput p1, Landroid/view/View;->mScrollBarPositionPadding:I

    .line 11582
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 4020
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    .line 4021
    iput p1, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    .line 4022
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 4023
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 4025
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 5620
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 5621
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 5622
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 5621
    goto :goto_0
.end method

.method public setWillNotCacheDrawing(Z)V
    .locals 2
    .parameter "willNotCacheDrawing"

    .prologue
    const/high16 v1, 0x2

    .line 5922
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5923
    return-void

    .line 5922
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWillNotDraw(Z)V
    .locals 2
    .parameter "willNotDraw"

    .prologue
    const/16 v1, 0x80

    .line 5899
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5900
    return-void

    .line 5899
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setX(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 9781
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 9782
    return-void
.end method

.method public setY(F)V
    .locals 1
    .parameter "y"

    .prologue
    .line 9804
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 9805
    return-void
.end method

.method public showContextMenu()Z
    .locals 1

    .prologue
    .line 4262
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FFI)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    .line 4276
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "callback"

    .prologue
    .line 4288
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4289
    .local v0, parent:Landroid/view/ViewParent;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 4290
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 15734
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 15735
    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 15736
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 15737
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 15738
    return-void
.end method

.method public final startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 23
    .parameter "data"
    .parameter "shadowBuilder"
    .parameter "myLocalState"
    .parameter "flags"

    .prologue
    .line 16211
    const/16 v19, 0x0

    .line 16213
    .local v19, okay:Z
    new-instance v21, Landroid/graphics/Point;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Point;-><init>()V

    .line 16214
    .local v21, shadowSize:Landroid/graphics/Point;
    new-instance v22, Landroid/graphics/Point;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Point;-><init>()V

    .line 16215
    .local v22, shadowTouchPoint:Landroid/graphics/Point;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 16217
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_0

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-ltz v3, :cond_0

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_0

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-gez v3, :cond_1

    .line 16219
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Drag shadow dimensions must not be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 16226
    :cond_1
    new-instance v8, Landroid/view/Surface;

    invoke-direct {v8}, Landroid/view/Surface;-><init>()V

    .line 16228
    .local v8, surface:Landroid/view/Surface;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v21

    iget v7, v0, Landroid/graphics/Point;->y:I

    move/from16 v5, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v11

    .line 16232
    .local v11, token:Landroid/os/IBinder;
    if-eqz v11, :cond_2

    .line 16233
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 16235
    .local v17, canvas:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    :try_start_1
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 16236
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16238
    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 16241
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v20

    .line 16244
    .local v20, root:Landroid/view/ViewRootImpl;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    .line 16247
    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 16249
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v3, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v13, v3

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v14, v3

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v15, v3

    move-object/from16 v16, p1

    invoke-interface/range {v9 .. v16}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    move-result v19

    .line 16256
    invoke-virtual {v8}, Landroid/view/Surface;->release()V

    .line 16263
    .end local v11           #token:Landroid/os/IBinder;
    .end local v17           #canvas:Landroid/graphics/Canvas;
    .end local v20           #root:Landroid/view/ViewRootImpl;
    :cond_2
    :goto_0
    return v19

    .line 16238
    .restart local v11       #token:Landroid/os/IBinder;
    .restart local v17       #canvas:Landroid/graphics/Canvas;
    :catchall_0
    move-exception v3

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 16258
    .end local v11           #token:Landroid/os/IBinder;
    .end local v17           #canvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v18

    .line 16259
    .local v18, e:Ljava/lang/Exception;
    const-string v3, "View"

    const-string v4, "Unable to initiate drag"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16260
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    goto :goto_0
.end method

.method transformRect(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "rect"

    .prologue
    const/high16 v5, 0x3f00

    .line 10515
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10516
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 10517
    .local v0, boundingRect:Landroid/graphics/RectF;
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 10518
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 10519
    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 10524
    .end local v0           #boundingRect:Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method unFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4478
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 4479
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4481
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4482
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4484
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4485
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 4488
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "who"

    .prologue
    .line 14221
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 14222
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 14225
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "who"
    .parameter "what"

    .prologue
    .line 14201
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 14202
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 14203
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p1}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 14209
    :cond_0
    :goto_0
    return-void

    .line 14206
    :cond_1
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method updateLocalSystemUiVisibility(II)Z
    .locals 3
    .parameter "localValue"
    .parameter "localChanges"

    .prologue
    .line 16032
    iget v1, p0, Landroid/view/View;->mSystemUiVisibility:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int v0, v1, v2

    .line 16033
    .local v0, val:I
    iget v1, p0, Landroid/view/View;->mSystemUiVisibility:I

    if-eq v0, v1, :cond_0

    .line 16034
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 16035
    const/4 v1, 0x1

    .line 16037
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 14257
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willNotCacheDrawing()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x2

    .line 5932
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willNotDraw()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 5909
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
