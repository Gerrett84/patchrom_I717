.class public Landroid/webkit/HtmlComposerView;
.super Landroid/webkit/WebView;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HtmlComposerView$CursorDirection;,
        Landroid/webkit/HtmlComposerView$SelectionOffset;,
        Landroid/webkit/HtmlComposerView$ResultTransport;,
        Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;,
        Landroid/webkit/HtmlComposerView$HCWHandler;,
        Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;,
        Landroid/webkit/HtmlComposerView$ActionPopupWindow;,
        Landroid/webkit/HtmlComposerView$StylusEventListener;,
        Landroid/webkit/HtmlComposerView$MenuHandler;,
        Landroid/webkit/HtmlComposerView$InsertedImageHitListener;,
        Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;,
        Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;,
        Landroid/webkit/HtmlComposerView$InsertionPosition;
    }
.end annotation


# static fields
.field public static final DELAYED_UPDATE_IMAGE_OUTLINE:I = 0x503

.field private static final EXTRA_REGION_FOR_RESIZING_HANDLER:I = 0x1e

.field public static final HIT_INSERTED_IMAGE:I = 0x502

.field public static final ID_COPY:I = 0x1020021

.field public static final ID_COPY_ALL:I = 0x1020409

.field public static final ID_CUT:I = 0x1020020

.field public static final ID_CUT_ALL:I = 0x1020408

.field public static final ID_PASTE:I = 0x1020022

.field public static final ID_PASTE_CLIPBOARD:I = 0x102040a

.field public static final ID_REDO:I = 0x65

.field public static final ID_SELECT_ALL:I = 0x102001f

.field public static final ID_START_SELECTION:I = 0x1020028

.field public static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field public static final ID_UNDO:I = 0x2711

.field public static final INVOKE_TALKBACK:I = 0x500

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerView"

.field private static final MINIMUM_SIZE_FOR_RESIZING:I = 0xa

.field public static final RICHLY_EDITING_STATE_ALIGNCENTER:I = 0x1000

.field public static final RICHLY_EDITING_STATE_ALIGNCENTER_MIXED:I = 0x2000

.field public static final RICHLY_EDITING_STATE_ALIGNLEFT:I = 0x400

.field public static final RICHLY_EDITING_STATE_ALIGNLEFT_MIXED:I = 0x800

.field public static final RICHLY_EDITING_STATE_ALIGNRIGHT:I = 0x4000

.field public static final RICHLY_EDITING_STATE_ALIGNRIGHT_MIXED:I = 0x8000

.field public static final RICHLY_EDITING_STATE_BOLD:I = 0x1

.field public static final RICHLY_EDITING_STATE_BOLD_MIXED:I = 0x2

.field public static final RICHLY_EDITING_STATE_ITALIC:I = 0x4

.field public static final RICHLY_EDITING_STATE_ITALIC_MIXED:I = 0x8

.field public static final RICHLY_EDITING_STATE_NONE:I = 0x0

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST:I = 0x40

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST_MIXED:I = 0x80

.field public static final RICHLY_EDITING_STATE_UNDERLINE:I = 0x10

.field public static final RICHLY_EDITING_STATE_UNDERLINE_MIXED:I = 0x20

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST:I = 0x100

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST_MIXED:I = 0x200

.field private static final SCH_ALPHA:I = 0xff

.field private static final SCH_ALPHA_DIFF:I = 0x33

.field private static final TOUCHX_LEFT:I = 0x50

.field private static final TOUCHX_RIGHT:I = 0x50

.field private static final TOUCHY_BOTTOM:I = 0x3c

.field private static final TOUCHY_UP:I = 0x0

.field public static final TOUCH_DRAG_DELTA:I = 0xa

.field public static final UPDATE_RICHTEXT_TOOLBAR:I = 0x501

.field protected static mGVR:Landroid/graphics/Rect;

.field public static operSel:I


# instance fields
.field public DEBUG:Z

.field public final EMPTY_STRING:Ljava/lang/String;

.field private bLastSoftKeyPadStateShowing:Z

.field protected bSCHvisibleonFocus:Z

.field protected bShowSingleCursorHandler:Z

.field bitmap:Landroid/graphics/Bitmap;

.field private bm_height:I

.field private bm_width:I

.field bottomMiddleCropHandler:Landroid/graphics/Rect;

.field private bottomMiddleHandleEnabled:Z

.field public clpBrdStrg:Ljava/lang/String;

.field private defaultLoadString:Ljava/lang/String;

.field private extraHeightRegionToCover:I

.field extraRegiontoCover:I

.field private firstOutlineLeft:F

.field private firstOutlineTop:F

.field handlesPath:Landroid/graphics/Path;

.field protected iAlpha:I

.field private ignoreMaxLength:Z

.field public imageCanbeMoved:Z

.field public imageCanbeResized:Z

.field private imageSelectedX:I

.field private imageSelectedY:I

.field imagetRect:Landroid/graphics/RectF;

.field imeOptions:I

.field imgHeight:F

.field imgWidth:F

.field protected isContextMenuVisible:Z

.field public isImageSelected:Z

.field private isInComposingState:Z

.field private isPhone:Z

.field public isSCHCompletelyDrawn:Z

.field private isSelectionset:Z

.field public isTouchedImage:Z

.field public isTouchedSCH:Z

.field private isViewInFocus:Z

.field private lb_height:I

.field private lb_width:I

.field leftBottomCropHandler:Landroid/graphics/Rect;

.field private leftBottomHandleEnabled:Z

.field leftMiddleCropHandler:Landroid/graphics/Rect;

.field private leftMiddleHandleEnabled:Z

.field leftTopCropHandler:Landroid/graphics/Rect;

.field private leftTopHandleEnabled:Z

.field private lm_height:I

.field private lm_width:I

.field private lt_height:I

.field private lt_width:I

.field protected mActionMoveSCH:Z

.field private mAdd:I

.field private mAltKeyIsPressed:Z

.field private mContentX:I

.field private mContentY:I

.field private mConversionFactorX:I

.field private mConversionFactorY:I

.field private mCurSelEnd:I

.field private mCurSelStart:I

.field private mDensity:F

.field private mDoubleTapped:Z

.field private mEmojiIsActive:Z

.field private mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

.field public mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

.field public mImageRect:Landroid/graphics/Rect;

.field public mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

.field public mIsInReverse:Z

.field protected mIsSCHExpired:Z

.field private mIsSCHMenu:Z

.field private mIsTouchedCursor:Z

.field private mKeyIsLongPressed:Z

.field mLocalEndX:I

.field mLocalEndY:I

.field mLocalStartX:I

.field mLocalStartY:I

.field private mLongPressForActionPopup:Z

.field public mMaxHtmlLength:I

.field protected mMoveIsStarted:Z

.field mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

.field private mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

.field private mPrivateOptions:Ljava/lang/String;

.field private mQwertyInput:Landroid/text/method/QwertyKeyListener;

.field private mRHIResource:I

.field private mRectNotScrolled:Z

.field private mRemove:I

.field private mResizingHoverImage:Landroid/widget/ImageView;

.field public mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

.field private mSCHMoveFlag:Z

.field protected mSCHTimer:Ljava/util/Timer;

.field protected mSCHTimerTask:Ljava/util/TimerTask;

.field public mSCH_pos_origin_cursor:Landroid/graphics/Rect;

.field public mSCH_pos_origin_handle_y:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShiftKeyIsPressed:Z

.field mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

.field private mSymKeyIsPressed:Z

.field mTargetView:Landroid/webkit/HtmlComposerView;

.field private mToastForClipboard:Landroid/widget/Toast;

.field private mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mWebViewClassic:Landroid/webkit/WebViewClassic;

.field private mXCenter:I

.field private mYCenter:I

.field private mZoomFactor:F

.field private misResizeControlsInitialised:Z

.field public myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

.field private originalHeight:I

.field private originalWidth:I

.field outLinePath:Landroid/graphics/Path;

.field p:Landroid/graphics/Path;

.field private prevOutlineHeight:F

.field private prevOutlineLeft:F

.field private prevOutlineTop:F

.field private prevOutlineWidth:F

.field private prevSpanComposerText:Ljava/lang/String;

.field prevX:I

.field prevY:I

.field private prevlen:I

.field rb_height:I

.field rb_width:I

.field region_rect_BM:Landroid/graphics/Region;

.field region_rect_LB:Landroid/graphics/Region;

.field region_rect_LM:Landroid/graphics/Region;

.field region_rect_LT:Landroid/graphics/Region;

.field region_rect_OutLine:Landroid/graphics/Region;

.field region_rect_RB:Landroid/graphics/Region;

.field region_rect_RM:Landroid/graphics/Region;

.field region_rect_RT:Landroid/graphics/Region;

.field region_rect_TM:Landroid/graphics/Region;

.field public resizingHandlerInActionMove:Z

.field rightBottomCropHandler:Landroid/graphics/Rect;

.field rightBottomHandleEnabled:Z

.field rightMiddleCropHandler:Landroid/graphics/Rect;

.field private rightMiddleHandleEnabled:Z

.field rightTopCropHandler:Landroid/graphics/Rect;

.field private rightTopHandleEnabled:Z

.field private rm_height:I

.field private rm_width:I

.field private rt_height:I

.field private rt_width:I

.field private spanComposerText:Landroid/text/SpannableStringBuilder;

.field public strTexttoSpeech:Ljava/lang/String;

.field public textSelected:Ljava/lang/String;

.field textWatcher:Landroid/text/TextWatcher;

.field tm_height:I

.field tm_width:I

.field topMiddleCropHandler:Landroid/graphics/Rect;

.field private topMiddleHandleEnabled:Z

.field widthOfHandle:I

.field public x_lastPosition:I

.field public y_lastPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 296
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/webkit/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    .line 478
    const/4 v0, 0x0

    sput v0, Landroid/webkit/HtmlComposerView;->operSel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 334
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 114
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 115
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    .line 116
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 117
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 118
    const v0, 0x420000ff

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 119
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 120
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 121
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 122
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    .line 123
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    .line 124
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 125
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 127
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 128
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 129
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 130
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 131
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 132
    iput v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 133
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 134
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 135
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 136
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 137
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 138
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 139
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 143
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 144
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 146
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    .line 148
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 149
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 150
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 151
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    .line 153
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 154
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 156
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    .line 159
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 160
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 161
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 162
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    .line 165
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mDoubleTapped:Z

    .line 166
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    .line 201
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 203
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 204
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 207
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 212
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 217
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 222
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 224
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 225
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 227
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 229
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 230
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 231
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 232
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 233
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 235
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 239
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 243
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 247
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 248
    iput v2, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 249
    iput v2, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 251
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 252
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 253
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 254
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 256
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 257
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 258
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 259
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 266
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 267
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 268
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 269
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 271
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 298
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 492
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 493
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 494
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 2050
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    .line 2051
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mLocalStartX:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mLocalStartY:I

    .line 2052
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mLocalEndX:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mLocalEndY:I

    .line 5362
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 5363
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    .line 5364
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 5365
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 5786
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    .line 5788
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    .line 5789
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_handle_y:I

    .line 5790
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSCHCompletelyDrawn:Z

    .line 5791
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    .line 5792
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    .line 5793
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mMoveIsStarted:Z

    .line 5794
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bSCHvisibleonFocus:Z

    .line 5801
    iput v2, p0, Landroid/webkit/HtmlComposerView;->x_lastPosition:I

    .line 5802
    iput v2, p0, Landroid/webkit/HtmlComposerView;->y_lastPosition:I

    .line 5803
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 5804
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mRectNotScrolled:Z

    .line 5806
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isTouchedImage:Z

    .line 5807
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 5808
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsInReverse:Z

    .line 5809
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 5810
    new-instance v0, Ljava/util/Timer;

    const-string v1, "SCHTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    .line 5811
    new-instance v0, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    .line 5813
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 5815
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    .line 335
    iput-object p0, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 336
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 340
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 115
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    .line 116
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 117
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 118
    const v0, 0x420000ff

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 119
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 120
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 121
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 122
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    .line 123
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    .line 124
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 125
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 127
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 128
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 129
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 130
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 131
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 132
    iput v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 133
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 134
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 135
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 136
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 137
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 138
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 139
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 143
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 144
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 146
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    .line 148
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 149
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 150
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 151
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    .line 153
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 154
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 156
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    .line 159
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 160
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 161
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 162
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    .line 165
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mDoubleTapped:Z

    .line 166
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    .line 201
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 203
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 204
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 207
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 212
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 217
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 222
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 224
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 225
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 227
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 229
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 230
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 231
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 232
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 233
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 235
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 239
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 243
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 247
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 248
    iput v2, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 249
    iput v2, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 251
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 252
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 253
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 254
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 256
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 257
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 258
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 259
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 266
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 267
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 268
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 269
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 271
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 298
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 492
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 493
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 494
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 2050
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    .line 2051
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mLocalStartX:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mLocalStartY:I

    .line 2052
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mLocalEndX:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mLocalEndY:I

    .line 5362
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 5363
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    .line 5364
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 5365
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 5786
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    .line 5788
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    .line 5789
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_handle_y:I

    .line 5790
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSCHCompletelyDrawn:Z

    .line 5791
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    .line 5792
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    .line 5793
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mMoveIsStarted:Z

    .line 5794
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bSCHvisibleonFocus:Z

    .line 5801
    iput v2, p0, Landroid/webkit/HtmlComposerView;->x_lastPosition:I

    .line 5802
    iput v2, p0, Landroid/webkit/HtmlComposerView;->y_lastPosition:I

    .line 5803
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 5804
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mRectNotScrolled:Z

    .line 5806
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isTouchedImage:Z

    .line 5807
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 5808
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsInReverse:Z

    .line 5809
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 5810
    new-instance v0, Ljava/util/Timer;

    const-string v1, "SCHTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    .line 5811
    new-instance v0, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    .line 5813
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 5815
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    .line 341
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 345
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 115
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    .line 116
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 117
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 118
    const v0, 0x420000ff

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 119
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 120
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 121
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 122
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    .line 123
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    .line 124
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 125
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 127
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 128
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 129
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 130
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 131
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 132
    iput v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 133
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 134
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 135
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 136
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 137
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 138
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 139
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 143
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 144
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 146
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    .line 148
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 149
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 150
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 151
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    .line 153
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 154
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 156
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    .line 159
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 160
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 161
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 162
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    .line 165
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mDoubleTapped:Z

    .line 166
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    .line 201
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 203
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 204
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 207
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 212
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 217
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 222
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 224
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 225
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 227
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 229
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 230
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 231
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 232
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 233
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 235
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 239
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 243
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 247
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 248
    iput v2, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 249
    iput v2, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 251
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 252
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 253
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 254
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 256
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 257
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 258
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 259
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 266
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 267
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 268
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 269
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 271
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 298
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 492
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 493
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 494
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 2050
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    .line 2051
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mLocalStartX:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mLocalStartY:I

    .line 2052
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mLocalEndX:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mLocalEndY:I

    .line 5362
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 5363
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    .line 5364
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 5365
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 5786
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    .line 5788
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    .line 5789
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_handle_y:I

    .line 5790
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSCHCompletelyDrawn:Z

    .line 5791
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    .line 5792
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    .line 5793
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mMoveIsStarted:Z

    .line 5794
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bSCHvisibleonFocus:Z

    .line 5801
    iput v2, p0, Landroid/webkit/HtmlComposerView;->x_lastPosition:I

    .line 5802
    iput v2, p0, Landroid/webkit/HtmlComposerView;->y_lastPosition:I

    .line 5803
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 5804
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mRectNotScrolled:Z

    .line 5806
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isTouchedImage:Z

    .line 5807
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 5808
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsInReverse:Z

    .line 5809
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 5810
    new-instance v0, Ljava/util/Timer;

    const-string v1, "SCHTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    .line 5811
    new-instance v0, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    .line 5813
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 5815
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    .line 346
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 350
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 114
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 115
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    .line 116
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 117
    const-string v1, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 118
    const v1, 0x420000ff

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 119
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 120
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 121
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 122
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    .line 123
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    .line 124
    const v1, 0x186a0

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 125
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 127
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 128
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 129
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 130
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 131
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 132
    iput v3, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 133
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 134
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 135
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 136
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 137
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 138
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 139
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 140
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 141
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 143
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 144
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 146
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    .line 148
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 149
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 150
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 151
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    .line 153
    iput v5, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 154
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 156
    iput v5, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    .line 159
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 160
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 161
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 162
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    .line 165
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mDoubleTapped:Z

    .line 166
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    .line 201
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 203
    iput v5, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 204
    iput v5, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 207
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 212
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 217
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 222
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 224
    iput v3, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 225
    iput v3, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 227
    const/16 v1, 0x14

    iput v1, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 229
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 230
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 231
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 232
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 233
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 235
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 239
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 243
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 247
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 248
    iput v3, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 249
    iput v3, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 251
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 252
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 253
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 254
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 256
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 257
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 258
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 259
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 266
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 267
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 268
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 269
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 271
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 298
    iput-boolean v6, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 492
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 493
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 494
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 2050
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    .line 2051
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mLocalStartX:I

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mLocalStartY:I

    .line 2052
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mLocalEndX:I

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mLocalEndY:I

    .line 5362
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 5363
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    .line 5364
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 5365
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 5786
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    .line 5788
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    .line 5789
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_handle_y:I

    .line 5790
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isSCHCompletelyDrawn:Z

    .line 5791
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    .line 5792
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    .line 5793
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mMoveIsStarted:Z

    .line 5794
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->bSCHvisibleonFocus:Z

    .line 5801
    iput v3, p0, Landroid/webkit/HtmlComposerView;->x_lastPosition:I

    .line 5802
    iput v3, p0, Landroid/webkit/HtmlComposerView;->y_lastPosition:I

    .line 5803
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 5804
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mRectNotScrolled:Z

    .line 5806
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isTouchedImage:Z

    .line 5807
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 5808
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mIsInReverse:Z

    .line 5809
    iput-boolean v6, p0, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 5810
    new-instance v1, Ljava/util/Timer;

    const-string v2, "SCHTimer"

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    .line 5811
    new-instance v1, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;

    invoke-direct {v1, p0}, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    .line 5813
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 5815
    iput-boolean v6, p0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    .line 351
    invoke-direct {p0, p2}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, data:Ljava/lang/String;
    const-string v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method private HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "data"
    .parameter "mimeType"

    .prologue
    const/16 v9, 0x50

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 356
    invoke-virtual {p0, v7}, Landroid/webkit/HtmlComposerView;->setSoundEffectsEnabled(Z)V

    .line 357
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewProvider()Landroid/webkit/WebViewProvider;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClassic;

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 358
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 359
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 360
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 361
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 362
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setAdvanceCommands(Z)V

    .line 364
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 365
    .local v6, metric:Landroid/util/DisplayMetrics;
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 367
    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 369
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    .line 370
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    .line 372
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 373
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->XXFAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 386
    :cond_0
    :goto_0
    new-instance v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 387
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 389
    const-string v1, "htmlcomposer"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HtmlComposerView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 392
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v8, v0}, Landroid/text/method/QwertyKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 393
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 394
    iput-object p0, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 395
    new-instance v0, Landroid/webkit/HtmlComposerInputConnection;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerInputConnection;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 397
    new-instance v0, Landroid/webkit/HtmlComposerView$HCWHandler;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$HCWHandler;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    .line 399
    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 400
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    .line 407
    :goto_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->setHoverPopupType(I)V

    .line 408
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 409
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 410
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    new-instance v1, Landroid/webkit/HtmlComposerView$1;

    invoke-direct {v1, p0}, Landroid/webkit/HtmlComposerView$1;-><init>(Landroid/webkit/HtmlComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 442
    return-void

    .line 374
    :cond_1
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 375
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->XFAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 376
    :cond_2
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    .line 377
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 378
    :cond_3
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    const v1, 0x3faa6666

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 379
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->SFAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 380
    :cond_4
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_5

    .line 381
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 382
    :cond_5
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe8

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 403
    :cond_6
    iput-boolean v8, p0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    goto/16 :goto_1
.end method

.method static synthetic access$000(Landroid/webkit/HtmlComposerView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    return v0
.end method

.method static synthetic access$1000(Landroid/webkit/HtmlComposerView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    return v0
.end method

.method static synthetic access$1100(Landroid/webkit/HtmlComposerView;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/webkit/HtmlComposerView;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/webkit/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/webkit/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    return v0
.end method

.method static synthetic access$202(Landroid/webkit/HtmlComposerView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    return p1
.end method

.method static synthetic access$300(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    return v0
.end method

.method static synthetic access$302(Landroid/webkit/HtmlComposerView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    return p1
.end method

.method static synthetic access$502(Landroid/webkit/HtmlComposerView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    return p1
.end method

.method static synthetic access$600(Landroid/webkit/HtmlComposerView;)Landroid/webkit/HtmlComposerInputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$800(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/HtmlComposerView;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private canSelectAll()Z
    .locals 1

    .prologue
    .line 3854
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3855
    const/4 v0, 0x1

    .line 3858
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "src"
    .parameter "dst"

    .prologue
    const/4 v5, 0x0

    .line 3864
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 3865
    .local v3, source:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 3867
    .local v4, target:Ljava/io/FileOutputStream;
    const/16 v6, 0x800

    new-array v0, v6, [B

    .line 3868
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 3869
    .local v2, i:I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 3870
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3879
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 3880
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 3884
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return v5

    .line 3872
    .restart local v0       #buffer:[B
    .restart local v2       #i:I
    .restart local v3       #source:Ljava/io/FileInputStream;
    .restart local v4       #target:Ljava/io/FileOutputStream;
    :cond_0
    if-eqz v3, :cond_1

    .line 3873
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 3875
    :cond_1
    if-eqz v4, :cond_2

    .line 3876
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3878
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 3882
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 3883
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private createToolTip()V
    .locals 2

    .prologue
    .line 2337
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 2338
    new-instance v0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;-><init>(Landroid/webkit/HtmlComposerView;Landroid/content/Context;Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 2341
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 2342
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->show()V

    .line 2343
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 2345
    :cond_1
    return-void
.end method

.method private displaySoftKeyboardForHtmlComposer()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3889
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3892
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 3894
    .local v1, showIme:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 3895
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3897
    :cond_0
    return-void

    .end local v1           #showIme:Z
    :cond_1
    move v1, v2

    .line 3892
    goto :goto_0
.end method

.method private drawSingleCursorHandler(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 5465
    const/16 v10, 0xc

    .line 5467
    .local v10, left_right_image_gap:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getCaretState()Z

    move-result v17

    if-nez v17, :cond_2

    .line 5593
    :cond_1
    :goto_0
    return-void

    .line 5472
    :cond_2
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5473
    .local v11, metric:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/Activity;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5475
    iget v0, v11, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    const/high16 v18, 0x42c8

    mul-float v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebSettings;->getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v5, v17, v18

    .line 5477
    .local v5, density:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v12

    .line 5479
    .local v12, scale:F
    const-string v17, "HtmlComposerView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "drawSingleCursorHandler density = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " scale = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5482
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v4

    .line 5483
    .local v4, cursurRect:Landroid/graphics/Rect;
    if-eqz v4, :cond_1

    .line 5487
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 5488
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 5489
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 5490
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 5494
    iget v15, v4, Landroid/graphics/Rect;->left:I

    .line 5495
    .local v15, x:I
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v18

    add-int v16, v17, v18

    .line 5496
    .local v16, y:I
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 5497
    .local v14, visRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 5499
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 5502
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1080a0c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 5505
    .local v13, singleCursorhandler:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 5506
    .local v6, iSCHHeight:I
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 5507
    .local v8, iSCHWidth:I
    int-to-float v0, v6

    move/from16 v17, v0

    mul-float v17, v17, v5

    move/from16 v0, v17

    float-to-int v7, v0

    .line 5508
    .local v7, iSCHHeightByDensity:I
    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v17, v17, v5

    move/from16 v0, v17

    float-to-int v9, v0

    .line 5510
    .local v9, iSCHWidthByDensity:I
    add-int v17, v16, v6

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v17, v17, v16

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 5513
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 5515
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 5516
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimerTask;->cancel()Z

    .line 5517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Timer;->purge()I

    goto/16 :goto_0

    .line 5521
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 5523
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x108078e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 5525
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 5526
    div-int/lit8 v17, v9, 0x2

    sub-int v17, v15, v17

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v18

    sub-int v18, v16, v18

    sub-int v18, v18, v7

    div-int/lit8 v19, v9, 0x2

    add-int v19, v19, v15

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v20

    sub-int v20, v16, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5539
    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mIsInReverse:Z

    .line 5568
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isSCHCompletelyDrawn:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->iAlpha:I

    move/from16 v17, v0

    const/16 v18, 0xff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    .line 5571
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->iAlpha:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x33

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerView;->iAlpha:I

    .line 5573
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->iAlpha:I

    move/from16 v17, v0

    const/16 v18, 0xff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 5575
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 5577
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 5528
    :cond_7
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    div-int/lit8 v18, v8, 0x2

    sub-int v17, v17, v18

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 5529
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1080a0e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 5530
    sub-int v17, v15, v10

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v18

    sub-int v18, v16, v18

    sub-int v18, v18, v7

    sub-int v19, v15, v10

    add-int v19, v19, v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v20

    sub-int v20, v16, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 5531
    :cond_8
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    div-int/lit8 v18, v8, 0x2

    add-int v17, v17, v18

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    .line 5532
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1080a0b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 5533
    add-int v17, v15, v10

    sub-int v17, v17, v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v18

    sub-int v18, v16, v18

    sub-int v18, v18, v7

    add-int v19, v15, v10

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v20

    sub-int v20, v16, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 5535
    :cond_9
    div-int/lit8 v17, v9, 0x2

    sub-int v17, v15, v17

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v18

    sub-int v18, v16, v18

    sub-int v18, v18, v7

    div-int/lit8 v19, v9, 0x2

    add-int v19, v19, v15

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v20

    sub-int v20, v16, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 5541
    :cond_a
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 5543
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 5544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimerTask;->cancel()Z

    .line 5545
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Timer;->purge()I

    goto/16 :goto_0

    .line 5549
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 5551
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 5552
    div-int/lit8 v17, v9, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v9, 0x2

    add-int v18, v18, v15

    add-int v19, v16, v7

    move/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5565
    :goto_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mIsInReverse:Z

    goto/16 :goto_2

    .line 5554
    :cond_d
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    div-int/lit8 v18, v8, 0x2

    sub-int v17, v17, v18

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    .line 5555
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1080a0d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 5556
    sub-int v17, v15, v10

    sub-int v18, v15, v10

    add-int v18, v18, v9

    add-int v19, v16, v7

    move/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    .line 5557
    :cond_e
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    div-int/lit8 v18, v8, 0x2

    add-int v17, v17, v18

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_f

    .line 5558
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1080a0a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 5559
    add-int v17, v15, v10

    sub-int v17, v17, v9

    add-int v18, v15, v10

    add-int v19, v16, v7

    move/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    .line 5561
    :cond_f
    div-int/lit8 v17, v9, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v9, 0x2

    add-int v18, v18, v15

    add-int v19, v16, v7

    move/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3

    .line 5584
    :cond_10
    const/16 v17, 0xff

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerView;->iAlpha:I

    .line 5590
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5591
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->isSCHCompletelyDrawn:Z

    goto/16 :goto_0
.end method

.method private drawWebImageSelectionControl(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 5646
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    .line 5649
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebTextSelectionControls;->DrawImageSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 5650
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v2, v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebTextSelectionControls;->DrawImageResizeMoveHandlers(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 5651
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 5658
    :goto_0
    return-void

    .line 5655
    :cond_0
    const-string v0, "HtmlComposerView"

    const-string v1, "DrawImageSelectionControls  mImageCopyInfo is null and invalidate()  "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5656
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    goto :goto_0
.end method

.method private getCurrentOutlineBottom()F
    .locals 1

    .prologue
    .line 4464
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method private getCurrentOutlineHeight()I
    .locals 2

    .prologue
    .line 4456
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getCurrentOutlineRight()F
    .locals 1

    .prologue
    .line 4468
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method private getCurrentOutlineWidth()I
    .locals 2

    .prologue
    .line 4460
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getLoadableContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "filePath"

    .prologue
    .line 3911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3915
    .local v1, bufer:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 3917
    .local v4, fstream:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3918
    .local v5, in:Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3921
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, strLine:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 3923
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3939
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v6           #strLine:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 3940
    .local v3, ep:Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " HtmlComposerView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3941
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .end local v3           #ep:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v2

    .line 3925
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #strLine:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3928
    .local v2, data:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 3929
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 3930
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 3931
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3933
    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v10, 0x104076a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v10, 0x104076b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 3934
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getSelectedImageUri()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3947
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3964
    :cond_0
    :goto_0
    return-object v2

    .line 3949
    :cond_1
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3950
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 3951
    :try_start_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3952
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x229

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3957
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3962
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3964
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 3954
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3962
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3958
    :catch_0
    move-exception v0

    .line 3959
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private getSelectionOffsetImage()V
    .locals 2

    .prologue
    .line 3969
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3974
    :cond_0
    :goto_0
    return-void

    .line 3971
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3972
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "rect"

    .prologue
    .line 3980
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3990
    :cond_0
    :goto_0
    return-void

    .line 3982
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    new-instance v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;-><init>(Landroid/webkit/WebViewCore;)V

    iput-object v1, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 3983
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    const/16 v1, 0x8

    iput v1, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    .line 3984
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 3985
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 3987
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3988
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 3
    .parameter "rect"
    .parameter "imageoutLinePath"
    .parameter "imagehandlesPath"

    .prologue
    .line 3996
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4009
    :cond_0
    :goto_0
    return-void

    .line 3998
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    new-instance v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;-><init>(Landroid/webkit/WebViewCore;)V

    iput-object v1, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 3999
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    const/16 v1, 0x8

    iput v1, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    .line 4000
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 4001
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 4003
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p2, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    .line 4004
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p3, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    .line 4006
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4007
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private getTargetView()Landroid/webkit/HtmlComposerView;
    .locals 1

    .prologue
    .line 4013
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method private handleBottomMiddleHandleDrag(II)V
    .locals 6
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/high16 v5, 0x42c8

    const/high16 v4, 0x4120

    .line 4888
    const/4 v0, 0x0

    .line 4889
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 4891
    .local v1, deltaY:I
    if-gez v1, :cond_1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mContentY:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 4892
    iget v2, p0, Landroid/webkit/HtmlComposerView;->mContentY:I

    if-gtz v2, :cond_0

    .line 4904
    :goto_0
    return-void

    .line 4893
    :cond_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 4894
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    add-int p2, v2, v1

    .line 4897
    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4898
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4899
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4900
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4901
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4903
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    goto :goto_0
.end method

.method private handleLeftBottomHandleDrag(II)V
    .locals 11
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/16 v10, 0xa

    const/high16 v9, 0x42c8

    const/high16 v8, 0x4120

    .line 4696
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 4697
    .local v2, deltaX:I
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 4698
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4699
    .local v0, deltaValueX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4700
    .local v1, deltaValueY:I
    const/4 v4, 0x1

    .line 4701
    .local v4, signX:I
    const/4 v5, 0x1

    .line 4703
    .local v5, signY:I
    if-lez v2, :cond_0

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mContentX:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 4704
    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 4705
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    add-int p1, v2, v6

    .line 4706
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4708
    :cond_0
    if-gez v3, :cond_3

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mContentY:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    .line 4709
    iget v6, p0, Landroid/webkit/HtmlComposerView;->mContentY:I

    if-gtz v6, :cond_2

    .line 4741
    :cond_1
    :goto_0
    return-void

    .line 4710
    :cond_2
    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 4711
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    add-int p2, v3, v6

    .line 4712
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4715
    :cond_3
    if-lt v0, v10, :cond_1

    if-lt v1, v10, :cond_1

    .line 4717
    if-gez v2, :cond_4

    .line 4718
    const/4 v4, -0x1

    .line 4719
    :cond_4
    if-gez v3, :cond_5

    .line 4720
    const/4 v5, -0x1

    .line 4721
    :cond_5
    if-eq v4, v5, :cond_1

    .line 4724
    if-ge v0, v1, :cond_6

    .line 4725
    mul-int v3, v0, v5

    .line 4732
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4733
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4736
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4737
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4738
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4739
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4740
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 4728
    :cond_6
    mul-int v2, v1, v4

    goto :goto_1
.end method

.method private handleLeftMiddleHandleDrag(II)V
    .locals 6
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/high16 v5, 0x42c8

    const/high16 v4, 0x4120

    .line 4942
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    .line 4943
    .local v0, deltaX:I
    const/4 v1, 0x0

    .line 4945
    .local v1, deltaY:I
    if-lez v0, :cond_0

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mContentX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 4946
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 4947
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    add-int p1, v2, v0

    .line 4950
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4951
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4952
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4953
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4954
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4955
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4956
    return-void
.end method

.method private handleLeftTopHandleDrag(II)V
    .locals 11
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/16 v10, 0xa

    const/high16 v9, 0x42c8

    const/high16 v8, 0x4120

    .line 4744
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 4745
    .local v2, deltaX:I
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 4746
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4747
    .local v0, deltaValueX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4748
    .local v1, deltaValueY:I
    const/4 v4, 0x1

    .line 4749
    .local v4, signX:I
    const/4 v5, 0x1

    .line 4751
    .local v5, signY:I
    if-lez v2, :cond_0

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mContentX:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 4752
    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 4753
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    add-int p1, v6, v2

    .line 4754
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4756
    :cond_0
    if-lez v3, :cond_1

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mContentY:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 4757
    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 4758
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    add-int p2, v6, v3

    .line 4759
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4762
    :cond_1
    if-lt v0, v10, :cond_2

    if-ge v1, v10, :cond_3

    .line 4788
    :cond_2
    :goto_0
    return-void

    .line 4764
    :cond_3
    if-gez v2, :cond_4

    .line 4765
    const/4 v4, -0x1

    .line 4766
    :cond_4
    if-gez v3, :cond_5

    .line 4767
    const/4 v5, -0x1

    .line 4768
    :cond_5
    if-ne v4, v5, :cond_2

    .line 4771
    if-ge v0, v1, :cond_6

    .line 4772
    mul-int v3, v0, v5

    .line 4779
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4780
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4783
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4784
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4785
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4786
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4787
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 4775
    :cond_6
    mul-int v2, v1, v4

    goto :goto_1
.end method

.method private handleNavKeys(I)V
    .locals 7
    .parameter "keyCode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 4017
    packed-switch p1, :pswitch_data_0

    .line 4113
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(I)V

    .line 4115
    invoke-virtual {p0, v6}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 4117
    invoke-virtual {p0, v6}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 4118
    return-void

    .line 4019
    :pswitch_0
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_2

    .line 4020
    const-string v2, "MoveLeftAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4021
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    .line 4022
    .local v1, selectionType:I
    if-ne v5, v1, :cond_1

    .line 4023
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 4024
    .local v0, selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 4025
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 4026
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 4027
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 4028
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0

    .line 4029
    .end local v0           #selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    :cond_1
    if-nez v1, :cond_0

    .line 4030
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto :goto_0

    .line 4034
    .end local v1           #selectionType:I
    :cond_2
    const-string v2, "MoveLeft"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4036
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 4037
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto :goto_0

    .line 4042
    :pswitch_1
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_4

    .line 4043
    const-string v2, "MoveRightAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4044
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    .line 4045
    .restart local v1       #selectionType:I
    if-ne v5, v1, :cond_3

    .line 4046
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 4047
    .restart local v0       #selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 4048
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 4049
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 4050
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 4051
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0

    .line 4052
    .end local v0           #selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    :cond_3
    if-nez v1, :cond_0

    .line 4053
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 4057
    .end local v1           #selectionType:I
    :cond_4
    const-string v2, "MoveRight"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4059
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 4060
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 4065
    :pswitch_2
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_6

    .line 4066
    const-string v2, "MoveUpAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4067
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    .line 4068
    .restart local v1       #selectionType:I
    if-ne v5, v1, :cond_5

    .line 4069
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 4070
    .restart local v0       #selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 4071
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 4072
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 4073
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 4074
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_0

    .line 4075
    .end local v0           #selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    :cond_5
    if-nez v1, :cond_0

    .line 4076
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 4080
    .end local v1           #selectionType:I
    :cond_6
    const-string v2, "MoveUp"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4082
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 4083
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 4088
    :pswitch_3
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_8

    .line 4089
    const-string v2, "MoveDownAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4090
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    .line 4091
    .restart local v1       #selectionType:I
    if-ne v5, v1, :cond_7

    .line 4092
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 4093
    .restart local v0       #selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 4094
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 4095
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 4096
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 4097
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_0

    .line 4098
    .end local v0           #selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    :cond_7
    if-nez v1, :cond_0

    .line 4099
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 4103
    .end local v1           #selectionType:I
    :cond_8
    const-string v2, "MoveDown"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4105
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 4106
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 4017
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleRightBottomHandleDrag(II)V
    .locals 11
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/16 v10, 0xa

    const/high16 v9, 0x42c8

    const/high16 v8, 0x4120

    .line 4791
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 4792
    .local v2, deltaX:I
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 4793
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4794
    .local v0, deltaValueX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4795
    .local v1, deltaValueY:I
    const/4 v4, 0x1

    .line 4796
    .local v4, signX:I
    const/4 v5, 0x1

    .line 4798
    .local v5, signY:I
    if-gez v2, :cond_0

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mContentX:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 4799
    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 4800
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    add-int p1, v6, v2

    .line 4801
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4803
    :cond_0
    if-gez v3, :cond_3

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mContentY:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    .line 4804
    iget v6, p0, Landroid/webkit/HtmlComposerView;->mContentY:I

    if-gtz v6, :cond_2

    .line 4837
    :cond_1
    :goto_0
    return-void

    .line 4805
    :cond_2
    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 4806
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    add-int p2, v6, v3

    .line 4807
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4810
    :cond_3
    if-lt v0, v10, :cond_1

    if-lt v1, v10, :cond_1

    .line 4812
    if-gez v2, :cond_4

    .line 4813
    const/4 v4, -0x1

    .line 4814
    :cond_4
    if-gez v3, :cond_5

    .line 4815
    const/4 v5, -0x1

    .line 4816
    :cond_5
    if-ne v4, v5, :cond_1

    .line 4819
    if-ge v0, v1, :cond_6

    .line 4820
    mul-int v3, v0, v5

    .line 4827
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4828
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4832
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4833
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4834
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4835
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4836
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 4823
    :cond_6
    mul-int v2, v1, v4

    goto :goto_1
.end method

.method private handleRightMiddleHandleDrag(II)V
    .locals 6
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/high16 v5, 0x42c8

    const/high16 v4, 0x4120

    .line 4925
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    .line 4926
    .local v0, deltaX:I
    const/4 v1, 0x0

    .line 4928
    .local v1, deltaY:I
    if-gez v0, :cond_0

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mContentX:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 4929
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 4930
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    add-int p1, v2, v0

    .line 4933
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4934
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4935
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4936
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4937
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4938
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4939
    return-void
.end method

.method private handleRightTopHandleDrag(II)V
    .locals 11
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/16 v10, 0xa

    const/high16 v9, 0x42c8

    const/high16 v8, 0x4120

    .line 4840
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 4841
    .local v2, deltaX:I
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 4842
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4843
    .local v0, deltaValueX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4844
    .local v1, deltaValueY:I
    const/4 v4, 0x1

    .line 4845
    .local v4, signX:I
    const/4 v5, 0x1

    .line 4847
    .local v5, signY:I
    if-gez v2, :cond_0

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mContentX:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 4848
    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 4849
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    add-int p1, v6, v2

    .line 4850
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4852
    :cond_0
    if-lez v3, :cond_1

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mContentY:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 4853
    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 4854
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    add-int p2, v6, v3

    .line 4855
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4858
    :cond_1
    if-lt v0, v10, :cond_2

    if-ge v1, v10, :cond_3

    .line 4884
    :cond_2
    :goto_0
    return-void

    .line 4860
    :cond_3
    if-gez v2, :cond_4

    .line 4861
    const/4 v4, -0x1

    .line 4862
    :cond_4
    if-gez v3, :cond_5

    .line 4863
    const/4 v5, -0x1

    .line 4864
    :cond_5
    if-eq v4, v5, :cond_2

    .line 4867
    if-ge v0, v1, :cond_6

    .line 4868
    mul-int v3, v0, v5

    .line 4875
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4876
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4879
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4880
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4881
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4882
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4883
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 4871
    :cond_6
    mul-int v2, v1, v4

    goto :goto_1
.end method

.method private handleTopMiddleHandleDrag(II)V
    .locals 6
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/high16 v5, 0x42c8

    const/high16 v4, 0x4120

    .line 4907
    const/4 v0, 0x0

    .line 4908
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 4910
    .local v1, deltaY:I
    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mContentY:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 4911
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 4912
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    add-int p2, v2, v1

    .line 4915
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4916
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4917
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4918
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4919
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4921
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4922
    return-void
.end method

.method private handle_ACTION_CANCEL()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 4683
    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 4684
    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 4685
    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 4686
    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 4687
    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 4688
    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 4689
    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 4690
    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 4691
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 4692
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 4693
    return-void
.end method

.method private handle_ACTION_DOWN(IIII)V
    .locals 4
    .parameter "contentX"
    .parameter "contentY"
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x1

    .line 4473
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isOutLineRect(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4475
    const-string v0, "HtmlComposerView"

    const-string v1, "inside \"If outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4480
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isleftTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4481
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4482
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4483
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 4484
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 4486
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 4487
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 4488
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 4490
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mConversionFactorX:I

    .line 4491
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mConversionFactorY:I

    .line 4493
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 4586
    :goto_1
    return-void

    .line 4478
    :cond_0
    const-string v0, "HtmlComposerView"

    const-string v1, "inside \"else outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4494
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isleftBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4495
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4496
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4497
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 4498
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 4500
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 4501
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 4502
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 4504
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mConversionFactorX:I

    .line 4505
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mConversionFactorY:I

    .line 4507
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    goto :goto_1

    .line 4508
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isRightTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4509
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4510
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4511
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 4512
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 4513
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 4514
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 4515
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 4517
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mConversionFactorX:I

    .line 4518
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mConversionFactorY:I

    .line 4520
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    goto :goto_1

    .line 4521
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isRightBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4522
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4523
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4524
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 4526
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mConversionFactorX:I

    .line 4527
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mConversionFactorY:I

    .line 4529
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 4530
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isleftMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4531
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4532
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4533
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 4534
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 4535
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 4536
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 4537
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 4539
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mConversionFactorX:I

    .line 4540
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mConversionFactorY:I

    .line 4542
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 4543
    :cond_5
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isBottomMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4544
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4545
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4546
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 4547
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 4549
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 4550
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 4551
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 4553
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mConversionFactorX:I

    .line 4554
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mConversionFactorY:I

    .line 4556
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 4557
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isTopMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4558
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4559
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4560
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 4561
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 4562
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 4563
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 4564
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 4566
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mConversionFactorX:I

    .line 4567
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mConversionFactorY:I

    .line 4569
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 4570
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isRightMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4571
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4572
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4573
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 4574
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 4575
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 4576
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 4577
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 4579
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mConversionFactorX:I

    .line 4580
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mConversionFactorY:I

    .line 4582
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 4584
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1
.end method

.method private handle_ACTION_MOVE(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v2, 0x1

    .line 4589
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v2, :cond_5

    .line 4591
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleRightBottomHandleDrag(II)V

    .line 4636
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-eqz v0, :cond_2

    .line 4637
    :cond_1
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 4639
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eqz v0, :cond_4

    .line 4640
    :cond_3
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 4641
    :cond_4
    return-void

    .line 4593
    :cond_5
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v2, :cond_6

    .line 4595
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleLeftBottomHandleDrag(II)V

    .line 4596
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 4597
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    goto :goto_0

    .line 4599
    :cond_6
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v2, :cond_7

    .line 4601
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleLeftTopHandleDrag(II)V

    .line 4602
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 4603
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    goto :goto_0

    .line 4605
    :cond_7
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v2, :cond_8

    .line 4607
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleRightTopHandleDrag(II)V

    .line 4608
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 4609
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    .line 4611
    :cond_8
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_9

    .line 4613
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleLeftMiddleHandleDrag(II)V

    .line 4614
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 4615
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    .line 4617
    :cond_9
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_a

    .line 4619
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleTopMiddleHandleDrag(II)V

    .line 4620
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 4621
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    .line 4623
    :cond_a
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_b

    .line 4625
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleRightMiddleHandleDrag(II)V

    .line 4626
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 4627
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    .line 4629
    :cond_b
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_0

    .line 4631
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleBottomMiddleHandleDrag(II)V

    .line 4632
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 4633
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0
.end method

.method private handle_ACTION_UP(II)V
    .locals 5
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 4644
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4645
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4646
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 4648
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v1, :cond_2

    .line 4651
    :cond_0
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 4652
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 4653
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 4654
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 4655
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 4656
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 4657
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 4659
    iget v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_1

    .line 4660
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4661
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4662
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 4663
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 4666
    :cond_1
    invoke-direct {p0, v3, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4667
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4670
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4671
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4674
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4675
    iget v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 4676
    iget v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 4677
    iput v4, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 4678
    iput v4, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 4681
    :cond_2
    return-void
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 2347
    const-string v0, "HtmlComposerView"

    const-string v1, "hide : Called."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2350
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 2351
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 2353
    :cond_0
    return-void
.end method

.method private hideSoftKeyboardForHtmlComposer()V
    .locals 3

    .prologue
    .line 4121
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4122
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4123
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4125
    :cond_0
    return-void
.end method

.method private imageCopy(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 4128
    if-eqz p1, :cond_0

    .line 4129
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4130
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x204

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4132
    :cond_0
    return-void
.end method

.method private insertImageContent(Ljava/lang/String;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 4135
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4136
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x220

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4137
    :cond_0
    return-void
.end method

.method private isBottomMiddleImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5128
    move v0, p1

    .line 5129
    .local v0, positionX:I
    move v1, p2

    .line 5131
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5133
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5135
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5136
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "true inside rectHandle Bottom Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5139
    :cond_0
    const/4 v3, 0x1

    .line 5148
    :goto_0
    return v3

    .line 5142
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5144
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5145
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Bottom Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5148
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isCursorAtBoundary(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 4140
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 4157
    :goto_0
    return v2

    .line 4142
    :cond_1
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4143
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 4144
    :try_start_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4145
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x22c

    invoke-virtual {v2, v3, p1, p2, v1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4150
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4155
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4157
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 4147
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 4155
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 4151
    :catch_0
    move-exception v0

    .line 4152
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4153
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private isHoverPointWithinIconAreaForResizing(II)Z
    .locals 12
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const v11, 0x10805d7

    const/4 v4, 0x0

    const/high16 v10, 0x4000

    const/4 v5, 0x1

    const/4 v9, -0x1

    .line 4169
    iget-boolean v6, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-ne v5, v6, :cond_3

    .line 4170
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 4171
    .local v1, re:Landroid/graphics/RectF;
    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v6, v1, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4173
    iget-boolean v6, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHoverPointWithinIconAreaForResizing getX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", getY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4174
    :cond_0
    iget-boolean v6, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHoverPointWithinIconAreaForResizing outLinePath re.left re.top re.right re.bottom "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    :cond_1
    const/16 v0, 0x28

    .line 4177
    .local v0, delta:I
    iget v6, v1, Landroid/graphics/RectF;->left:F

    iget v7, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    float-to-int v2, v6

    .line 4178
    .local v2, xCenter:I
    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    float-to-int v3, v6

    .line 4180
    .local v3, yCenter:I
    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    .line 4182
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Top"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    :cond_2
    const v4, 0x10805d9

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 4184
    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 4185
    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    :goto_0
    move v4, v5

    .line 4238
    .end local v0           #delta:I
    .end local v1           #re:Landroid/graphics/RectF;
    .end local v2           #xCenter:I
    .end local v3           #yCenter:I
    :cond_3
    :goto_1
    return v4

    .line 4186
    .restart local v0       #delta:I
    .restart local v1       #re:Landroid/graphics/RectF;
    .restart local v2       #xCenter:I
    .restart local v3       #yCenter:I
    :cond_4
    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    .line 4188
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Top"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4189
    :cond_5
    const v4, 0x10805d8

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 4190
    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 4191
    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto :goto_0

    .line 4192
    :cond_6
    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_8

    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_8

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8

    .line 4194
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Bottom"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4195
    :cond_7
    const v4, 0x10805d8

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 4196
    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 4197
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto :goto_0

    .line 4198
    :cond_8
    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_a

    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_a

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_a

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_a

    .line 4200
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_9

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Bottom"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4201
    :cond_9
    const v4, 0x10805d9

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 4202
    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 4203
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 4204
    :cond_a
    sub-int v6, v2, v0

    if-gt v6, p1, :cond_c

    add-int v6, v2, v0

    if-lt v6, p1, :cond_c

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_c

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_c

    .line 4206
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Top-Horizontal Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4207
    :cond_b
    iput v11, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 4208
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 4209
    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 4210
    :cond_c
    sub-int v6, v2, v0

    if-gt v6, p1, :cond_e

    add-int v6, v2, v0

    if-lt v6, p1, :cond_e

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_e

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_e

    .line 4212
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Bottom-Horizontal Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4213
    :cond_d
    iput v11, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 4214
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 4215
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 4216
    :cond_e
    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_10

    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_10

    sub-int v6, v3, v0

    if-gt v6, p2, :cond_10

    add-int v6, v3, v0

    if-lt v6, p2, :cond_10

    .line 4218
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_f

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Vertical Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    :cond_f
    const v4, 0x10805da

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 4220
    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 4221
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 4222
    :cond_10
    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_12

    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_12

    sub-int v6, v3, v0

    if-gt v6, p2, :cond_12

    add-int v6, v3, v0

    if-lt v6, p2, :cond_12

    .line 4224
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_11

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Vertical Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    :cond_11
    const v4, 0x10805da

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 4226
    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 4227
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 4229
    :cond_12
    iput v9, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 4230
    iput v9, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 4231
    iput v9, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_1
.end method

.method private isInsertionAllowed(I)Z
    .locals 4
    .parameter "insertionLength"

    .prologue
    const/4 v1, 0x1

    .line 4243
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    if-eqz v2, :cond_1

    .line 4247
    :cond_0
    :goto_0
    return v1

    .line 4245
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->htmlLength()I

    move-result v0

    .line 4247
    .local v0, curHtmlLength:I
    add-int v2, v0, p1

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    if-le v2, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOutLineRect(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5152
    move v0, p1

    .line 5153
    .local v0, positionX:I
    move v1, p2

    .line 5155
    .local v1, positionY:I
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5157
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 5158
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in \"If\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5161
    :cond_0
    const/4 v2, 0x1

    .line 5169
    :goto_0
    return v2

    .line 5164
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 5165
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in \"else\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5169
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRightBottomImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5033
    move v0, p1

    .line 5034
    .local v0, positionX:I
    move v1, p2

    .line 5036
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5038
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5040
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5041
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "true inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5044
    :cond_0
    const/4 v3, 0x1

    .line 5053
    :goto_0
    return v3

    .line 5047
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5049
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5050
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5053
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isRightMiddleImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5081
    move v0, p1

    .line 5082
    .local v0, positionX:I
    move v1, p2

    .line 5084
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5085
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5087
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5088
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "true inside rectHandle Right Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5091
    :cond_0
    const/4 v3, 0x1

    .line 5100
    :goto_0
    return v3

    .line 5094
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5096
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5097
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5100
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isRightTopImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5009
    move v0, p1

    .line 5010
    .local v0, positionX:I
    move v1, p2

    .line 5012
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5014
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5016
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5017
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "true inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5020
    :cond_0
    const/4 v3, 0x1

    .line 5029
    :goto_0
    return v3

    .line 5023
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5025
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5026
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5029
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isTopMiddleImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5104
    move v0, p1

    .line 5105
    .local v0, positionX:I
    move v1, p2

    .line 5107
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5109
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5111
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5112
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "true inside rectHandle Top Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5115
    :cond_0
    const/4 v3, 0x1

    .line 5124
    :goto_0
    return v3

    .line 5118
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5120
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5121
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Top Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5124
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftBottomImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4986
    move v0, p1

    .line 4987
    .local v0, positionX:I
    move v1, p2

    .line 4989
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4990
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4992
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 4993
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "true inside rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4996
    :cond_0
    const/4 v3, 0x1

    .line 5005
    :goto_0
    return v3

    .line 4999
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5001
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5002
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside  rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5005
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftMiddleImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5057
    move v0, p1

    .line 5058
    .local v0, positionX:I
    move v1, p2

    .line 5060
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5062
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5064
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5065
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "true inside rectHandle Left Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    :cond_0
    const/4 v3, 0x1

    .line 5077
    :goto_0
    return v3

    .line 5071
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5073
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5074
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Left Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5077
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftTopImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4962
    move v0, p1

    .line 4963
    .local v0, positionX:I
    move v1, p2

    .line 4965
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4967
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4969
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 4970
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "true inside rectHandle left Top  PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4973
    :cond_0
    const/4 v3, 0x1

    .line 4982
    :goto_0
    return v3

    .line 4976
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4978
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 4979
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle left Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4982
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onAlignSelectedImageOutlineRectUpdate()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 4446
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_0

    .line 4448
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectedImageRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 4449
    .local v0, selectedImageRect:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_0

    .line 4450
    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    .line 4452
    .end local v0           #selectedImageRect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private resetAndCreateOutlinePath()V
    .locals 6

    .prologue
    .line 5175
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 5176
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5177
    return-void
.end method

.method private resetAndRecreateHandlesPath()V
    .locals 6

    .prologue
    .line 5180
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 5181
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5182
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5184
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5185
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5187
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5188
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5190
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5191
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5193
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5194
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5196
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5197
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5199
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5200
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5202
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5203
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5204
    return-void
.end method

.method private restartIMEByHtmlComposerView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 4251
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4253
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4254
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v3, v1, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 4255
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v3, v1, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 4256
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 4258
    :cond_0
    return-void
.end method

.method private selectedImageOutlineRectUpdate()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 4437
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    if-eq v1, v3, :cond_0

    .line 4439
    iget v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 4440
    .local v0, selectedImageRect:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_0

    .line 4441
    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    .line 4443
    .end local v0           #selectedImageRect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private sendEventToUpdateToolbar()V
    .locals 2

    .prologue
    .line 4285
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4286
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x501

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4287
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    invoke-virtual {v1, v0}, Landroid/webkit/HtmlComposerView$HCWHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4288
    return-void
.end method

.method private setEditable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/16 v2, 0x207

    .line 4274
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4282
    :cond_0
    :goto_0
    return-void

    .line 4276
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4278
    if-eqz p1, :cond_2

    .line 4279
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_0

    .line 4281
    :cond_2
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_0
.end method

.method private updateAllHandles()V
    .locals 0

    .prologue
    .line 5209
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateLeftTopHandle()V

    .line 5210
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRightTopHandle()V

    .line 5211
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateLeftBottomHandle()V

    .line 5212
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRightBottomHandle()V

    .line 5213
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateTopMiddleHandle()V

    .line 5214
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateLeftMiddleHandle()V

    .line 5215
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateBottomMiddleHandle()V

    .line 5216
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRightMiddleHandle()V

    .line 5217
    return-void
.end method

.method private updateBottomMiddleHandle()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 5332
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5333
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 5334
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 5335
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->bm_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 5336
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->bm_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 5341
    :goto_0
    return-void

    .line 5339
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateInputMethodExtractText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4298
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 4299
    .local v1, outText:Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 4301
    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    .line 4316
    :cond_0
    :goto_0
    return-void

    .line 4304
    :cond_1
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4305
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4306
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 4307
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;

    move-result-object v2

    .line 4308
    .local v2, selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    iget v3, v2, Landroid/webkit/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 4309
    iget v3, v2, Landroid/webkit/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 4311
    const-string v3, "HtmlComposerView"

    const-string v4, "getExtractedText "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4313
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4314
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4315
    invoke-virtual {v0, p0, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0
.end method

.method private updateLeftBottomHandle()V
    .locals 6

    .prologue
    .line 5260
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5262
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 5263
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 5264
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->lb_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 5265
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->lb_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 5270
    :goto_0
    return-void

    .line 5268
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateLeftMiddleHandle()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    .line 5328
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 5329
    return-void
.end method

.method private updateLeftTopHandle()V
    .locals 5

    .prologue
    .line 5255
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 5256
    return-void
.end method

.method private updateOutlineRectangle(II)V
    .locals 4
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v3, 0x1

    .line 5273
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v3, :cond_0

    .line 5274
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 5275
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 5277
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v3, :cond_1

    .line 5278
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 5279
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 5281
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v3, :cond_2

    .line 5282
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 5283
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 5285
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v3, :cond_3

    .line 5286
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 5287
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 5289
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_4

    .line 5290
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 5291
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 5293
    :cond_4
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_5

    .line 5294
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 5295
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 5297
    :cond_5
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_6

    .line 5298
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 5299
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 5301
    :cond_6
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_7

    .line 5302
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 5303
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 5305
    :cond_7
    return-void
.end method

.method private updateRegions()V
    .locals 10

    .prologue
    const/16 v5, 0x1e

    const/4 v7, 0x0

    .line 5221
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v3, v4

    .line 5222
    .local v3, localImagWidth:I
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v2, v4

    .line 5224
    .local v2, localImagHeight:I
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v6

    .line 5225
    .local v1, cropHandlerWidth:I
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v0, v4, v6

    .line 5227
    .local v0, cropHandlerHeight:I
    add-int/lit8 v4, v1, 0x78

    if-le v3, v4, :cond_2

    move v4, v5

    :goto_0
    iput v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    .line 5228
    add-int/lit8 v4, v0, 0x78

    if-le v2, v4, :cond_3

    :goto_1
    iput v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    .line 5230
    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    if-gez v4, :cond_0

    iput v7, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    .line 5231
    :cond_0
    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    if-gez v4, :cond_1

    iput v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    .line 5233
    :cond_1
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget-object v8, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x14

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5234
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5237
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5239
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5241
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5243
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5245
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5247
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5249
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5250
    return-void

    .line 5227
    :cond_2
    sub-int v4, v3, v1

    div-int/lit8 v4, v4, 0x4

    goto/16 :goto_0

    .line 5228
    :cond_3
    sub-int v4, v2, v0

    div-int/lit8 v5, v4, 0x4

    goto/16 :goto_1
.end method

.method private updateRightBottomHandle()V
    .locals 6

    .prologue
    .line 5308
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5309
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 5310
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 5311
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 5312
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 5317
    :goto_0
    return-void

    .line 5315
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateRightMiddleHandle()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    .line 5344
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 5345
    return-void
.end method

.method private updateRightTopHandle()V
    .locals 5

    .prologue
    .line 5320
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 5321
    return-void
.end method

.method private updateTopMiddleHandle()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 5348
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5349
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 5350
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 5351
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 5352
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 5357
    :goto_0
    return-void

    .line 5355
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateactionbar()V
    .locals 2

    .prologue
    .line 4291
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4295
    :cond_0
    :goto_0
    return-void

    .line 4293
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4294
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method


# virtual methods
.method public DoClearImageSelection()V
    .locals 2

    .prologue
    .line 2825
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v0, :cond_0

    .line 2827
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 2830
    :cond_0
    return-void
.end method

.method public GetLongPressForActioinPopup()Z
    .locals 1

    .prologue
    .line 5439
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mLongPressForActionPopup:Z

    return v0
.end method

.method public HtmlComposerDrawContent(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 5597
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    if-ne v9, v1, :cond_1

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v1

    if-ne v9, v1, :cond_1

    .line 5599
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    if-ne v9, v1, :cond_5

    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    if-nez v1, :cond_5

    .line 5602
    iput-boolean v10, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    .line 5603
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    if-eqz v1, :cond_0

    .line 5605
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    .line 5607
    :cond_0
    iput-boolean v10, p0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    .line 5608
    iput-boolean v10, p0, Landroid/webkit/HtmlComposerView;->isSCHCompletelyDrawn:Z

    .line 5609
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 5620
    :cond_1
    :goto_0
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    if-ne v1, v9, :cond_2

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-ne v1, v9, :cond_2

    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    if-nez v1, :cond_2

    .line 5622
    invoke-virtual {p0, v9}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v7

    .line 5623
    .local v7, normalCursorRect:Landroid/graphics/Rect;
    if-eqz v7, :cond_2

    .line 5624
    new-instance v6, Landroid/graphics/Rect;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0xf

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0xf

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0xf

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5625
    .local v6, imageCursorRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 5626
    .local v0, cursorPath:Landroid/graphics/Path;
    iget v1, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5627
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5628
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 5629
    .local v8, paint:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5630
    invoke-virtual {p1, v0, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5635
    .end local v0           #cursorPath:Landroid/graphics/Path;
    .end local v6           #imageCursorRect:Landroid/graphics/Rect;
    .end local v7           #normalCursorRect:Landroid/graphics/Rect;
    .end local v8           #paint:Landroid/graphics/Paint;
    :cond_2
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 5636
    const-string v1, "HtmlComposerView"

    const-string v2, "drawWebImageSelectionControl is being called "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5637
    invoke-direct {p0, p1}, Landroid/webkit/HtmlComposerView;->drawWebImageSelectionControl(Landroid/graphics/Canvas;)V

    .line 5640
    :cond_3
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-ne v1, v9, :cond_4

    .line 5641
    iput-boolean v10, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    .line 5643
    :cond_4
    return-void

    .line 5615
    :cond_5
    invoke-direct {p0, p1}, Landroid/webkit/HtmlComposerView;->drawSingleCursorHandler(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public IsWordMisspelledAtPosition(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2862
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClassic;->IsWordMisspelledAtPosition(II)Z

    move-result v0

    return v0
.end method

.method public MoveCursorRight()V
    .locals 2

    .prologue
    .line 3450
    const-string v0, "MoveRight"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3451
    return-void
.end method

.method public SendInitComposing()V
    .locals 2

    .prologue
    .line 3778
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3779
    .local v0, imeBroadCast:Landroid/content/Intent;
    const-string v1, "imeAction:initComposing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3780
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3781
    return-void
.end method

.method public SetContextMenuVisible(Z)V
    .locals 0
    .parameter "_visible"

    .prologue
    .line 3727
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 3728
    return-void
.end method

.method public SetLongPressForActioinPopup(Z)V
    .locals 0
    .parameter "_set"

    .prologue
    .line 5443
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 5444
    return-void
.end method

.method public UpdateRichTextToolbar(Z)V
    .locals 2
    .parameter "isClear"

    .prologue
    const/4 v1, 0x1

    .line 3838
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    if-eqz v0, :cond_1

    .line 3839
    if-eq p1, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-ne v0, v1, :cond_2

    .line 3840
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    .line 3847
    :cond_1
    :goto_0
    return-void

    .line 3841
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    if-ne v0, v1, :cond_3

    .line 3842
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    invoke-interface {v0, v1}, Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    goto :goto_0

    .line 3844
    :cond_3
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    goto :goto_0
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 0
    .parameter "watcher"

    .prologue
    .line 5369
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    .line 5370
    return-void
.end method

.method public append(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 2591
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)Z

    .line 2592
    return-void
.end method

.method public canCopy()Z
    .locals 1

    .prologue
    .line 2595
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2596
    const/4 v0, 0x1

    .line 2599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCut()Z
    .locals 1

    .prologue
    .line 2603
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2604
    const/4 v0, 0x1

    .line 2607
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPaste()Z
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2612
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2613
    const/4 v0, 0x1

    .line 2616
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRedo()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2673
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2690
    :cond_0
    :goto_0
    return v3

    .line 2675
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2676
    .local v0, canRedo:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2677
    .local v2, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 2678
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2679
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20f

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2684
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2689
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2690
    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 2681
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 2689
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2685
    :catch_0
    move-exception v1

    .line 2686
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public canUndo()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2694
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2712
    :cond_0
    :goto_0
    return v3

    .line 2696
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2697
    .local v0, canUndo:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2698
    .local v2, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 2699
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2700
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20d

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2705
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2710
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2712
    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 2702
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 2710
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2706
    :catch_0
    move-exception v1

    .line 2707
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public changeFontBackColorForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontColor"

    .prologue
    .line 1815
    const-string v0, "BackColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1816
    return-void
.end method

.method public changeFontColorForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontColor"

    .prologue
    .line 1819
    const-string v0, "ForeColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1820
    return-void
.end method

.method public changeFontNameForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontName"

    .prologue
    .line 1823
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1824
    const-string v0, "FontName"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1825
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1826
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1827
    return-void
.end method

.method public changeFontSize(Ljava/lang/String;)V
    .locals 1
    .parameter "fontSize"

    .prologue
    .line 1837
    const-string v0, "FontValue"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1838
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(I)V

    .line 1839
    return-void
.end method

.method public changeFontSizeForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontSize"

    .prologue
    .line 1830
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1831
    const-string v0, "FontSize"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1832
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1833
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1834
    return-void
.end method

.method public ckeckIfSelectionAtBoundry()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 2716
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2733
    :cond_0
    :goto_0
    return v2

    .line 2718
    :cond_1
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2719
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2720
    :try_start_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2721
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x217

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2726
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2731
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2733
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 2723
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 2731
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2727
    :catch_0
    move-exception v0

    .line 2728
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public cleanTempResources()V
    .locals 2

    .prologue
    .line 2737
    const-string v0, "HtmlComposerView"

    const-string v1, "cleanTempResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->deleteTempDirectory()V

    .line 2739
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2742
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableBidirection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2743
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2744
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 2746
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectAllSec()Z

    .line 2748
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 2749
    return-void
.end method

.method public clearComposingSelection()V
    .locals 4

    .prologue
    .line 2751
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2752
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x219

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2753
    :cond_0
    return-void
.end method

.method public clearImageSelection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5817
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HtmlComposerView  clearImageSelection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5819
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    .line 5820
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HtmlComposerView  clearImageSelection  Clearing selection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5821
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 5822
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 5823
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    .line 5824
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 5825
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 5826
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearSelection()V

    .line 5828
    :cond_0
    return-void
.end method

.method public commitInputMethodText(Ljava/lang/String;I)V
    .locals 3
    .parameter "text"
    .parameter "numOfcharsToDeleteFromCursorPos"

    .prologue
    .line 2756
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2767
    :cond_0
    :goto_0
    return-void

    .line 2758
    :cond_1
    if-lez p2, :cond_2

    .line 2759
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitInputMethodText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2761
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 2764
    :cond_2
    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 2765
    const-string v0, "InsertText"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2766
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_0
.end method

.method public copy()V
    .locals 2

    .prologue
    .line 1842
    const-string v0, "Copy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1843
    return-void
.end method

.method public cut()V
    .locals 2

    .prologue
    .line 1846
    const-string v0, "Cut"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1847
    return-void
.end method

.method public delayedUpdateOutlineDrawRect()V
    .locals 4

    .prologue
    .line 4422
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4423
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x503

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4425
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    if-eqz v1, :cond_0

    .line 4426
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/HtmlComposerView$HCWHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4428
    :cond_0
    return-void
.end method

.method public delete()V
    .locals 4

    .prologue
    .line 2777
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getImageSelectRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2778
    .local v0, cursurRect:Landroid/graphics/Rect;
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete() -- cursurRect.left  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cursurRect.top =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewClassic;->setTextSelecitonManualAtContentPoint(II)Z

    .line 2780
    const-string v1, "Delete"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2781
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 2782
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 2
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 2785
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2791
    :cond_0
    :goto_0
    return-void

    .line 2787
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2788
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2790
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 2794
    const-string v0, "HtmlComposerView"

    const-string v1, " htmlcomposer destroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2798
    const-string v0, "HtmlComposerView"

    const-string v1, "htmlcomposer destroy() hide "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 2802
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    if-eqz v0, :cond_1

    .line 2803
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->setTargetNull()V

    .line 2804
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 2807
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    if-eqz v0, :cond_2

    .line 2808
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView$HCWHandler;->removeMessages(I)V

    .line 2809
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    const/16 v1, 0x501

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView$HCWHandler;->removeMessages(I)V

    .line 2810
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    const/16 v1, 0x502

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView$HCWHandler;->removeMessages(I)V

    .line 2811
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    const/16 v1, 0x503

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView$HCWHandler;->removeMessages(I)V

    .line 2814
    :cond_2
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 2815
    return-void
.end method

.method public disableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2818
    invoke-direct {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 2819
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 2820
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v0, :cond_0

    .line 2821
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 2822
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 21
    .parameter "event"

    .prologue
    .line 649
    const/16 v19, 0x0

    .line 650
    .local v19, retVal:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/16 v16, 0x1

    .line 651
    .local v16, down:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v17

    .line 652
    .local v17, keyCode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v15

    .line 654
    .local v15, MetaState:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 655
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dispatchKeyEvent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    const/16 v4, 0x39

    move/from16 v0, v17

    if-ne v0, v4, :cond_1

    .line 659
    if-eqz v16, :cond_6

    .line 660
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 665
    :cond_1
    :goto_1
    const/16 v4, 0x7a

    move/from16 v0, v17

    if-eq v0, v4, :cond_3

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_2

    const/16 v4, 0x97

    move/from16 v0, v17

    if-eq v0, v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_8

    const/16 v4, 0x15

    move/from16 v0, v17

    if-ne v0, v4, :cond_8

    .line 667
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_4

    .line 668
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_7

    .line 669
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 670
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToBeginningOfLine()V

    .line 677
    :cond_4
    :goto_2
    const/16 v19, 0x1

    .line 901
    .end local v19           #retVal:Z
    :goto_3
    return v19

    .line 650
    .end local v15           #MetaState:I
    .end local v16           #down:Z
    .end local v17           #keyCode:I
    .restart local v19       #retVal:Z
    :cond_5
    const/16 v16, 0x0

    goto :goto_0

    .line 662
    .restart local v15       #MetaState:I
    .restart local v16       #down:Z
    .restart local v17       #keyCode:I
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    goto :goto_1

    .line 672
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToBeginningOfLine()V

    .line 674
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_2

    .line 678
    :cond_8
    const/16 v4, 0x7b

    move/from16 v0, v17

    if-eq v0, v4, :cond_a

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_9

    const/16 v4, 0x91

    move/from16 v0, v17

    if-eq v0, v4, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_d

    const/16 v4, 0x16

    move/from16 v0, v17

    if-ne v0, v4, :cond_d

    .line 680
    :cond_a
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_b

    .line 681
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_c

    .line 682
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 683
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToEndOfLine()V

    .line 690
    :cond_b
    :goto_4
    const/16 v19, 0x1

    goto :goto_3

    .line 685
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 686
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToEndOfLine()V

    .line 687
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_4

    .line 691
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_13

    const/16 v4, 0x13

    move/from16 v0, v17

    if-eq v0, v4, :cond_e

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_13

    .line 692
    :cond_e
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_11

    const/16 v4, 0x13

    move/from16 v0, v17

    if-ne v0, v4, :cond_11

    .line 693
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_10

    .line 694
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorBegining()V

    .line 710
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 711
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 697
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToBeginningOfDocument()V

    .line 698
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5

    .line 700
    :cond_11
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_f

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_f

    .line 701
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_12

    .line 702
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorEnd()V

    goto :goto_5

    .line 705
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToEndOfDocument()V

    .line 706
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5

    .line 712
    :cond_13
    const/16 v4, 0x5c

    move/from16 v0, v17

    if-eq v0, v4, :cond_14

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_17

    const/16 v4, 0x99

    move/from16 v0, v17

    if-ne v0, v4, :cond_17

    .line 714
    :cond_14
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_15

    .line 715
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_16

    .line 716
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 717
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToPageUp()V

    .line 718
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 719
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 728
    :cond_15
    :goto_6
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 722
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 723
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToPageUp()V

    .line 724
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 725
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_6

    .line 729
    :cond_17
    const/16 v4, 0x5d

    move/from16 v0, v17

    if-eq v0, v4, :cond_18

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_1b

    const/16 v4, 0x93

    move/from16 v0, v17

    if-ne v0, v4, :cond_1b

    .line 731
    :cond_18
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_19

    .line 732
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_1a

    .line 733
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 734
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToPageDown()V

    .line 735
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 736
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 745
    :cond_19
    :goto_7
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 739
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 740
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToPageDown()V

    .line 741
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 742
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_7

    .line 748
    :cond_1b
    const/high16 v4, 0x20

    if-eq v15, v4, :cond_21

    .line 749
    const/16 v4, 0x92

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x94

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x96

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x98

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x9e

    move/from16 v0, v17

    if-ne v0, v4, :cond_21

    .line 754
    :cond_1c
    if-eqz v16, :cond_21

    .line 755
    const/16 v4, 0x92

    move/from16 v0, v17

    if-ne v0, v4, :cond_1d

    .line 756
    const/16 v17, 0x14

    .line 757
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 758
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 759
    :cond_1d
    const/16 v4, 0x94

    move/from16 v0, v17

    if-ne v0, v4, :cond_1e

    .line 760
    const/16 v17, 0x15

    .line 761
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 762
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 763
    :cond_1e
    const/16 v4, 0x96

    move/from16 v0, v17

    if-ne v0, v4, :cond_1f

    .line 764
    const/16 v17, 0x16

    .line 765
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 766
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 767
    :cond_1f
    const/16 v4, 0x98

    move/from16 v0, v17

    if-ne v0, v4, :cond_20

    .line 768
    const/16 v17, 0x13

    .line 769
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 770
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 771
    :cond_20
    const/16 v4, 0x9e

    move/from16 v0, v17

    if-ne v0, v4, :cond_21

    .line 772
    const/4 v2, 0x0

    .line 774
    .local v2, newKeyEvent:Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2           #newKeyEvent:Landroid/view/KeyEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/16 v8, 0x70

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 784
    .restart local v2       #newKeyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-super {v0, v2}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 790
    .end local v2           #newKeyEvent:Landroid/view/KeyEvent;
    :cond_21
    const/16 v4, 0x13

    move/from16 v0, v17

    if-lt v0, v4, :cond_29

    const/16 v4, 0x16

    move/from16 v0, v17

    if-gt v0, v4, :cond_29

    .line 791
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->ckeckIfSelectionAtBoundry()I

    move-result v20

    .line 792
    .local v20, selctionAtBoundry:I
    if-nez v20, :cond_23

    .line 793
    if-eqz v16, :cond_22

    .line 794
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 795
    :cond_22
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 797
    :cond_23
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_26

    const/16 v4, 0x16

    move/from16 v0, v17

    if-eq v0, v4, :cond_24

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_26

    .line 798
    :cond_24
    if-eqz v16, :cond_25

    .line 799
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 800
    :cond_25
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 802
    :cond_26
    const/4 v4, 0x2

    move/from16 v0, v20

    if-ne v0, v4, :cond_35

    const/16 v4, 0x13

    move/from16 v0, v17

    if-eq v0, v4, :cond_27

    const/16 v4, 0x15

    move/from16 v0, v17

    if-ne v0, v4, :cond_35

    .line 803
    :cond_27
    if-eqz v16, :cond_28

    .line 804
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 805
    :cond_28
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 808
    .end local v20           #selctionAtBoundry:I
    :cond_29
    const/16 v4, 0x3e

    move/from16 v0, v17

    if-ne v4, v0, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-nez v4, :cond_2b

    .line 809
    if-eqz v16, :cond_2a

    .line 810
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 811
    const-string v4, "InsertText"

    const-string v5, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 812
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 813
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 814
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 815
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 817
    :cond_2a
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 819
    :cond_2b
    const/16 v4, 0x3d

    move/from16 v0, v17

    if-ne v4, v0, :cond_2e

    .line 820
    if-eqz v16, :cond_2d

    .line 821
    const-string v4, "InsertText"

    const-string v5, "    "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 822
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 823
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 825
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-ne v4, v5, :cond_2c

    .line 826
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 828
    :cond_2c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 830
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2d
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 832
    :cond_2e
    const/16 v4, 0x42

    move/from16 v0, v17

    if-eq v0, v4, :cond_2f

    const/16 v4, 0xa0

    move/from16 v0, v17

    if-ne v0, v4, :cond_31

    .line 833
    :cond_2f
    if-eqz v16, :cond_30

    .line 834
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 835
    const-string v4, "InsertText"

    const-string v5, "\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 836
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 837
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 838
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 839
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 841
    :cond_30
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 843
    :cond_31
    const/16 v4, 0x71

    move/from16 v0, v17

    if-eq v0, v4, :cond_32

    const/16 v4, 0x72

    move/from16 v0, v17

    if-ne v0, v4, :cond_33

    .line 844
    :cond_32
    invoke-super/range {p0 .. p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 846
    :cond_33
    const/16 v4, 0x1d

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x1f

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x32

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x34

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x36

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x35

    move/from16 v0, v17

    if-ne v0, v4, :cond_35

    :cond_34
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_35

    if-nez v16, :cond_35

    .line 850
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCtrlPressed and keyCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    sparse-switch v17, :sswitch_data_0

    .line 894
    :cond_35
    if-eqz v19, :cond_36

    .line 895
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 896
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 898
    .restart local v3       #imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    goto/16 :goto_3

    .line 854
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canSelectAll()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 855
    const/16 v18, 0x0

    .line 856
    .local v18, result:Z
    const v4, 0x102001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v18

    .line 857
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    move/from16 v19, v18

    .line 858
    goto/16 :goto_3

    .line 863
    .end local v18           #result:Z
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 864
    const v4, 0x1020021

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 869
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 870
    const v4, 0x1020022

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 875
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 876
    const v4, 0x1020020

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 881
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canUndo()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 882
    const/16 v4, 0x2711

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 887
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canRedo()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 888
    const/16 v4, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 901
    :cond_36
    invoke-super/range {p0 .. p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 852
    nop

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_1
        0x32 -> :sswitch_2
        0x34 -> :sswitch_3
        0x35 -> :sswitch_5
        0x36 -> :sswitch_4
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 941
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 942
    const/4 v0, 0x1

    return v0
.end method

.method public doResizeImage(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2833
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2837
    :cond_0
    :goto_0
    return-void

    .line 2835
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2836
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x221

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public drawSelectionControl()V
    .locals 1

    .prologue
    .line 5393
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 5394
    return-void
.end method

.method public drawSelectionControl(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 5410
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5416
    :cond_0
    :goto_0
    return-void

    .line 5412
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5413
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5415
    :cond_2
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(I)V

    goto :goto_0
.end method

.method public drawSelectionControl(Z)V
    .locals 3
    .parameter "isTextChanged"

    .prologue
    const/4 v2, 0x1

    .line 5397
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5407
    :cond_0
    :goto_0
    return-void

    .line 5399
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5400
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5402
    :cond_2
    if-ne v2, p1, :cond_0

    .line 5404
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_0
.end method

.method public dropTheDraggedText(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3901
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3907
    :cond_0
    :goto_0
    return-void

    .line 3903
    :cond_1
    const-string v0, "HtmlComposerView"

    const-string v1, "dropTheDraggedText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3905
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3906
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x22d

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public enableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2920
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 2921
    invoke-direct {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 2922
    return-void
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "command"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 2840
    const-string v2, "Insert"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2842
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2843
    .local v0, length:I
    invoke-direct {p0, v0}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2845
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v5, 0x104076a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v5, 0x104076b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2858
    .end local v0           #length:I
    :goto_0
    return v1

    .line 2849
    .restart local v0       #length:I
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_1

    .line 2852
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 2857
    .end local v0           #length:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2858
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public executeAlignCenter()V
    .locals 2

    .prologue
    .line 1928
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1929
    const-string v0, "JustifyCenter"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1930
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1931
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1932
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->onAlignSelectedImageOutlineRectUpdate()V

    .line 1933
    return-void
.end method

.method public executeAlignLeft()V
    .locals 2

    .prologue
    .line 1912
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1913
    const-string v0, "JustifyLeft"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1914
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1915
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1916
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->onAlignSelectedImageOutlineRectUpdate()V

    .line 1917
    return-void
.end method

.method public executeAlignRight()V
    .locals 2

    .prologue
    .line 1920
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1921
    const-string v0, "JustifyRight"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1922
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1923
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1924
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->onAlignSelectedImageOutlineRectUpdate()V

    .line 1925
    return-void
.end method

.method public executeHyperlink(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 1900
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1901
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1902
    const-string v0, "CreateLink"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1907
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1908
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1909
    return-void

    .line 1905
    :cond_0
    const-string v0, "Unlink"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public executeIndent()V
    .locals 2

    .prologue
    .line 1850
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1851
    const-string v0, "Indent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1852
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1853
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1854
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 1855
    return-void
.end method

.method public executeOutdent()V
    .locals 2

    .prologue
    .line 1858
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1859
    const-string v0, "Outdent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1860
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1861
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1862
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 1863
    return-void
.end method

.method public executeUnLink()V
    .locals 2

    .prologue
    .line 1894
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1895
    const-string v0, "UnLink"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1896
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1897
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1898
    return-void
.end method

.method public getBodyHTML()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2925
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2942
    :cond_0
    :goto_0
    return-object v2

    .line 2927
    :cond_1
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2928
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 2929
    :try_start_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2930
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x200

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2935
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2940
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2942
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 2932
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 2940
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2936
    :catch_0
    move-exception v0

    .line 2937
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getCaretState()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 5447
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5460
    :cond_0
    :goto_0
    return v2

    .line 5449
    :cond_1
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v3, v2}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5450
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v1

    .line 5451
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x20c

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5453
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5458
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5459
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCaretState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5460
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 5454
    :catch_0
    move-exception v0

    .line 5455
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5456
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5458
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public declared-synchronized getComposingState()Z
    .locals 1

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConetextmenuVisibility()Z
    .locals 1

    .prologue
    .line 2946
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    return v0
.end method

.method public getContentX(I)I
    .locals 3
    .parameter "RawX"

    .prologue
    .line 5872
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mScrollX:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 5873
    .local v0, contentX:I
    return v0
.end method

.method public getContentY(I)I
    .locals 3
    .parameter "RawY"

    .prologue
    .line 5877
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mScrollY:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v0

    .line 5878
    .local v0, contentY:I
    return v0
.end method

.method public getCurrentFontSize()I
    .locals 4

    .prologue
    .line 2951
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2952
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2953
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x222

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2956
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2960
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2962
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 2957
    :catch_0
    move-exception v0

    .line 2958
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2960
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getCurrentFontValue()I
    .locals 4

    .prologue
    .line 2967
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2968
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2969
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x225

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2972
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2976
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2978
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 2973
    :catch_0
    move-exception v0

    .line 2974
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2976
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getCursorPressed()Z
    .locals 1

    .prologue
    .line 2983
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsPressingHandle:Z

    return v0
.end method

.method public getCursorRect(Z)Landroid/graphics/Rect;
    .locals 6
    .parameter "giveContentRect"

    .prologue
    .line 5419
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 5434
    :goto_0
    return-object v4

    .line 5421
    :cond_1
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v4

    .line 5422
    .local v1, paramArray:[Ljava/lang/Object;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5423
    .local v2, rect:Landroid/graphics/Rect;
    new-instance v3, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-direct {v3, p0, v1, v2}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5424
    .local v3, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    monitor-enter v3

    .line 5425
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    const/16 v5, 0x209

    invoke-virtual {v4, v5, v3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5428
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5433
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5434
    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_0

    .line 5429
    :catch_0
    move-exception v0

    .line 5430
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5431
    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5433
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public getHTML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2987
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    .line 2988
    .local v0, text:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 2992
    :goto_0
    return-object v1

    .line 2989
    :cond_0
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2990
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2992
    goto :goto_0
.end method

.method public getImageSize(II)Landroid/graphics/Rect;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2620
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2640
    :goto_0
    return-object v4

    .line 2622
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2624
    .local v2, rect:Landroid/graphics/Rect;
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 2625
    .local v1, paramArray:[Ljava/lang/Object;
    new-instance v3, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-direct {v3, p0, v1, v2}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2626
    .local v3, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    monitor-enter v3

    .line 2627
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2628
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    const/16 v5, 0x226

    invoke-virtual {v4, v5, v3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2633
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2638
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2640
    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_0

    .line 2630
    :cond_2
    :try_start_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    monitor-exit v3

    goto :goto_0

    .line 2638
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 2634
    :catch_0
    move-exception v0

    .line 2635
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 2996
    iget v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    return v0
.end method

.method public getMailContent()Landroid/webkit/WebHTMLMarkupData;
    .locals 4

    .prologue
    .line 3000
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    .line 3001
    .local v0, data:Landroid/webkit/WebHTMLMarkupData;
    if-nez v0, :cond_1

    .line 3009
    :cond_0
    :goto_0
    return-object v0

    .line 3003
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebHTMLMarkupData;->HTMLFragment()Ljava/lang/String;

    move-result-object v1

    .line 3004
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3005
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3006
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3007
    invoke-virtual {v0, v1}, Landroid/webkit/WebHTMLMarkupData;->setHTMLFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMailHTML()Landroid/webkit/WebHTMLMarkupData;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3013
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3031
    :cond_0
    :goto_0
    return-object v3

    .line 3015
    :cond_1
    new-instance v1, Landroid/webkit/WebHTMLMarkupData;

    invoke-direct {v1}, Landroid/webkit/WebHTMLMarkupData;-><init>()V

    .line 3016
    .local v1, mailMarkupData:Landroid/webkit/WebHTMLMarkupData;
    new-instance v2, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v3, v1}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3017
    .local v2, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    monitor-enter v2

    .line 3018
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3019
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x206

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3024
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3029
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3031
    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebHTMLMarkupData;

    goto :goto_0

    .line 3021
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 3029
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3025
    :catch_0
    move-exception v0

    .line 3026
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3035
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3051
    :cond_0
    :goto_0
    return-object v2

    .line 3036
    :cond_1
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3037
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 3038
    :try_start_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3039
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x202

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3044
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3049
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3051
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 3041
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3049
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3045
    :catch_0
    move-exception v0

    .line 3046
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3055
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedImageRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 2644
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2669
    :goto_0
    return-object v4

    .line 2645
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2646
    .local v1, rect:Landroid/graphics/Rect;
    const/4 v3, -0x1

    .line 2647
    .local v3, setValue:I
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 2648
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 2649
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 2650
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 2652
    new-instance v2, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v1}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2653
    .local v2, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isComposerImageTouched()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2654
    monitor-enter v2

    .line 2655
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2656
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    const/16 v5, 0x227

    invoke-virtual {v4, v5, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2661
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2666
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2669
    :cond_2
    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_0

    .line 2658
    :cond_3
    :try_start_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 2666
    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 2662
    :catch_0
    move-exception v0

    .line 2663
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2874
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    .line 3112
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->endOffset:I

    return v0
.end method

.method public getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 3116
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Landroid/webkit/HtmlComposerView$SelectionOffset;

    invoke-direct {v3, p0, v4, v4}, Landroid/webkit/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkit/HtmlComposerView;II)V

    .line 3135
    :goto_0
    return-object v3

    .line 3118
    :cond_1
    new-instance v2, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v5, v5}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3119
    .local v2, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    monitor-enter v2

    .line 3120
    :try_start_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3121
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x201

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3126
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3131
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3133
    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 3135
    .local v1, pnt:Landroid/graphics/Point;
    new-instance v3, Landroid/webkit/HtmlComposerView$SelectionOffset;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, p0, v4, v5}, Landroid/webkit/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkit/HtmlComposerView;II)V

    goto :goto_0

    .line 3123
    .end local v1           #pnt:Landroid/graphics/Point;
    :cond_2
    :try_start_3
    new-instance v3, Landroid/webkit/HtmlComposerView$SelectionOffset;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, p0, v4, v5}, Landroid/webkit/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkit/HtmlComposerView;II)V

    monitor-exit v2

    goto :goto_0

    .line 3131
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3127
    :catch_0
    move-exception v0

    .line 3128
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getSelectionSec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2882
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 3139
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->startOffset:I

    return v0
.end method

.method public getShowSingleCursorHandlerState()Z
    .locals 1

    .prologue
    .line 3143
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    return v0
.end method

.method public getStateInRichlyEditableText()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3092
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3108
    :cond_0
    :goto_0
    return v2

    .line 3094
    :cond_1
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3095
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 3096
    :try_start_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3097
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21e

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3102
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3106
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3108
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 3099
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3106
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3103
    :catch_0
    move-exception v0

    .line 3104
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3059
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v1

    .line 3060
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    .line 3061
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 3062
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    aget-char v0, v2, v3

    .line 3063
    .local v0, chrVal:I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    const-string v1, ""

    .line 3064
    :cond_1
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getText() Not Null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    .end local v0           #chrVal:I
    :cond_2
    return-object v1
.end method

.method public getTextAroundCursor(ILandroid/webkit/HtmlComposerView$CursorDirection;)Ljava/lang/String;
    .locals 6
    .parameter "n"
    .parameter "cursorDirection"

    .prologue
    const/4 v3, 0x0

    .line 3070
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3088
    :cond_0
    :goto_0
    return-object v3

    .line 3072
    :cond_1
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p2, v1, v4

    .line 3073
    .local v1, paramArray:[Ljava/lang/Object;
    new-instance v2, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v1, v3}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3074
    .local v2, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v2

    .line 3075
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3076
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x1fd

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3081
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3086
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3088
    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 3078
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 3086
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3082
    :catch_0
    move-exception v0

    .line 3083
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;
    .locals 1

    .prologue
    .line 2886
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v0

    return-object v0
.end method

.method protected handle_onTouchEvent(IIIII)Z
    .locals 18
    .parameter "action"
    .parameter "contentX"
    .parameter "contentY"
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    .line 1442
    packed-switch p1, :pswitch_data_0

    .line 1657
    :cond_0
    :goto_0
    const/4 v15, 0x1

    :goto_1
    return v15

    .line 1444
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    .line 1446
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1447
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->delayedUpdateOutlineDrawRect()V

    .line 1448
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->handle_ACTION_CANCEL()V

    goto :goto_0

    .line 1453
    :pswitch_1
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 1454
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    .line 1456
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1457
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v8

    .line 1461
    .local v8, imagerect:Landroid/graphics/Rect;
    iget v15, v8, Landroid/graphics/Rect;->left:I

    move/from16 v0, p2

    if-le v0, v15, :cond_2

    iget v15, v8, Landroid/graphics/Rect;->right:I

    move/from16 v0, p2

    if-ge v0, v15, :cond_2

    iget v15, v8, Landroid/graphics/Rect;->top:I

    move/from16 v0, p3

    if-le v0, v15, :cond_2

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p3

    if-ge v0, v15, :cond_2

    .line 1462
    const-string v15, "HtmlComposerView"

    const-string v16, " image is touched and can be moved "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/HtmlComposerView;->isTouchedImage:Z

    .line 1464
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    .line 1470
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/HtmlComposerView;->handle_ACTION_DOWN(IIII)V

    .line 1471
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 1472
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    .line 1475
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/webkit/HtmlComposerView;->originalWidth:I

    .line 1476
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/webkit/HtmlComposerView;->originalHeight:I

    goto/16 :goto_0

    .line 1466
    :cond_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/HtmlComposerView;->isTouchedImage:Z

    .line 1467
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    goto :goto_2

    .line 1484
    .end local v8           #imagerect:Landroid/graphics/Rect;
    :pswitch_2
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1486
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/HtmlComposerView;->mConversionFactorX:I

    sub-int v15, p2, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/webkit/HtmlComposerView;->mContentX:I

    .line 1487
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/HtmlComposerView;->mConversionFactorY:I

    sub-int v15, p3, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/webkit/HtmlComposerView;->mContentY:I

    .line 1488
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->handle_ACTION_MOVE(II)V

    .line 1489
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    goto/16 :goto_0

    .line 1495
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v15}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v15

    invoke-virtual {v15}, Landroid/webkit/WebSettingsClassic;->getEditableSupport()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1496
    const-string v15, "HtmlComposerView"

    const-string v16, "making selection set to true"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    if-nez v15, :cond_6

    .line 1499
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 1500
    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getComposingState()Z

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 1501
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 1502
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1506
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1510
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v11

    .line 1512
    .local v11, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-nez v15, :cond_7

    iget v15, v11, Landroid/graphics/Rect;->left:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    iget v15, v11, Landroid/graphics/Rect;->top:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    .line 1515
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getSelectedImageUri()Ljava/lang/String;

    move-result-object v7

    .line 1517
    .local v7, imageUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    if-eqz v15, :cond_5

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/webkit/HtmlComposerView$InsertedImageHitListener;->onIsSAMMFile(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 1519
    const-string v15, "HtmlComposerView"

    const-string v16, "ACTION_UP: Is a SAMM File"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 1522
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1524
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 1525
    .local v9, msg:Landroid/os/Message;
    const/16 v15, 0x502

    iput v15, v9, Landroid/os/Message;->what:I

    .line 1526
    iput-object v7, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1528
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    if-eqz v15, :cond_4

    .line 1529
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    invoke-virtual {v15, v9}, Landroid/webkit/HtmlComposerView$HCWHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1532
    :cond_4
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1534
    .end local v9           #msg:Landroid/os/Message;
    :cond_5
    const-string v15, "HtmlComposerView"

    const-string v16, "ACTION_UP: Is not a SAMM File"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v11}, Landroid/webkit/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 1539
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1653
    .end local v7           #imageUri:Ljava/lang/String;
    .end local v11           #rect:Landroid/graphics/Rect;
    :cond_6
    :goto_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/HtmlComposerView;->mDoubleTapped:Z

    goto/16 :goto_0

    .line 1541
    .restart local v11       #rect:Landroid/graphics/Rect;
    :cond_7
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1544
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 1545
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->handle_ACTION_UP(II)V

    .line 1546
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1551
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v6

    .line 1552
    .local v6, finalWidth:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v5

    .line 1554
    .local v5, finalHeight:I
    const/4 v12, 0x0

    .line 1555
    .local v12, sameImageFlag:Z
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v10

    .line 1557
    .local v10, oldImageRect:Landroid/graphics/Rect;
    iget v15, v11, Landroid/graphics/Rect;->left:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    iget v15, v11, Landroid/graphics/Rect;->top:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    .line 1558
    iget v15, v10, Landroid/graphics/Rect;->left:I

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    iget v15, v10, Landroid/graphics/Rect;->right:I

    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    iget v15, v10, Landroid/graphics/Rect;->top:I

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    iget v15, v10, Landroid/graphics/Rect;->bottom:I

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 1560
    const/4 v12, 0x1

    .line 1564
    :cond_9
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 1565
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/HtmlComposerView;->originalWidth:I

    if-ne v15, v6, :cond_b

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/HtmlComposerView;->originalHeight:I

    if-ne v15, v5, :cond_b

    .line 1566
    const-string v15, "HtmlComposerView"

    const-string v16, "Image isn\'t going to resize "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    goto/16 :goto_3

    .line 1568
    :cond_b
    const-string v15, "HtmlComposerView"

    const-string v16, "doResizeImage called - Image is going to resize "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v14

    .line 1572
    .local v14, selectedImgRect:Landroid/graphics/Rect;
    iget v15, v14, Landroid/graphics/Rect;->left:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_c

    iget v15, v14, Landroid/graphics/Rect;->top:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_c

    .line 1573
    mul-int/lit8 v15, v6, 0x64

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x4120

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_d

    mul-int/lit8 v15, v5, 0x64

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x4120

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_d

    .line 1574
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Landroid/webkit/HtmlComposerView;->doResizeImage(II)V

    .line 1575
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1577
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->delayedUpdateOutlineDrawRect()V

    .line 1583
    :cond_c
    :goto_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 1584
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/HtmlComposerView;->isTouchedImage:Z

    .line 1586
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_4

    .line 1579
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Landroid/webkit/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    goto :goto_5

    .line 1590
    .end local v14           #selectedImgRect:Landroid/graphics/Rect;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    if-nez v15, :cond_f

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 1591
    const-string v15, "InsertHTML"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/webkit/HtmlComposerView;->insertImageContent(Ljava/lang/String;)V

    .line 1593
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1594
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    .line 1595
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 1596
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 1597
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/HtmlComposerView;->isTouchedImage:Z

    .line 1599
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearSelection()V

    .line 1601
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto/16 :goto_4

    .line 1604
    :cond_f
    iget v15, v11, Landroid/graphics/Rect;->left:I

    move/from16 v0, p2

    if-lt v0, v15, :cond_10

    iget v15, v11, Landroid/graphics/Rect;->right:I

    move/from16 v0, p2

    if-gt v0, v15, :cond_10

    iget v15, v11, Landroid/graphics/Rect;->top:I

    move/from16 v0, p3

    if-lt v0, v15, :cond_10

    iget v15, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p3

    if-le v0, v15, :cond_11

    .line 1606
    :cond_10
    const-string v15, "HtmlComposerView"

    const-string v16, "User taps outside of an image rect. We will release the selection"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->mDoubleTapped:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->isCursorAtBoundary(II)I

    move-result v15

    if-nez v15, :cond_a

    .line 1609
    const-string v15, "HtmlComposerView"

    const-string v16, "Boundary is not touched"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 1611
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1612
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    goto/16 :goto_4

    .line 1615
    :cond_11
    iget v15, v11, Landroid/graphics/Rect;->left:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_a

    iget v15, v11, Landroid/graphics/Rect;->top:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_a

    if-nez v12, :cond_a

    .line 1617
    const-string v15, "HtmlComposerView"

    const-string v16, "A other image is selected."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v13

    .line 1621
    .local v13, selectedImageRect:Landroid/graphics/Rect;
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getSelectedImageUri()Ljava/lang/String;

    move-result-object v7

    .line 1622
    .restart local v7       #imageUri:Ljava/lang/String;
    const-string v15, "HtmlComposerView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Selected Image\'s url = ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    if-eqz v15, :cond_13

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/webkit/HtmlComposerView$InsertedImageHitListener;->onIsSAMMFile(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 1625
    const-string v15, "HtmlComposerView"

    const-string v16, "ACTION_UP: Is a SAMM File"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 1628
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1630
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 1631
    .restart local v9       #msg:Landroid/os/Message;
    const/16 v15, 0x502

    iput v15, v9, Landroid/os/Message;->what:I

    .line 1632
    iput-object v7, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1634
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    if-eqz v15, :cond_12

    .line 1635
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    invoke-virtual {v15, v9}, Landroid/webkit/HtmlComposerView$HCWHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1638
    :cond_12
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1640
    .end local v9           #msg:Landroid/os/Message;
    :cond_13
    const-string v15, "HtmlComposerView"

    const-string v16, "ACTION_UP: Is not a SAMM File"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget v15, v13, Landroid/graphics/Rect;->left:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_a

    iget v15, v13, Landroid/graphics/Rect;->right:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_a

    .line 1645
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 1442
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public hideSingleCursorHandler()V
    .locals 1

    .prologue
    .line 3148
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 3149
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3150
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 3151
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    .line 3152
    return-void
.end method

.method public htmlLength()I
    .locals 1

    .prologue
    .line 3155
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public initComposerState()V
    .locals 1

    .prologue
    .line 3159
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3160
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3161
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3163
    :cond_0
    return-void
.end method

.method initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "context"
    .parameter "imagetRect1"

    .prologue
    const/4 v9, -0x1

    const/high16 v8, 0x4000

    .line 4327
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    .line 4328
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 4330
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 4331
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 4332
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    .line 4333
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 4334
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 4335
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 4336
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 4338
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    .line 4339
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    .line 4340
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 4341
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 4342
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 4343
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 4346
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lt_height:I

    .line 4347
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lt_width:I

    .line 4350
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rt_height:I

    .line 4351
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rt_width:I

    .line 4353
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lb_height:I

    .line 4354
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lb_width:I

    .line 4357
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 4358
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 4360
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 4361
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 4363
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rm_height:I

    .line 4364
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rm_width:I

    .line 4367
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lm_height:I

    .line 4368
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lm_width:I

    .line 4370
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->bm_height:I

    .line 4371
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->bm_width:I

    .line 4373
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 4375
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    .line 4377
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4378
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4379
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 4380
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 4381
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 4382
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 4383
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 4385
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 4386
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 4387
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 4388
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 4390
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4392
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 4393
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mTouchSlop:I

    .line 4395
    iput v9, p0, Landroid/webkit/HtmlComposerView;->mContentX:I

    .line 4396
    iput v9, p0, Landroid/webkit/HtmlComposerView;->mContentY:I

    .line 4397
    return-void
.end method

.method public insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)Z
    .locals 4
    .parameter "contentFragment"
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 3166
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v0

    .line 3168
    .local v0, selectionType:I
    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v2, :cond_1

    .line 3169
    const-string v2, "MoveToBeginningOfDocument"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3174
    :cond_0
    :goto_0
    const-string v2, "InsertHTML"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 3183
    :goto_1
    return v1

    .line 3171
    :cond_1
    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v2, :cond_0

    .line 3172
    const-string v2, "MoveToEndOfDocument"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 3177
    :cond_2
    if-ne v1, v0, :cond_3

    .line 3178
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 3182
    :goto_2
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto :goto_1

    .line 3180
    :cond_3
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_2
.end method

.method public insertImage(Ljava/lang/String;IIZ)V
    .locals 2
    .parameter "url"
    .parameter "widthInPixel"
    .parameter "heightInPixel"
    .parameter "bEditing"

    .prologue
    .line 3224
    const/4 v0, 0x1

    if-ne v0, p4, :cond_1

    .line 3225
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffsetImage()V

    .line 3226
    const-string v0, "Delete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->clearCache(Z)V

    .line 3228
    if-eqz p1, :cond_0

    .line 3229
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)Z

    .line 3234
    :cond_0
    :goto_0
    return-void

    .line 3232
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public insertImage(Ljava/lang/String;Z)V
    .locals 2
    .parameter "url"
    .parameter "bEditing"

    .prologue
    .line 3273
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 3274
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffsetImage()V

    .line 3275
    const-string v0, "Delete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->clearCache(Z)V

    .line 3277
    if-eqz p1, :cond_0

    .line 3278
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)Z

    .line 3283
    :cond_0
    :goto_0
    return-void

    .line 3281
    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public insertImage(Ljava/lang/String;)Z
    .locals 6
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3238
    if-nez p1, :cond_1

    .line 3262
    :cond_0
    :goto_0
    return v2

    .line 3240
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3242
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3244
    .local v1, selectionType:I
    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<img src="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3245
    .local v0, imgMarkup:Ljava/lang/String;
    const-string v4, "InsertHTML"

    invoke-virtual {p0, v4, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3252
    if-ne v3, v1, :cond_2

    .line 3253
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 3257
    :goto_1
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3260
    const-string v2, "image inserted"

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 3261
    const v2, 0x102040a

    sput v2, Landroid/webkit/HtmlComposerView;->operSel:I

    move v2, v3

    .line 3262
    goto :goto_0

    .line 3255
    :cond_2
    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_1
.end method

.method public insertImage(Ljava/lang/String;II)Z
    .locals 6
    .parameter "url"
    .parameter "widthInPixel"
    .parameter "heightInPixel"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3187
    if-nez p1, :cond_1

    .line 3211
    :cond_0
    :goto_0
    return v2

    .line 3189
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3191
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3193
    .local v1, selectionType:I
    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<img src="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3194
    .local v0, imgMarkup:Ljava/lang/String;
    const-string v4, "InsertHTML"

    invoke-virtual {p0, v4, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3201
    if-ne v3, v1, :cond_2

    .line 3202
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 3206
    :goto_1
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3209
    const-string v2, "image inserted"

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 3210
    const v2, 0x102040a

    sput v2, Landroid/webkit/HtmlComposerView;->operSel:I

    move v2, v3

    .line 3211
    goto :goto_0

    .line 3204
    :cond_2
    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_1
.end method

.method public insertOrderedList()V
    .locals 2

    .prologue
    .line 1866
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1867
    const-string v0, "InsertOrderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1868
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1869
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1870
    return-void
.end method

.method public insertSubscript()V
    .locals 2

    .prologue
    .line 1879
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1880
    const-string v0, "Superscript"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1881
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1882
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1883
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 1884
    return-void
.end method

.method public insertSuperscript()V
    .locals 2

    .prologue
    .line 1887
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1888
    const-string v0, "Subscript"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1889
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1890
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1891
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 1892
    return-void
.end method

.method public insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkit/HtmlComposerView$SelectionOffset;
    .locals 5
    .parameter "content"
    .parameter "newCursorPosition"
    .parameter "composing"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;",
            ">;)",
            "Landroid/webkit/HtmlComposerView$SelectionOffset;"
        }
    .end annotation

    .prologue
    .local p4, spanData:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;>;"
    const/4 v3, -0x1

    .line 3288
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Landroid/webkit/HtmlComposerView$SelectionOffset;

    invoke-direct {v2, p0, v3, v3}, Landroid/webkit/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkit/HtmlComposerView;II)V

    .line 3309
    :goto_0
    return-object v2

    .line 3290
    :cond_1
    new-instance v1, Landroid/webkit/WebViewCore$EditableParams;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewCore$EditableParams;-><init>(Landroid/webkit/WebViewCore;)V

    .line 3291
    .local v1, editableParams:Landroid/webkit/WebViewCore$EditableParams;
    iput-object p1, v1, Landroid/webkit/WebViewCore$EditableParams;->content:Ljava/lang/String;

    .line 3292
    iput p2, v1, Landroid/webkit/WebViewCore$EditableParams;->newCursorPosition:I

    .line 3293
    iput-boolean p3, v1, Landroid/webkit/WebViewCore$EditableParams;->composing:Z

    .line 3294
    iput-object p4, v1, Landroid/webkit/WebViewCore$EditableParams;->spanData:Ljava/util/Vector;

    .line 3296
    monitor-enter v1

    .line 3297
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3298
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x218

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3303
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3307
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3309
    new-instance v2, Landroid/webkit/HtmlComposerView$SelectionOffset;

    iget v3, v1, Landroid/webkit/WebViewCore$EditableParams;->startOffset:I

    iget v4, v1, Landroid/webkit/WebViewCore$EditableParams;->endOffset:I

    invoke-direct {v2, p0, v3, v4}, Landroid/webkit/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkit/HtmlComposerView;II)V

    goto :goto_0

    .line 3300
    :cond_2
    :try_start_3
    new-instance v2, Landroid/webkit/HtmlComposerView$SelectionOffset;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, p0, v3, v4}, Landroid/webkit/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkit/HtmlComposerView;II)V

    monitor-exit v1

    goto :goto_0

    .line 3307
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3304
    :catch_0
    move-exception v0

    .line 3305
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public insertUnorderedList()V
    .locals 2

    .prologue
    .line 1873
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1874
    const-string v0, "InsertUnorderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1875
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1876
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1877
    return-void
.end method

.method public invokeTexttoSpeech(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 3314
    const/4 v1, 0x0

    .local v1, beforeStr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 3316
    .local v0, aftStr:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "HtmlComposerView"

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    :cond_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 3320
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 3323
    :cond_2
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 3325
    :cond_3
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 3328
    :cond_4
    const v2, 0x1020022

    if-ne p1, v2, :cond_a

    .line 3330
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3332
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3342
    :goto_0
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 3343
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "paste operations "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    :cond_5
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 3382
    :cond_6
    :goto_1
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2, v0}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 3383
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 3384
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->textToSpeech(II)V

    .line 3385
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 3386
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 3387
    const/4 v2, 0x0

    sput v2, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 3388
    :cond_7
    :goto_2
    return-void

    .line 3336
    :cond_8
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3337
    const-string v0, "Images inserted"

    goto :goto_0

    .line 3339
    :cond_9
    const-string v0, "Images"

    goto :goto_0

    .line 3348
    :cond_a
    const v2, 0x1020020

    if-ne p1, v2, :cond_b

    .line 3350
    const-string v0, ""

    .line 3351
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    goto :goto_1

    .line 3353
    :cond_b
    const v2, 0x1020408

    if-ne p1, v2, :cond_c

    .line 3355
    const-string v0, ""

    .line 3356
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 3358
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 3361
    :cond_c
    const v2, 0x102040a

    if-ne p1, v2, :cond_d

    .line 3363
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 3364
    const-string v1, ""

    goto :goto_1

    .line 3366
    :cond_d
    const/16 v2, 0xf

    if-ne p1, v2, :cond_7

    .line 3369
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3371
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 3372
    const-string v2, "HtmlComposerView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    :cond_e
    const-string v1, ""

    goto :goto_1
.end method

.method public isBodyEmpty()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3390
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3408
    :cond_0
    :goto_0
    return v3

    .line 3392
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3393
    .local v0, bodyEmpty:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3394
    .local v2, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 3395
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3396
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x212

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3401
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3406
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3408
    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 3398
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 3406
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3402
    :catch_0
    move-exception v1

    .line 3403
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public isComposerImageTouched()Z
    .locals 1

    .prologue
    .line 5868
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    return v0
.end method

.method public isInActionMove()Z
    .locals 1

    .prologue
    .line 2870
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    .line 3416
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3417
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMagnifierVisible()Z
    .locals 1

    .prologue
    .line 3421
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-eqz v0, :cond_0

    .line 3422
    const/4 v0, 0x1

    .line 3424
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchedOutside(II)Z
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    .line 2890
    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2912
    :cond_0
    :goto_0
    return v5

    .line 2892
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2894
    .local v3, rect:Landroid/graphics/Rect;
    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    .line 2896
    .local v2, paramArray:[Ljava/lang/Object;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2897
    .local v1, isOutside:Ljava/lang/Boolean;
    new-instance v4, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-direct {v4, p0, v2, v1}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2899
    .local v4, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v4

    .line 2900
    :try_start_0
    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2901
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v5

    const/16 v6, 0x22e

    invoke-virtual {v5, v6, v4}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2906
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2911
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2912
    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    .line 2903
    :cond_2
    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 2911
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 2907
    :catch_0
    move-exception v0

    .line 2908
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v5, "HtmlComposerView"

    const-string v6, "Caught exception while waiting for overrideUrl"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    const-string v5, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public isVisibleCursorHandler(I)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1761
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVisibleCursorHandler : event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    packed-switch p1, :pswitch_data_0

    .line 1809
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1765
    :pswitch_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    .line 1766
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->show()V

    .line 1767
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1771
    :pswitch_2
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 1773
    :pswitch_3
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 1775
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 1776
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1780
    :pswitch_4
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 1781
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    .line 1782
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 1783
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1786
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    if-ne v0, v3, :cond_2

    .line 1787
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    goto :goto_0

    .line 1789
    :cond_2
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->createToolTip()V

    goto :goto_0

    .line 1795
    :pswitch_5
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_3

    .line 1796
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->createToolTip()V

    goto :goto_0

    .line 1800
    :cond_3
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1801
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->show()V

    .line 1802
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1763
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public isVisibleCursorhandlerListener(Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;)V
    .locals 0
    .parameter "mCursorHandlerListener"

    .prologue
    .line 2917
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    .line 2918
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 3428
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public loadHtmlFile(Ljava/lang/String;)V
    .locals 2
    .parameter "htmlFilePath"

    .prologue
    .line 3432
    invoke-direct {p0, p1}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3434
    .local v0, data:Ljava/lang/String;
    const-string v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 3435
    return-void
.end method

.method public moveCursorBegining()V
    .locals 2

    .prologue
    .line 3438
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3439
    const-string v0, "MoveToBeginningOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3440
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3441
    return-void
.end method

.method public moveCursorEnd()V
    .locals 2

    .prologue
    .line 3444
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3445
    const-string v0, "MoveToEndOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3446
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3447
    return-void
.end method

.method public moveCursorSelectionToBeginningOfDocument()V
    .locals 2

    .prologue
    .line 3454
    const-string v0, "MoveToBeginningOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3455
    return-void
.end method

.method public moveCursorSelectionToBeginningOfLine()V
    .locals 2

    .prologue
    .line 3458
    const-string v0, "MoveToBeginningOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3459
    return-void
.end method

.method public moveCursorSelectionToEndOfDocument()V
    .locals 2

    .prologue
    .line 3462
    const-string v0, "MoveToEndOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3463
    return-void
.end method

.method public moveCursorSelectionToEndOfLine()V
    .locals 2

    .prologue
    .line 3466
    const-string v0, "MoveToRightEndOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3467
    return-void
.end method

.method public moveCursorSelectionToPageDown()V
    .locals 2

    .prologue
    .line 3494
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3495
    const-string v0, "MovePageDownAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3496
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3497
    return-void
.end method

.method public moveCursorSelectionToPageUp()V
    .locals 2

    .prologue
    .line 3500
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3501
    const-string v0, "MovePageUpAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3502
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3503
    return-void
.end method

.method public moveCursorToBeginningOfLine()V
    .locals 2

    .prologue
    .line 3470
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3471
    const-string v0, "MoveToBeginningOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3472
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3473
    return-void
.end method

.method public moveCursorToEndOfLine()V
    .locals 2

    .prologue
    .line 3476
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3477
    const-string v0, "MoveToEndOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3478
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3479
    return-void
.end method

.method public moveCursorToPageDown()V
    .locals 2

    .prologue
    .line 3482
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3483
    const-string v0, "MovePageDown"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3484
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3485
    return-void
.end method

.method public moveCursorToPageUp()V
    .locals 2

    .prologue
    .line 3488
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3489
    const-string v0, "MovePageUp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3490
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3491
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 455
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 457
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    if-nez v1, :cond_0

    .line 458
    new-instance v1, Landroid/webkit/HtmlComposerView$StylusEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkit/HtmlComposerView$StylusEventListener;-><init>(Landroid/webkit/HtmlComposerView;Landroid/webkit/HtmlComposerView$1;)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    .line 459
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewTreeObserver;->addOnStylusButtonEventListener(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    .line 462
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 463
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 953
    const/4 v0, 0x1

    return v0
.end method

.method public onContextMenuItem(I)Z
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 499
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 501
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    if-ne v5, v3, :cond_0

    .line 502
    const-string v3, "HtmlComposerView"

    const-string v6, "onContextMenuItem To hide Cursor handler"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 506
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 508
    sparse-switch p1, :sswitch_data_0

    .line 644
    :cond_1
    :goto_0
    return v4

    .line 512
    :sswitch_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 513
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->selectAllSec()Z

    .line 515
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v3, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 516
    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    iput v3, v6, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 517
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 518
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 519
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 521
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 522
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    move v4, v5

    .line 523
    goto :goto_0

    :cond_2
    move v3, v4

    .line 516
    goto :goto_1

    .line 527
    :sswitch_1
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 528
    .local v0, cursurRect:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 530
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/webkit/WebViewClassic;->setTextSelecitonManualAtContentPoint(II)Z

    .line 531
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 533
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    move v4, v5

    .line 534
    goto :goto_0

    .line 537
    .end local v0           #cursurRect:Landroid/graphics/Rect;
    :sswitch_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 538
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 539
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 540
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 541
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 542
    const v3, 0x1020020

    sput v3, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 543
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 545
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v3, :cond_3

    .line 547
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 549
    const-string v3, " image "

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 550
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 551
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iput-object v8, v3, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    :cond_3
    move v4, v5

    .line 553
    goto/16 :goto_0

    .line 556
    :sswitch_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 558
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->selectAllSec()Z

    .line 559
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 560
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 561
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 562
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 563
    const v3, 0x1020408

    sput v3, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 565
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v3, :cond_4

    .line 567
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 569
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 570
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iput-object v8, v3, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 571
    const-string v3, " images "

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    :cond_4
    move v4, v5

    .line 574
    goto/16 :goto_0

    .line 577
    :sswitch_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    .line 578
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->setCursorFromRangeSelection()V

    .line 579
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 580
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    move v4, v5

    .line 581
    goto/16 :goto_0

    .line 586
    :sswitch_5
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->selectAllSec()Z

    .line 588
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    .line 589
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->setCursorFromRangeSelection()V

    move v4, v5

    .line 591
    goto/16 :goto_0

    .line 594
    :sswitch_6
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebClipboard;->getHTMLForCheckingSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 596
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v8, 0x104076a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v8, 0x104076b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 597
    goto/16 :goto_0

    .line 599
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 601
    const-string v3, ""

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 604
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v2

    .line 606
    .local v2, selectionType:I
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->paste()V

    .line 608
    if-ne v5, v2, :cond_7

    .line 609
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 613
    :goto_2
    const v3, 0x1020022

    sput v3, Landroid/webkit/HtmlComposerView;->operSel:I

    move v4, v5

    .line 614
    goto/16 :goto_0

    .line 611
    :cond_7
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_2

    .line 622
    .end local v2           #selectionType:I
    :sswitch_7
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v3, v4}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 623
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebClipboard;->launchClipboardUI()V

    move v4, v5

    .line 624
    goto/16 :goto_0

    .line 627
    :sswitch_8
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 628
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->undo()V

    .line 629
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v4, v5

    .line 630
    goto/16 :goto_0

    .line 633
    :sswitch_9
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->redo()V

    .line 634
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v4, v5

    .line 635
    goto/16 :goto_0

    .line 638
    :sswitch_a
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 639
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_8

    .line 640
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :cond_8
    move v4, v5

    .line 642
    goto/16 :goto_0

    .line 508
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_9
        0x2711 -> :sswitch_8
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_4
        0x1020022 -> :sswitch_6
        0x1020024 -> :sswitch_a
        0x1020028 -> :sswitch_1
        0x1020408 -> :sswitch_3
        0x1020409 -> :sswitch_5
        0x102040a -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5
    .parameter "outAttrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 958
    const-string v1, "HtmlComposerView"

    const-string v2, "onCreateInputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    if-ne v4, v1, :cond_0

    .line 961
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 962
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "allowEmoji"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 963
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 966
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    if-nez v1, :cond_1

    .line 967
    const-string v1, "HtmlComposerView"

    const-string v2, "calling set Caret 0 0 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    invoke-virtual {p0, v3, v3}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 972
    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x4000

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 979
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 980
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 982
    iget v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 983
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 985
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->sendEventToUpdateToolbar()V

    .line 987
    const-string v1, "HtmlComposerView"

    const-string v2, "onCreateInputConnection End"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 467
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 469
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    .line 471
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    .line 474
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 475
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 22
    .parameter "event"

    .prologue
    .line 1006
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    .line 1008
    .local v3, action:I
    packed-switch v3, :pswitch_data_0

    .line 1099
    const/16 v17, 0x0

    :goto_0
    return v17

    .line 1010
    :pswitch_0
    const-string v17, "HtmlComposerView"

    const-string v18, "DragEvent.ACTION_DRAG_STARTED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1013
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->resetSelection()V

    .line 1014
    const/16 v17, 0x1

    goto :goto_0

    .line 1017
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v14

    .line 1019
    .local v14, selectedText:Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 1020
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->saveSelection()V

    .line 1021
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->setCursorFromRangeSelection()V

    .line 1024
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v15

    .line 1025
    .local v15, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v16

    .line 1027
    .local v16, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v17

    const/16 v18, 0x21c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v19, v0

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v20

    invoke-virtual/range {v17 .. v20}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1031
    :cond_2
    const/16 v17, 0x1

    goto :goto_0

    .line 1033
    .end local v14           #selectedText:Ljava/lang/String;
    .end local v15           #x:F
    .end local v16           #y:F
    :pswitch_1
    const-string v17, "HtmlComposerView"

    const-string v18, "DragEvent.ACTION_DRAG_ENTERED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 1035
    :cond_3
    const/16 v17, 0x1

    goto :goto_0

    .line 1037
    :pswitch_2
    const-string v17, "HtmlComposerView"

    const-string v18, "DragEvent.ACTION_DRAG_LOCATION"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v15

    .line 1039
    .restart local v15       #x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v16

    .line 1041
    .restart local v16       #y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v17

    const/16 v18, 0x21c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v19, v0

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v20

    invoke-virtual/range {v17 .. v20}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1043
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 1046
    :cond_4
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1048
    .end local v15           #x:F
    .end local v16           #y:F
    :pswitch_3
    const-string v17, "HtmlComposerView"

    const-string v18, "DragEvent.ACTION_DRAG_EXITED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1051
    :pswitch_4
    const-string v17, "HtmlComposerView"

    const-string v18, "DragEvent.ACTION_DROP"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v15

    .line 1053
    .restart local v15       #x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v16

    .line 1055
    .restart local v16       #y:F
    const/4 v12, 0x0

    .local v12, plainText:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1057
    .local v8, htmlText:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    .line 1058
    .local v6, data:Landroid/content/ClipData;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v7

    .line 1060
    .local v7, description:Landroid/content/ClipDescription;
    if-eqz v6, :cond_5

    if-nez v7, :cond_6

    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1062
    :cond_6
    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    .line 1063
    .local v4, count:I
    invoke-virtual {v7}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v5

    .line 1065
    .local v5, countforDescription:I
    if-eq v4, v5, :cond_7

    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1067
    :cond_7
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v4, :cond_b

    .line 1068
    invoke-virtual {v7, v9}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v11

    .line 1069
    .local v11, mimeType:Ljava/lang/String;
    invoke-virtual {v6, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    .line 1071
    .local v10, item:Landroid/content/ClipData$Item;
    if-eqz v10, :cond_8

    if-eqz v11, :cond_8

    .line 1072
    const/16 v17, 0x1

    const-string v18, "text/plain"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 1073
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 1074
    .local v13, sb:Ljava/lang/StringBuffer;
    if-eqz v12, :cond_9

    .line 1067
    .end local v13           #sb:Ljava/lang/StringBuffer;
    :cond_8
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1075
    .restart local v13       #sb:Ljava/lang/StringBuffer;
    :cond_9
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1076
    goto :goto_2

    .end local v13           #sb:Ljava/lang/StringBuffer;
    :cond_a
    const/16 v17, 0x1

    const-string v18, "text/html"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 1077
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1078
    .restart local v13       #sb:Ljava/lang/StringBuffer;
    if-nez v8, :cond_8

    .line 1079
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 1084
    .end local v10           #item:Landroid/content/ClipData$Item;
    .end local v11           #mimeType:Ljava/lang/String;
    .end local v13           #sb:Ljava/lang/StringBuffer;
    :cond_b
    if-eqz v8, :cond_d

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->dropTheDraggedText(II)V

    .line 1086
    const-string v17, "InsertHtml"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1091
    :cond_c
    :goto_3
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1087
    :cond_d
    if-eqz v12, :cond_c

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->dropTheDraggedText(II)V

    .line 1089
    const-string v17, "InsertHtml"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    .line 1093
    .end local v4           #count:I
    .end local v5           #countforDescription:I
    .end local v6           #data:Landroid/content/ClipData;
    .end local v7           #description:Landroid/content/ClipDescription;
    .end local v8           #htmlText:Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #plainText:Ljava/lang/String;
    .end local v15           #x:F
    .end local v16           #y:F
    :pswitch_5
    const-string v17, "HtmlComposerView"

    const-string v18, "DragEvent.ACTION_DRAG_ENDED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1008
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 995
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget v0, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 996
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HtmlComposerView  --- Ondraw  -clearSelection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 998
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearSelection()V

    .line 1000
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1001
    return-void
.end method

.method public onEditorAction(I)V
    .locals 3
    .parameter "actionCode"

    .prologue
    const/16 v2, 0x82

    .line 3511
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 3512
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 3513
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3514
    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3515
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3522
    .end local v0           #v:Landroid/view/View;
    :cond_0
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3523
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1106
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1108
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 1109
    if-nez p1, :cond_3

    .line 1110
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 1112
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    if-ne v4, v0, :cond_0

    .line 1113
    const-string v0, "HtmlComposerView"

    const-string v1, "onFocusChanged To hide Cursor handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 1115
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->bSCHvisibleonFocus:Z

    .line 1118
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 1120
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->dismissClipboardUI()V

    .line 1122
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1140
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1141
    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1143
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    if-ne v4, v0, :cond_2

    .line 1144
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 1145
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->clearActionModes()V

    .line 1147
    :cond_2
    return-void

    .line 1124
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 1125
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->updateClipboardUI()V

    .line 1127
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    if-eqz v0, :cond_4

    .line 1128
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 1132
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1133
    const-string v0, "HtmlComposerView"

    const-string v1, "onFocus calling invokeTexttoSpeech()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1152
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 1154
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 1155
    const-string v3, "HtmlComposerView"

    const-string v4, "onHoverEvent ACTION_HOVER_ENTER"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 1158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1159
    .local v0, contentX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 1161
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->isHoverPointWithinIconAreaForResizing(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1162
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtmlComposerView"

    const-string v4, "onHoverEvent false == isHoverPointWithinIconAreaForResizing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    .end local v0           #contentX:I
    .end local v1           #contentY:I
    :cond_0
    :goto_0
    return v2

    .line 1165
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 1166
    const-string v2, "HtmlComposerView"

    const-string v3, "onHoverEvent ACTION_HOVER_EXIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 1168
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 1169
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 1170
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1171
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 1172
    const-string v3, "HtmlComposerView"

    const-string v4, "onHoverEvent ACTION_HOVER_MOVE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1175
    .restart local v0       #contentX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 1177
    .restart local v1       #contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->isHoverPointWithinIconAreaForResizing(II)Z

    move-result v3

    if-ne v2, v3, :cond_5

    .line 1178
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "HtmlComposerView"

    const-string v3, "onHoverEvent true == isHoverPointWithinIconAreaForResizing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow;->show(I)V

    goto :goto_1

    .line 1186
    .end local v0           #contentX:I
    .end local v1           #contentY:I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1182
    .restart local v0       #contentX:I
    .restart local v1       #contentY:I
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HoverPopupWindow;->dismiss()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 907
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 909
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 910
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 911
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 913
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitializeAccessibilityEvent mAdd = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mRemove = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    if-nez v0, :cond_2

    .line 929
    :cond_1
    :goto_0
    return-void

    .line 918
    :cond_2
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    if-nez v0, :cond_4

    .line 920
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitializeAccessibilityEvent getTTSbeforeText() 1 ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_3
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 922
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    goto :goto_0

    .line 924
    :cond_4
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    if-eqz v0, :cond_1

    .line 926
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitializeAccessibilityEvent getTTSbeforeText() 2 ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_5
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 1207
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1208
    const-string v5, "HtmlComposerView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "htmlcompor onKeyDown "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_0
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v4, v5, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1218
    iput-boolean v8, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1224
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1231
    const/16 v5, 0x37

    if-eq p1, v5, :cond_2

    const/16 v5, 0x3e

    if-ne p1, v5, :cond_3

    :cond_2
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-ne v5, v4, :cond_3

    .line 1234
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 1237
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 1260
    :goto_0
    iput v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1261
    iput v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1263
    const/4 v1, 0x0

    .line 1265
    .local v1, prevSpanTextBeforeStartOffset:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const/16 v6, 0xf

    invoke-virtual {v5, v6, v8}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1267
    .local v3, spannableString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1269
    .local v2, spannableChar:[C
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1271
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v8, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1272
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    iput v5, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 1273
    iget v5, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1274
    iget v5, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1276
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    if-ltz v5, :cond_4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-ltz v5, :cond_4

    .line 1278
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v5, v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1281
    :cond_4
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-lt v5, v4, :cond_5

    .line 1283
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v5, v6, v7}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1286
    :cond_5
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, p0, v6, p1, p2}, Landroid/text/method/QwertyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1288
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    sub-int v0, v5, v6

    .line 1290
    .local v0, diff:I
    if-eqz v0, :cond_6

    .line 1291
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1293
    :cond_6
    if-lez v0, :cond_b

    .line 1295
    if-eqz v1, :cond_a

    .line 1297
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v5, v6, v7}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_9

    .line 1299
    const-string v5, ""

    invoke-virtual {p0, v5, v4}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1300
    const-string v5, "InsertText"

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1301
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1315
    :goto_1
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v5, v0

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1316
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1325
    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 1326
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 1332
    .end local v0           #diff:I
    .end local v1           #prevSpanTextBeforeStartOffset:Ljava/lang/String;
    .end local v2           #spannableChar:[C
    .end local v3           #spannableString:Ljava/lang/String;
    :cond_8
    :goto_3
    :sswitch_0
    return v4

    .line 1240
    :sswitch_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebClipboard;->launchClipboardUI()V

    goto :goto_3

    .line 1245
    :sswitch_2
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    goto/16 :goto_0

    .line 1249
    :sswitch_3
    const-string v5, "DeleteForward"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1250
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_0

    .line 1254
    :sswitch_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_3

    .line 1305
    .restart local v0       #diff:I
    .restart local v1       #prevSpanTextBeforeStartOffset:Ljava/lang/String;
    .restart local v2       #spannableChar:[C
    .restart local v3       #spannableString:Ljava/lang/String;
    :cond_9
    const-string v5, "InsertText"

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1306
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_1

    .line 1311
    :cond_a
    const-string v5, "InsertText"

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1312
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_1

    .line 1317
    :cond_b
    if-gez v0, :cond_7

    .line 1319
    const-string v5, "InsertText"

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1320
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1321
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1322
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    goto :goto_2

    .line 1332
    .end local v0           #diff:I
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_3

    .line 1237
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x43 -> :sswitch_4
        0x70 -> :sswitch_3
        0xdd -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1197
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtmlComposerView onKeyLongPress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1201
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1337
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebClipboard;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1339
    const-string v1, "HtmlComposerView"

    const-string v2, " onKeyPreIme-dismiss Clipboard "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebClipboard;->dismissClipboardUI()V

    .line 1341
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 1344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1349
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1350
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "htmlcompor onKeyUp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1376
    :goto_0
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    if-ltz v1, :cond_1

    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-ltz v1, :cond_1

    .line 1378
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1381
    :cond_1
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    if-eqz v1, :cond_4

    .line 1383
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p0, v2, p1, p2}, Landroid/text/method/QwertyKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1387
    :goto_1
    :sswitch_0
    return v0

    .line 1356
    :sswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    goto :goto_0

    .line 1359
    :sswitch_2
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_3

    .line 1360
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1362
    const-string v1, "image"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 1363
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const v1, 0x1020020

    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    .line 1366
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 1367
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    goto :goto_0

    .line 1369
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1387
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1353
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 933
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 934
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 935
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPopulateAccessibilityEvent text = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    return-void
.end method

.method public onRecieveWebViewDoubleTapped()V
    .locals 2

    .prologue
    .line 3606
    const-string v0, "HtmlComposerView"

    const-string v1, "onRecieveWebViewDoubleTapped()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mDoubleTapped:Z

    .line 3609
    return-void
.end method

.method public onRecieveWebViewSelectionChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 3612
    const-string v3, "HtmlComposerView"

    const-string v4, "onRecieveWebViewSelectionChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v2

    .line 3615
    .local v2, selectionType:I
    if-ne v6, v2, :cond_2

    .line 3616
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3618
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;

    move-result-object v1

    .line 3619
    .local v1, selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v4, v1, Landroid/webkit/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v4, v3, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 3620
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v4, v1, Landroid/webkit/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v4, v3, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 3621
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v5, v3, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 3622
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v5, v3, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 3624
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 3631
    .end local v1           #selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getDCHandlerLastHandleType()I

    move-result v0

    .line 3633
    .local v0, handleType:I
    if-ne v0, v6, :cond_3

    .line 3634
    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(I)V

    .line 3639
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->sendEventToUpdateToolbar()V

    .line 3640
    return-void

    .line 3625
    .end local v0           #handleType:I
    :cond_2
    if-nez v2, :cond_0

    .line 3626
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v5, v3, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 3627
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v5, v3, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 3628
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto :goto_0

    .line 3635
    .restart local v0       #handleType:I
    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 3636
    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(I)V

    goto :goto_1
.end method

.method public onRecieveWebviewLongTouchUp()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3554
    const-string v1, "HtmlComposerView"

    const-string v2, "onRecieveWebviewLongTouchUp() Has Long-pressed!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-nez v1, :cond_0

    .line 3557
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 3558
    const-string v1, "HtmlComposerView"

    const-string v2, "onRecieveWebviewLongTouchUp() this view has already lost the focus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    :goto_0
    return-void

    .line 3563
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-nez v1, :cond_1

    .line 3564
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3566
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 3568
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imm active  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getTargetView()Landroid/webkit/HtmlComposerView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->SendInitComposing()V

    .line 3572
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3573
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 3596
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_0
.end method

.method public onRecieveWebviewShortTouchUp()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 3526
    const-string v1, "HtmlComposerView"

    const-string v2, "onRecieveWebviewShortTouchUp() Has Short-pressed!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-nez v1, :cond_1

    .line 3529
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 3530
    const-string v1, "HtmlComposerView"

    const-string v2, "onRecieveWebviewShortTouchUp() this view has already lost the focus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    :cond_0
    :goto_0
    return-void

    .line 3534
    :cond_1
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-nez v1, :cond_0

    .line 3535
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3537
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 3539
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imm active  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getTargetView()Landroid/webkit/HtmlComposerView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3543
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->SendInitComposing()V

    .line 3545
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v5, v1, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 3546
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v5, v1, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 3547
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 3549
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 1392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->getContentX(I)I

    move-result v2

    .line 1393
    .local v2, contentX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->getContentY(I)I

    move-result v3

    .line 1395
    .local v3, contentY:I
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1396
    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->isTouchedOutside(II)Z

    move-result v0

    if-ne v0, v12, :cond_0

    .line 1397
    const-string v0, "HtmlComposerView"

    const-string v10, "hasFocus() == false && isTouchedOutside() == true"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const/4 v9, 0x0

    .line 1437
    :goto_0
    return v9

    .line 1402
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 1403
    .local v9, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v4, v0

    .line 1404
    .local v4, rawX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v5, v0

    .line 1405
    .local v5, rawY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1407
    .local v1, action:I
    const-string v0, "HtmlComposerView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MotionEvent.ACTION_DOWN  html compopser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    if-ne v1, v13, :cond_3

    .line 1410
    const/4 v7, 0x0

    .line 1412
    .local v7, imageHandlerHeight:I
    const/4 v6, 0x0

    .line 1414
    .local v6, extraTouchArea:I
    new-array v8, v13, [I

    .line 1415
    .local v8, locOnScreen:[I
    invoke-virtual {p0, v8}, Landroid/webkit/HtmlComposerView;->getLocationOnScreen([I)V

    .line 1416
    sget-object v0, Landroid/webkit/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1418
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v0, :cond_2

    .line 1419
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 1420
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-eq v12, v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-eq v12, v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v12, v0, :cond_4

    .line 1421
    :cond_1
    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    .line 1426
    :cond_2
    :goto_1
    add-int v0, v5, v7

    sget-object v10, Landroid/webkit/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    aget v11, v8, v12

    add-int/2addr v10, v11

    if-le v0, v10, :cond_5

    .line 1427
    sget-object v0, Landroid/webkit/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    aget v10, v8, v12

    add-int/2addr v0, v10

    sub-int/2addr v0, v7

    sub-int/2addr v0, v5

    add-int/2addr v3, v0

    .line 1428
    sget-object v0, Landroid/webkit/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    aget v10, v8, v12

    add-int/2addr v0, v10

    sub-int v5, v0, v7

    .end local v6           #extraTouchArea:I
    .end local v7           #imageHandlerHeight:I
    .end local v8           #locOnScreen:[I
    :cond_3
    :goto_2
    move-object v0, p0

    .line 1435
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HtmlComposerView;->handle_onTouchEvent(IIIII)Z

    goto :goto_0

    .line 1423
    .restart local v6       #extraTouchArea:I
    .restart local v7       #imageHandlerHeight:I
    .restart local v8       #locOnScreen:[I
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 1429
    :cond_5
    add-int v0, v7, v6

    sub-int v0, v5, v0

    sget-object v10, Landroid/webkit/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    aget v11, v8, v12

    add-int/2addr v10, v11

    if-ge v0, v10, :cond_3

    .line 1430
    sget-object v0, Landroid/webkit/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    aget v10, v8, v12

    add-int/2addr v0, v10

    add-int/2addr v0, v7

    sub-int/2addr v0, v5

    add-int/2addr v3, v0

    .line 1431
    sget-object v0, Landroid/webkit/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    aget v10, v8, v12

    add-int/2addr v0, v10

    add-int v5, v0, v7

    goto :goto_2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8
    .parameter "hasWindowFocus"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1662
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWindowFocusChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 1664
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1665
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 1667
    invoke-virtual {p0, v6}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1668
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1670
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v2, v3}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 1671
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->updateClipboardUI()V

    .line 1674
    :cond_0
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-nez v2, :cond_1

    .line 1676
    invoke-virtual {p0, v7}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1678
    :cond_1
    if-nez p1, :cond_5

    .line 1680
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    if-ne v6, v2, :cond_2

    .line 1681
    const-string v2, "HtmlComposerView"

    const-string v3, "onWindowFocusChanged To hide Cursor handler"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 1683
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->bSCHvisibleonFocus:Z

    .line 1686
    :cond_2
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v6, v2, :cond_3

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_4

    .line 1688
    :cond_3
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iput v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 1689
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 1691
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1692
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWindowFocusChanged WindowFocus = false, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_4
    :goto_0
    return-void

    .line 1698
    :cond_5
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v6, v2, :cond_6

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_b

    .line 1700
    :cond_6
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWindowFocusChanged WindowFocus = true, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_7
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWindowFocusChanged spanComposerText count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurSelStart= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurSelEnd= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    sub-int v0, v2, v3

    .line 1706
    .local v0, diff:I
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1715
    if-lez v0, :cond_d

    .line 1717
    const-string v2, "InsertText"

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1718
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1732
    :cond_8
    :goto_1
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 1734
    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1735
    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1737
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-ne v6, v2, :cond_9

    .line 1738
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 1739
    :cond_9
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_a

    .line 1740
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1742
    :cond_a
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 1745
    .end local v0           #diff:I
    :cond_b
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    if-ne v6, v2, :cond_c

    .line 1746
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 1749
    :cond_c
    sget v2, Landroid/webkit/HtmlComposerView;->operSel:I

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1750
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1751
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x500

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1754
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    invoke-virtual {v2, v1}, Landroid/webkit/HtmlComposerView$HCWHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1719
    .end local v1           #msg:Landroid/os/Message;
    .restart local v0       #diff:I
    :cond_d
    if-nez v0, :cond_e

    .line 1720
    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-lez v2, :cond_8

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_8

    .line 1723
    const-string v2, ""

    invoke-virtual {p0, v2, v6}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1724
    const-string v2, "InsertText"

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1725
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_1

    .line 1727
    :cond_e
    const/4 v2, -0x1

    if-ne v0, v2, :cond_8

    .line 1728
    const-string v2, ""

    invoke-virtual {p0, v2, v6}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1729
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_1
.end method

.method public outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "context"
    .parameter "imagetRect"

    .prologue
    const/4 v5, 0x1

    .line 4401
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 4402
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 4403
    invoke-virtual {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 4404
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 4405
    .local v0, re:Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4407
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 4408
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after init outline Rect path : left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 4412
    .local v1, reh:Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4414
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 4415
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after init outline Rect path : left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4418
    :cond_1
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-direct {p0, p2, v2, v3}, Landroid/webkit/HtmlComposerView;->getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 4419
    return-void
.end method

.method public paste()V
    .locals 2

    .prologue
    .line 1936
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 1937
    const-string v0, "Paste"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1938
    return-void
.end method

.method public redo()V
    .locals 2

    .prologue
    .line 1941
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1942
    const-string v0, "Redo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1943
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1944
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1945
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 1946
    return-void
.end method

.method public registerNotificationListener(Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1949
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 1950
    return-void
.end method

.method public removeNotificationListener()V
    .locals 1

    .prologue
    .line 1953
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 1954
    return-void
.end method

.method public resetSelection()V
    .locals 2

    .prologue
    .line 3643
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3648
    :cond_0
    :goto_0
    return-void

    .line 3645
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3646
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x22f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public restoreSelection()V
    .locals 2

    .prologue
    .line 3650
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3656
    :cond_0
    :goto_0
    return-void

    .line 3652
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3653
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x214

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3654
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    goto :goto_0
.end method

.method public saveSelection()V
    .locals 2

    .prologue
    .line 3659
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3663
    :cond_0
    :goto_0
    return-void

    .line 3661
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3662
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x215

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 1957
    const-string v0, "SelectAll"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1958
    return-void
.end method

.method public selectBWStartAndEnd(IIII)V
    .locals 4
    .parameter "startX"
    .parameter "startY"
    .parameter "endX"
    .parameter "endY"

    .prologue
    .line 4262
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4270
    :cond_0
    :goto_0
    return-void

    .line 4264
    :cond_1
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectBWStartAndEnd start = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], startY = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], endX = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], endY = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4268
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4269
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v1

    const/16 v2, 0x22a

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public selectedType()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 3666
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3685
    :cond_0
    :goto_0
    return v3

    .line 3668
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3670
    .local v2, selectedType:Ljava/lang/Integer;
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4, v2}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3671
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 3672
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3673
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x213

    invoke-virtual {v3, v4, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3678
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3683
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3685
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 3675
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3683
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3679
    :catch_0
    move-exception v0

    .line 3680
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 947
    invoke-super {p0, p1}, Landroid/webkit/WebView;->sendAccessibilityEvent(I)V

    .line 948
    return-void
.end method

.method public setAutoTextSelection(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 2878
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->setAutoTextSelection(Z)V

    .line 2879
    return-void
.end method

.method public setCaretForEdit(Z)V
    .locals 4
    .parameter "active"

    .prologue
    const/16 v1, 0x8e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3689
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3702
    :cond_0
    :goto_0
    return-void

    .line 3691
    :cond_1
    if-eqz p1, :cond_2

    .line 3692
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3693
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0

    .line 3696
    :cond_2
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 3697
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3698
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3699
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x20b

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public setComposingRegion(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 3705
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3724
    :cond_0
    :goto_0
    return-void

    .line 3706
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 3708
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 3709
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 3711
    .local v1, sendTwoIntObj:Landroid/graphics/Point;
    monitor-enter v1

    .line 3712
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3713
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21b

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3718
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3723
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3715
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3719
    :catch_0
    move-exception v0

    .line 3720
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized setComposingState(Z)V
    .locals 1
    .parameter "isInComposingState"

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 321
    :goto_0
    monitor-exit p0

    return-void

    .line 318
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCursorFromRangeSelection()V
    .locals 2

    .prologue
    .line 3731
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3735
    :cond_0
    :goto_0
    return-void

    .line 3733
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3734
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x22b

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public setDefaultFontSize(I)V
    .locals 3
    .parameter "defaultFontSize"

    .prologue
    .line 3738
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 3739
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    int-to-float v1, p1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 3743
    :goto_0
    return-void

    .line 3741
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    goto :goto_0
.end method

.method public setEditableSelection(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 3746
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3765
    :cond_0
    :goto_0
    return-void

    .line 3747
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 3749
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 3750
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 3752
    .local v1, sendTwoIntObj:Landroid/graphics/Point;
    monitor-enter v1

    .line 3753
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3754
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x1fe

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3759
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3764
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3756
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3760
    :catch_0
    move-exception v0

    .line 3761
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setEmoji(Z)V
    .locals 3
    .parameter "bIsActive"

    .prologue
    .line 3769
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " htmlcomposer setEmoji() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 3771
    return-void
.end method

.method public setImeOptions(I)V
    .locals 0
    .parameter "imeOption"

    .prologue
    .line 3774
    iput p1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 3775
    return-void
.end method

.method protected setInputConnection(Landroid/webkit/HtmlComposerInputConnection;)V
    .locals 0
    .parameter "ic"

    .prologue
    .line 445
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 446
    return-void
.end method

.method public setLastKeyPadState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 5324
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 5325
    return-void
.end method

.method public setMaxHtmlLength(I)V
    .locals 1
    .parameter "maxHtmlLength"

    .prologue
    .line 3808
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 3809
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 3810
    return-void
.end method

.method public setOnInsertedImageHitListener(Landroid/webkit/HtmlComposerView$InsertedImageHitListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1967
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    .line 1968
    return-void
.end method

.method public setOnRichTextFormatChangedListener(Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1962
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 1963
    return-void
.end method

.method public setPageZoom(F)V
    .locals 3
    .parameter "factor"

    .prologue
    .line 3784
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3785
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPageZoom factor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3788
    :cond_0
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    .line 3789
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3790
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebClipboard;->setZoomFactorForPasting(F)V

    .line 3791
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v1

    iget v0, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    if-gt v0, v2, :cond_3

    iget v0, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    :goto_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/webkit/WebClipboard;->setWidthForCopiedImage(I)V

    .line 3794
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3795
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x228

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3796
    :cond_2
    return-void

    .line 3791
    :cond_3
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    goto :goto_0
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 3799
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 3800
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 3803
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clear()V

    .line 3804
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)Z

    .line 3805
    return-void
.end method

.method public singleCursorHandlerTouchEvent(Landroid/view/MotionEvent;IIIFF)Z
    .locals 26
    .parameter "ev"
    .parameter "touchEvent"
    .parameter "contentX"
    .parameter "contentY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5661
    const/16 v13, 0xc

    .line 5667
    .local v13, left_right_image_gap:I
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5668
    .local v14, metric:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    check-cast v23, Landroid/app/Activity;

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5670
    iget v0, v14, Landroid/util/DisplayMetrics;->density:F

    move/from16 v23, v0

    const/high16 v24, 0x42c8

    mul-float v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebSettings;->getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v8, v23, v24

    .line 5672
    .local v8, density:F
    const-string v23, "HtmlComposerView"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "drawSingleCursorHandler density = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5674
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v7

    .line 5675
    .local v7, cursurRect:Landroid/graphics/Rect;
    if-nez v7, :cond_0

    const/16 v23, 0x0

    .line 5778
    :goto_0
    return v23

    .line 5677
    :cond_0
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    .line 5678
    .local v19, xCursorPosition:I
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    .line 5680
    .local v22, yCursorPosition:I
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 5681
    .local v16, visRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 5683
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1080a0c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 5684
    .local v15, singleCursorhandler:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 5685
    .local v9, iSCHHeight:I
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 5686
    .local v11, iSCHWidth:I
    int-to-float v0, v9

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v10, v0

    .line 5687
    .local v10, iSCHHeightByDensity:I
    int-to-float v0, v11

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v12, v0

    .line 5689
    .local v12, iSCHWidthByDensity:I
    div-int/lit8 v2, v12, 0x2

    .line 5690
    .local v2, TOUCH_X_LEFT:I
    div-int/lit8 v3, v12, 0x2

    .line 5691
    .local v3, TOUCH_X_RIGHT:I
    const/4 v5, 0x0

    .line 5692
    .local v5, TOUCH_Y_TOP:I
    move v4, v10

    .line 5694
    .local v4, TOUCH_Y_BOTTOM:I
    sub-int v17, v19, v2

    .line 5695
    .local v17, x1:I
    add-int v18, v19, v3

    .line 5696
    .local v18, x2:I
    add-int/lit8 v20, v22, 0x0

    .line 5697
    .local v20, y1:I
    add-int v21, v22, v4

    .line 5699
    .local v21, y2:I
    const/4 v6, 0x0

    .line 5701
    .local v6, bIsReverse:Z
    add-int v23, v22, v9

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v23, v23, v22

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 5704
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    .line 5705
    sub-int v20, v22, v4

    .line 5706
    add-int/lit8 v21, v22, 0x0

    .line 5708
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 5709
    sub-int v17, v19, v2

    .line 5710
    add-int v18, v19, v3

    .line 5724
    :goto_1
    const/4 v6, 0x1

    .line 5742
    :cond_1
    :goto_2
    packed-switch p2, :pswitch_data_0

    .line 5774
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    .line 5778
    :cond_2
    :goto_3
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 5712
    :cond_3
    div-int/lit8 v23, v11, 0x2

    sub-int v23, v19, v23

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 5713
    sub-int v17, v19, v13

    .line 5714
    sub-int v23, v19, v13

    add-int v18, v23, v12

    goto :goto_1

    .line 5715
    :cond_4
    div-int/lit8 v23, v11, 0x2

    add-int v23, v23, v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_5

    .line 5716
    add-int v23, v19, v13

    sub-int v17, v23, v12

    .line 5717
    add-int v18, v19, v13

    goto :goto_1

    .line 5719
    :cond_5
    sub-int v17, v19, v2

    .line 5720
    add-int v18, v19, v3

    goto :goto_1

    .line 5725
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 5726
    div-int/lit8 v23, v11, 0x2

    sub-int v23, v19, v23

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 5727
    sub-int v17, v19, v13

    .line 5728
    sub-int v23, v19, v13

    add-int v18, v23, v12

    goto :goto_2

    .line 5729
    :cond_7
    div-int/lit8 v23, v11, 0x2

    add-int v23, v23, v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_8

    .line 5730
    add-int v23, v19, v13

    sub-int v17, v23, v12

    .line 5731
    add-int v18, v19, v13

    goto :goto_2

    .line 5733
    :cond_8
    sub-int v17, v19, v2

    .line 5734
    add-int v18, v19, v3

    goto/16 :goto_2

    .line 5745
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    .line 5746
    move/from16 v0, p3

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    move/from16 v0, p3

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    move/from16 v0, p4

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    move/from16 v0, p4

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 5748
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 5754
    :pswitch_1
    if-nez v6, :cond_9

    div-int/lit8 v23, v2, 0x2

    sub-int v23, v17, v23

    move/from16 v0, p3

    move/from16 v1, v23

    if-le v0, v1, :cond_9

    div-int/lit8 v23, v3, 0x2

    add-int v23, v23, v18

    move/from16 v0, p3

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    move/from16 v0, p4

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    add-int v23, v21, v4

    move/from16 v0, p4

    move/from16 v1, v23

    if-lt v0, v1, :cond_a

    :cond_9
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v0, v6, :cond_b

    div-int/lit8 v23, v2, 0x2

    sub-int v23, v17, v23

    move/from16 v0, p3

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    div-int/lit8 v23, v3, 0x2

    add-int v23, v23, v18

    move/from16 v0, p3

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    sub-int v23, v20, v4

    move/from16 v0, p4

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    move/from16 v0, p4

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 5757
    :cond_a
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    .line 5758
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    .line 5759
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 5763
    :cond_b
    const-string v23, "HtmlComposerView"

    const-string v24, " @@@    singleCursorHandlerTouchEvent   NOT touched on Single Cursor image   @@@"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5769
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    .line 5770
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    goto/16 :goto_3

    .line 5742
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public textChangedForWatcher()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5374
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 5375
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v1, ""

    invoke-interface {v0, v1, v2, v2, v2}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 5376
    :cond_0
    return-void
.end method

.method public textChangedForWatcher(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x0

    .line 5387
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 5388
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v1, ""

    invoke-interface {v0, v1, v2, p1, v2}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 5390
    :cond_0
    return-void
.end method

.method public textChangedForWatcher(Z)V
    .locals 4
    .parameter "isTextChanged"

    .prologue
    const/4 v1, 0x0

    .line 5379
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 5380
    .local v0, temp:I
    :goto_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_0

    .line 5382
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v3, ""

    invoke-interface {v2, v3, v1, v1, v0}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 5384
    :cond_0
    return-void

    .end local v0           #temp:I
    :cond_1
    move v0, v1

    .line 5379
    goto :goto_0
.end method

.method public textToSpeech(II)V
    .locals 2
    .parameter "add"
    .parameter "remove"

    .prologue
    .line 3814
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3815
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    .line 3816
    iput p2, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    .line 3817
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    const-string v1, "sendAccessbilityEvent [ 16]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->sendAccessibilityEvent(I)V

    .line 3820
    :cond_1
    return-void
.end method

.method public toggleBold()V
    .locals 2

    .prologue
    .line 1972
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1978
    :goto_0
    return-void

    .line 1975
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1976
    const-string v0, "Bold"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1977
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_0
.end method

.method public toggleItalic()V
    .locals 2

    .prologue
    .line 1981
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1987
    :goto_0
    return-void

    .line 1984
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1985
    const-string v0, "Italic"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1986
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_0
.end method

.method public toggleUnderline()V
    .locals 2

    .prologue
    .line 1990
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1997
    :goto_0
    return-void

    .line 1993
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1994
    const-string v0, "Underline"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1995
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1996
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    goto :goto_0
.end method

.method public undo()V
    .locals 2

    .prologue
    .line 2000
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 2001
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2002
    const-string v0, "Undo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2003
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 2004
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2005
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 2006
    return-void
.end method

.method public undoRedoStateReset()V
    .locals 2

    .prologue
    .line 3824
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3828
    :cond_0
    :goto_0
    return-void

    .line 3826
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3827
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x211

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public unmarkWord(Ljava/lang/String;)V
    .locals 1
    .parameter "word"

    .prologue
    .line 2866
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->unmarkWord(Ljava/lang/String;)V

    .line 2867
    return-void
.end method

.method public updateIMSelectionToEditor(II)V
    .locals 2
    .parameter "curSelStart"
    .parameter "curSelEnd"

    .prologue
    .line 3831
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3835
    :cond_0
    :goto_0
    return-void

    .line 3833
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3834
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21a

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public updateOutlineDrawRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "imagetRect"

    .prologue
    .line 4432
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 4433
    return-void
.end method
