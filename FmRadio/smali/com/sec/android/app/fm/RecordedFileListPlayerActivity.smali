.class public Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;
.super Landroid/app/Activity;
.source "RecordedFileListPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;


# static fields
.field private static mGotoMainByBackkey:Z

.field private static mLongKeyCnt:I

.field private static mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;


# instance fields
.field public ProgressHandler:Landroid/os/Handler;

.field private TempLongKeyCnt:I

.field private curPos:I

.field isEnableFinishChecker:Z

.field private isFirst:Z

.field private isVolumeBarShow:Z

.field private mActivityState:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverVolume:Landroid/content/BroadcastReceiver;

.field private mConsumeTouchEvent:Z

.field private mCurrentSelectedId:J

.field private mCurrentSelectedPositionBottom:I

.field private mCurrentTopItem:I

.field private mCursor:Landroid/database/Cursor;

.field mDeleteDialog:Landroid/app/AlertDialog;

.field private mDrmDialog:Landroid/app/AlertDialog;

.field private mEventHandler:Landroid/os/Handler;

.field private mHideVolumePanel:Ljava/lang/Runnable;

.field private mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

.field private mLowBattDialog:Landroid/app/AlertDialog;

.field private mMenu:Landroid/view/Menu;

.field private mNextButton:Landroid/widget/ImageButton;

.field mOptionPopupDialog:Landroid/app/AlertDialog;

.field private mPlayButton:Landroid/widget/ImageButton;

.field private mPlayerControllerLayout:Landroid/view/ViewGroup;

.field private mPlayerDurationView:Landroid/widget/TextView;

.field private mPlayerElapsedView:Landroid/widget/TextView;

.field private mPlayerProgressLayout:Landroid/view/ViewGroup;

.field private mPlayerTitleView:Landroid/widget/TextView;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mProgressBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mProgressbar:Landroid/widget/SeekBar;

.field private mRecordedFileListView:Landroid/widget/ListView;

.field mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

.field private mSelection:Ljava/lang/String;

.field private mTextTimeElapsedOld:Ljava/lang/String;

.field private mTouchMovedWhileConsuming:Z

.field private mVolCtrl:Landroid/widget/ImageButton;

.field private mVolumeBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mVolumeKeyEventHandler:Landroid/os/Handler;

.field private mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private mVolumeValue:Landroid/widget/TextView;

.field private mVolumebar:Landroid/widget/RelativeLayout;

.field private mbProgressDragStatus:Z

.field private optionsItemCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 173
    sput v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mLongKeyCnt:I

    .line 181
    sput-boolean v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mGotoMainByBackkey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;

    .line 133
    iput-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mLowBattDialog:Landroid/app/AlertDialog;

    .line 135
    iput-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mDrmDialog:Landroid/app/AlertDialog;

    .line 137
    iput-boolean v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mbProgressDragStatus:Z

    .line 169
    iput v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentTopItem:I

    .line 171
    iput v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->TempLongKeyCnt:I

    .line 175
    iput v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mActivityState:I

    .line 177
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    .line 183
    iput-boolean v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->isVolumeBarShow:Z

    .line 185
    iput-boolean v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->isEnableFinishChecker:Z

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->isFirst:Z

    .line 189
    iput-boolean v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->optionsItemCheck:Z

    .line 191
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mSelection:Ljava/lang/String;

    .line 193
    new-instance v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$1;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mHideVolumePanel:Ljava/lang/Runnable;

    .line 202
    iput-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mMenu:Landroid/view/Menu;

    .line 243
    new-instance v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$2;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;

    .line 987
    iput v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->curPos:I

    .line 1079
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mTextTimeElapsedOld:Ljava/lang/String;

    .line 1399
    new-instance v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$13;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mProgressBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1451
    new-instance v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$14;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 1567
    new-instance v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$15;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$15;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->ProgressHandler:Landroid/os/Handler;

    .line 1735
    iput-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    .line 2024
    iput-boolean v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mConsumeTouchEvent:Z

    .line 2026
    iput-boolean v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mTouchMovedWhileConsuming:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hideVolumePanel()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mLowBattDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Lcom/sec/android/app/fm/data/RecordedFileAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerControllerLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->curPos:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRecordedFileListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mbProgressDragStatus:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerElapsedView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getVolumeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolCtrl:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mDrmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mHideVolumePanel:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->initProgress()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mProgressbar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->changeMode(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPrevButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->stopPlay()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setVolume()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setFilenameAndDuration()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->changeContentDescriptionForHover(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hmsConvert(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private adjustVolume(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 1193
    .line 1196
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showToastAudioShockForAdjust(Landroid/content/Context;ILandroid/media/AudioManager;)V

    .line 1198
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1205
    const-string v1, "RecordedFileListPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustVolume : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 1208
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setVolumeIcon()V

    .line 1210
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mHideVolumePanel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1212
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mHideVolumePanel:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1214
    :cond_0
    return-void

    .line 1199
    :catch_0
    move-exception v0

    .line 1200
    const-string v1, "RecordedFileListPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in adjustVolume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeContentDescriptionForHover(J)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 1536
    const-string v0, ""

    .line 1537
    iget-wide v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1538
    const-string v0, "title"

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->getItemString(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1541
    :cond_0
    return-object v0
.end method

.method private changeMode(I)V
    .locals 4
    .parameter "modeToChange"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 722
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "changeMode"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    packed-switch p1, :pswitch_data_0

    .line 748
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->checkDisplayListPlayer_controller()V

    .line 749
    iput p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mActivityState:I

    .line 750
    return-void

    .line 726
    :pswitch_0
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "changeMode(LISTVIEW)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerProgressLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 728
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 730
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hideVolumePanel()V

    .line 731
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setPlayButton()V

    goto :goto_0

    .line 735
    :pswitch_1
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "changeMode(PLAYER)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setVolumeIcon()V

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerProgressLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 741
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setProgress(Z)V

    goto :goto_0

    .line 724
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkDisplayListPlayer_controller()V
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerControllerLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 757
    :goto_0
    return-void

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerControllerLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private checkFileExist()Z
    .locals 3

    .prologue
    .line 905
    iget-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    const-string v2, "_data"

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->getItemString(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isExistFile(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/sec/android/app/fm/listplayer/FMListUtil;->FUNC_RETURN_CORRECT:I

    if-ne v0, v1, :cond_0

    .line 908
    const/4 v0, 0x1

    .line 910
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createDeleteDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 1858
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1859
    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1861
    const v1, 0x7f0a00ca

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0020

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$18;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$18;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0021

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$17;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$17;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1901
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 1903
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private createRenameDialog()Lcom/sec/android/app/fm/ui/RenameDialog;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    .line 1738
    iget-wide v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 1740
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v2, "createRenameDialog id is -1"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getCurrentPlayingId()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 1743
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v2, "createRenameDialog get current playing id from service"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getCurrentPlayingId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    .line 1756
    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    const-string v0, "_data"

    invoke-static {p0, v2, v3, v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->getItemString(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1758
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1760
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1762
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1763
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1766
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/ui/RenameDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1767
    :cond_2
    new-instance v3, Lcom/sec/android/app/fm/ui/RenameDialog;

    const/4 v4, 0x1

    new-instance v5, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;

    invoke-direct {v5, p0, v0, v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$16;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/android/app/fm/ui/RenameDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    iput-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    .line 1844
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->setText(Ljava/lang/String;)V

    .line 1846
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    if-eqz v0, :cond_6

    .line 1847
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->show()V

    .line 1852
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    :goto_1
    return-object v0

    .line 1745
    :cond_4
    invoke-static {}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->getCurrentSaveId()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    .line 1746
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v2, "createRenameDialog get current save id from util"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    invoke-static {}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->getCurrentSaveId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    goto :goto_0

    .line 1749
    :cond_5
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v2, "createRenameDialog return null"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1750
    goto :goto_1

    :cond_6
    move-object v0, v1

    .line 1849
    goto :goto_1
.end method

.method private getVolumeString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 2059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2061
    .local v0, rst:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2063
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hideVolumePanel()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1121
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "hideVolumePanel()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumebar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setVisibility(I)V

    .line 1127
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1129
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolCtrl:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    .line 1140
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->isVolumeBarShow:Z

    .line 1141
    return-void

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRecordedFileListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 1133
    const v0, 0x102000a

    .line 1134
    if-eqz v1, :cond_1

    .line 1135
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1137
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolCtrl:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    goto :goto_0
.end method

.method private hmsConvert(J)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x3c

    .line 1387
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 1388
    rem-long v2, v0, v6

    .line 1389
    div-long v4, v0, v6

    rem-long/2addr v4, v6

    .line 1390
    const-wide/16 v6, 0xe10

    div-long/2addr v0, v6

    .line 1392
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 1393
    const-string v6, "%d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1395
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%02d:%02d"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initProgress()V
    .locals 3

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mProgressbar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1076
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerElapsedView:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hmsConvert(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    return-void
.end method

.method public static initService(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 205
    sput-object p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    .line 206
    return-void
.end method

.method private initViews()V
    .locals 8

    .prologue
    const/16 v7, 0x500

    const/16 v6, 0x2d0

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 408
    const-string v1, "RecordedFileListPlayerActivity"

    const-string v2, "initViews()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRecordedFileListView:Landroid/widget/ListView;

    .line 412
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRecordedFileListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRecordedFileListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 414
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setEmptyView()V

    .line 416
    const v1, 0x7f0700a5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumebar:Landroid/widget/RelativeLayout;

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumebar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 420
    const v1, 0x7f070098

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerProgressLayout:Landroid/view/ViewGroup;

    .line 421
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerProgressLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 423
    const v1, 0x7f070097

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerControllerLayout:Landroid/view/ViewGroup;

    .line 425
    const v1, 0x7f070099

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerTitleView:Landroid/widget/TextView;

    .line 426
    const v1, 0x7f07009f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerDurationView:Landroid/widget/TextView;

    .line 427
    const v1, 0x7f07009e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerElapsedView:Landroid/widget/TextView;

    .line 428
    const v1, 0x7f0700a2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayButton:Landroid/widget/ImageButton;

    .line 429
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayButton:Landroid/widget/ImageButton;

    const v2, 0x7f0a00d3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 432
    sget-object v1, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 433
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setPauseButton()V

    .line 438
    :cond_0
    :goto_0
    const v1, 0x7f0700a3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPrevButton:Landroid/widget/ImageButton;

    .line 439
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 441
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 442
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 443
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$6;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 477
    :cond_1
    const v1, 0x7f0700a2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayButton:Landroid/widget/ImageButton;

    .line 478
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 480
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 481
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$7;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 510
    :cond_2
    const v1, 0x7f0700a4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mNextButton:Landroid/widget/ImageButton;

    .line 511
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 513
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 514
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 515
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$8;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 548
    :cond_3
    const v1, 0x7f07009d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mProgressbar:Landroid/widget/SeekBar;

    .line 549
    const v1, 0x7f07009b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 550
    const v1, 0x7f0700a7

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeValue:Landroid/widget/TextView;

    .line 551
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumebar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    const v1, 0x7f07009a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolCtrl:Landroid/widget/ImageButton;

    .line 553
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolCtrl:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_6

    .line 557
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mProgressbar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarHoverListener(Landroid/widget/SeekBar$OnSeekBarHoverListener;)V

    .line 648
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mProgressbar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setHoverPopupType(I)V

    .line 650
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 651
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v6, :cond_4

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v1, v7, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v7, :cond_5

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v1, v6, :cond_5

    .line 655
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_6

    .line 656
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolCtrl:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$10;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$10;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 672
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setVolumeIcon()V

    .line 674
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mProgressbar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_7

    .line 675
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mProgressbar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 676
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mProgressbar:Landroid/widget/SeekBar;

    const/16 v2, 0x240

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 677
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontEnable(Z)V

    .line 680
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 682
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mProgressbar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_8

    .line 683
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mProgressbar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mProgressBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 684
    :cond_8
    return-void

    .line 434
    :cond_9
    sget-object v1, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setPlayButton()V

    goto/16 :goto_0
.end method

.method private listBinding()Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 915
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "listBinding E"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 919
    iput-object v6, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    .line 922
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 930
    const-string v0, "(_data LIKE \'%.3ga\' or (_data LIKE \'%.m4a\' and recordingtype == \'2\'))"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_data NOT LIKE \'%/.voice.3ga\' and _data NOT LIKE \'%/.voice.m4a\' and _data NOT LIKE \'%/.voice.amr\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (mime_type LIKE \'audio/3gpp\' or mime_type LIKE \'audio/mp4\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_size != \'0\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mSelection:Ljava/lang/String;

    .line 937
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 939
    const-string v0, "date_modified"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 957
    :cond_1
    :goto_0
    const-string v0, "RecordedFileListPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCursor :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v5, v0

    const-string v0, "title"

    aput-object v0, v5, v7

    const/4 v0, 0x2

    const-string v1, "date_modified"

    aput-object v1, v5, v0

    const-string v0, "duration"

    aput-object v0, v5, v8

    const/4 v0, 0x4

    const-string v1, "_data"

    aput-object v1, v5, v0

    .line 965
    new-array v6, v8, [I

    fill-array-data v6, :array_0

    .line 969
    new-instance v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    const v2, 0x7f03000d

    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    move-object v1, p0

    move v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;-><init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    .line 971
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    new-instance v1, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$11;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 980
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->checkDisplayListPlayer_controller()V

    .line 982
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRecordedFileListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 984
    return v7

    .line 944
    :catch_0
    move-exception v0

    .line 945
    const-string v1, "RecordedFileListPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 948
    iput-object v6, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_0

    .line 950
    :catch_1
    move-exception v0

    .line 951
    const-string v1, "RecordedFileListPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedOperationException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 953
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 954
    iput-object v6, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_0

    .line 965
    nop

    :array_0
    .array-data 0x4
        0x35t 0x0t 0x7t 0x7ft
        0x37t 0x0t 0x7t 0x7ft
        0x38t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method private onCustomPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1627
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mMenu:Landroid/view/Menu;

    .line 1628
    if-nez p1, :cond_1

    .line 1649
    :cond_0
    :goto_0
    return v0

    .line 1632
    :cond_1
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeGroup(I)V

    .line 1633
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    if-eqz v1, :cond_0

    .line 1637
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1641
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1643
    if-eqz v0, :cond_2

    .line 1644
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1649
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1646
    :cond_2
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "menuInflater is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private playItem()V
    .locals 4

    .prologue
    .line 1045
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-nez v0, :cond_0

    .line 1072
    :goto_0
    return-void

    .line 1049
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->initProgress()V

    .line 1050
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->changeMode(I)V

    .line 1052
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->stopPlay()V

    .line 1053
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->resetPath()V

    .line 1055
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    iget-wide v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->setCurrentPlayingId(J)V

    .line 1057
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getCurrentPlayingId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->startPlay(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1059
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->stopPlay()V

    .line 1060
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->resetPath()V

    .line 1063
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRecordedFileListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$12;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private registerBroadcastReceiverLowBattery(Z)V
    .locals 2
    .parameter "register"

    .prologue
    .line 340
    if-eqz p1, :cond_2

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    new-instance v1, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$4;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    .line 362
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 363
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 366
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 368
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverBattery:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private registerBroadcastReceiverSDCard(Z)V
    .locals 2
    .parameter "register"

    .prologue
    .line 289
    if-eqz p1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 291
    new-instance v1, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$3;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    .line 319
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 320
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 332
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private registerBroadcastReceiverVolume(Z)V
    .locals 2
    .parameter "register"

    .prologue
    .line 376
    if-eqz p1, :cond_2

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverVolume:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    new-instance v1, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$5;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverVolume:Landroid/content/BroadcastReceiver;

    .line 388
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 389
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverVolume:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 392
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverVolume:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverVolume:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 394
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mBroadcastReceiverVolume:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method public static releaseService()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    .line 210
    return-void
.end method

.method private setEmptyView()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 687
    const v3, 0x1020004

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 688
    .local v1, layout:Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 690
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030013

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 691
    .local v0, emptyView:Landroid/view/View;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 693
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    iget-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRecordedFileListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 696
    return-void
.end method

.method private setFilenameAndDuration()V
    .locals 4

    .prologue
    .line 1032
    .line 1034
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-nez v0, :cond_0

    .line 1035
    iget-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    .line 1039
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerTitleView:Landroid/widget/TextView;

    const-string v3, "title"

    invoke-static {p0, v0, v1, v3}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->getItemString(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerDurationView:Landroid/widget/TextView;

    const-string v3, "duration"

    invoke-static {p0, v0, v1, v3}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->getItemLong(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hmsConvert(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1042
    return-void

    .line 1037
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getCurrentPlayingId()J

    move-result-wide v0

    goto :goto_0
.end method

.method private setItemFocusOnRecordedFileList(I)V
    .locals 3
    .parameter "when"

    .prologue
    .line 1217
    packed-switch p1, :pswitch_data_0

    .line 1231
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1220
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentTopItem:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRecordedFileListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRecordedFileListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentTopItem:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 1217
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPauseButton()V
    .locals 2

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayButton:Landroid/widget/ImageButton;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1557
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1558
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayButton:Landroid/widget/ImageButton;

    const v1, 0x7f0a008c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1559
    return-void
.end method

.method private setPlayButton()V
    .locals 2

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1563
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1564
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayButton:Landroid/widget/ImageButton;

    const v1, 0x7f0a00d3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1565
    return-void
.end method

.method private setProgress(Z)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v5, 0x240

    const/4 v7, 0x1

    .line 1082
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mProgressbar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mbProgressDragStatus:Z

    if-eqz v0, :cond_2

    .line 1083
    :cond_0
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "setProgress() IlligalState ( mProgressbar == null or mService == null or mbProgressDragStatus == true)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_1
    :goto_0
    return-void

    .line 1088
    :cond_2
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getCurrentPosition()I

    move-result v0

    .line 1089
    sget-object v1, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getPlayerDuration()I

    move-result v1

    .line 1091
    if-eqz v1, :cond_1

    .line 1095
    sget-object v2, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->isEnableFinishChecker:Z

    if-ne v2, v7, :cond_3

    if-nez v0, :cond_3

    .line 1097
    const-string v1, "RecordedFileListPlayerActivity"

    const-string v2, "setProgress() do not need to update play progress"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :goto_1
    int-to-long v1, v0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hmsConvert(J)Ljava/lang/String;

    move-result-object v1

    .line 1110
    iget-boolean v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->isEnableFinishChecker:Z

    if-ne v2, v7, :cond_7

    if-nez v0, :cond_7

    .line 1112
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerElapsedView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1098
    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->isEnableFinishChecker:Z

    if-nez v2, :cond_5

    if-lez v0, :cond_5

    .line 1099
    iput-boolean v7, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->isEnableFinishChecker:Z

    .line 1101
    if-le v0, v1, :cond_4

    move v0, v1

    .line 1102
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mProgressbar:Landroid/widget/SeekBar;

    int-to-long v3, v0

    mul-long/2addr v3, v5

    int-to-long v5, v1

    div-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 1106
    :cond_5
    if-le v0, v1, :cond_6

    move v0, v1

    .line 1107
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mProgressbar:Landroid/widget/SeekBar;

    int-to-long v3, v0

    mul-long/2addr v3, v5

    int-to-long v5, v1

    div-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 1114
    :cond_7
    if-nez p1, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mTextTimeElapsedOld:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1115
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerElapsedView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mTextTimeElapsedOld:Ljava/lang/String;

    goto :goto_0
.end method

.method private setVolume()V
    .locals 6

    .prologue
    const/4 v3, 0x3

    .line 1164
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1166
    .local v1, currentVolume:I
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    .line 1167
    .local v0, audioMode:Z
    if-eqz v0, :cond_1

    .line 1168
    const/4 v1, 0x0

    .line 1169
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 1170
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setMax(I)V

    .line 1171
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeValue:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getVolumeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setVolumeIcon()V

    .line 1180
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1181
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mHideVolumePanel:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1182
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mHideVolumePanel:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1184
    :cond_0
    return-void

    .line 1173
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setMax(I)V

    .line 1174
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 1175
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeValue:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getVolumeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setVolumeIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 699
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 701
    .local v1, currentVolume:I
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    .line 702
    .local v0, audioMode:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 703
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolCtrl:Landroid/widget/ImageButton;

    const v3, 0x7f020144

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 707
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolCtrl:Landroid/widget/ImageButton;

    const v3, 0x7f02015a

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private showVolumePanel()V
    .locals 4

    .prologue
    const v3, 0x7f07009b

    const/4 v2, 0x0

    .line 1144
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "showVolumePanel()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->dismissVolumePanel()V

    .line 1150
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1152
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1153
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolCtrl:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    .line 1158
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumebar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1159
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setVisibility(I)V

    .line 1160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->isVolumeBarShow:Z

    .line 1161
    return-void

    .line 1155
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolCtrl:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    goto :goto_0
.end method

.method private stopPlay()V
    .locals 1

    .prologue
    .line 1546
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-eqz v0, :cond_0

    .line 1548
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->stopPlay()V

    .line 1549
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->resetPath()V

    .line 1550
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->changeMode(I)V

    .line 1553
    :cond_0
    return-void
.end method


# virtual methods
.method public OnPlayerStateChanged(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1488
    packed-switch p1, :pswitch_data_0

    .line 1532
    :goto_0
    return-void

    .line 1490
    :pswitch_0
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "OnPlayerStateChanged: PLAYER_EVENT_STARTED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->changeMode(I)V

    .line 1493
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setPauseButton()V

    .line 1494
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1498
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setProgress(Z)V

    goto :goto_0

    .line 1504
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setPlayButton()V

    .line 1505
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->notifyDataSetChanged()V

    .line 1506
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    .line 1507
    iput v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->curPos:I

    goto :goto_0

    .line 1512
    :pswitch_3
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "OnPlayerStateChanged: PLAYER_EVENT_STOPPED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->ProgressHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1514
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setVolume()V

    .line 1515
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hideVolumePanel()V

    .line 1516
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setPlayButton()V

    .line 1518
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 1523
    :pswitch_4
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "OnPlayerStateChanged: PLAYER_EVENT_PAUSED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setPlayButton()V

    .line 1525
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1488
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public getPlayer()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    return-object v0
.end method

.method public isPlayerView()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mPlayerProgressLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2008
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2010
    const-string v0, "RecordedFileListPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    packed-switch p2, :pswitch_data_0

    .line 2022
    :goto_0
    return-void

    .line 2015
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->finish()V

    goto :goto_0

    .line 2012
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1372
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mActivityState:I

    if-ne v0, v2, :cond_0

    .line 1375
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->stopPlay()V

    .line 1376
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mGotoMainByBackkey:Z

    .line 1384
    :goto_0
    return-void

    .line 1379
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->stopPlay()V

    .line 1380
    sput-boolean v2, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mGotoMainByBackkey:Z

    .line 1383
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const v1, 0x7f0a00d0

    const/4 v3, 0x0

    .line 1235
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1237
    sparse-switch v0, :sswitch_data_0

    .line 1332
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    if-eqz v0, :cond_1

    .line 1333
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->notifyDataSetChanged()V

    .line 1336
    :cond_1
    :goto_1
    return-void

    .line 1239
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isOnCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isOnVoIP(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isGoogleTalkVideoChatRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1243
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 1247
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hideVolumePanel()V

    .line 1248
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1249
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->pausePlay()V

    goto :goto_0

    .line 1250
    :cond_4
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1251
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->resumePlay()V

    goto :goto_0

    .line 1253
    :cond_5
    iget-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    .line 1254
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    .line 1255
    iput v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->curPos:I

    .line 1257
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->playItem()V

    .line 1258
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setFilenameAndDuration()V

    goto :goto_0

    .line 1263
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isOnCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isOnVoIP(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isGoogleTalkVideoChatRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1267
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1271
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hideVolumePanel()V

    .line 1273
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1275
    iget v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->curPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->curPos:I

    if-gez v1, :cond_9

    .line 1276
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->curPos:I

    .line 1278
    :cond_9
    if-eqz v0, :cond_a

    .line 1279
    iget v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->curPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1280
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    .line 1284
    :cond_a
    iget-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 1285
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->playItem()V

    .line 1286
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setFilenameAndDuration()V

    goto/16 :goto_0

    .line 1291
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isOnCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isOnVoIP(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isGoogleTalkVideoChatRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1295
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1299
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hideVolumePanel()V

    .line 1301
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1303
    iget v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->curPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->curPos:I

    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_d

    .line 1304
    iput v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->curPos:I

    .line 1307
    :cond_d
    if-eqz v0, :cond_e

    .line 1308
    iget v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->curPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1309
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    .line 1313
    :cond_e
    iget-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 1314
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->playItem()V

    .line 1315
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setFilenameAndDuration()V

    goto/16 :goto_0

    .line 1320
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumebar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->isPlayerView()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1321
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setVolume()V

    .line 1322
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->showVolumePanel()V

    goto/16 :goto_0

    .line 1324
    :cond_f
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hideVolumePanel()V

    goto/16 :goto_0

    .line 1237
    :sswitch_data_0
    .sparse-switch
        0x7f07009a -> :sswitch_3
        0x7f0700a2 -> :sswitch_0
        0x7f0700a3 -> :sswitch_1
        0x7f0700a4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1959
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1960
    const-string v0, "RecordedFileListPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRecordedFileListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentTopItem:I

    .line 1963
    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setTitle(I)V

    .line 1965
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 1968
    if-eqz v0, :cond_3

    .line 1969
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 1971
    :goto_0
    const v2, 0x7f030019

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setContentView(I)V

    .line 1973
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->initViews()V

    .line 1975
    iget v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mActivityState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1976
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setFilenameAndDuration()V

    .line 1979
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->listBinding()Z

    .line 1980
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setItemFocusOnRecordedFileList(I)V

    .line 1982
    if-eq v0, v1, :cond_1

    .line 1983
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1984
    if-eqz v0, :cond_1

    .line 1985
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1988
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->isVolumeBarShow:Z

    if-eqz v0, :cond_2

    .line 1989
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setVolume()V

    .line 1990
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->showVolumePanel()V

    .line 1992
    :cond_2
    iget v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mActivityState:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->changeMode(I)V

    .line 1993
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRecordedFileListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 1994
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRecordedFileListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$19;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$19;-><init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2004
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 1931
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1933
    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    .line 1935
    iget-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->setCurrentSaveId(J)V

    .line 1939
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1954
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1941
    :pswitch_0
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "onContextItemSelected - delete"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->createDeleteDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1946
    :pswitch_1
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "onContextItemSelected - Rename"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->createRenameDialog()Lcom/sec/android/app/fm/ui/RenameDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->show()V

    goto :goto_0

    .line 1939
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 215
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setContentView(I)V

    .line 217
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 219
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->registerBroadcastReceiverSDCard(Z)V

    .line 220
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->registerBroadcastReceiverLowBattery(Z)V

    .line 222
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->registerBroadcastReceiverVolume(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 227
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->initViews()V

    .line 228
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->listBinding()Z

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRecordedFileListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 232
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setVolumeControlStream(I)V

    .line 234
    iget-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 235
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->playItem()V

    .line 237
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setFilenameAndDuration()V

    .line 240
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 241
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1909
    if-nez p3, :cond_0

    .line 1910
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "onCreateContextMenu - menuInfo is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    :goto_0
    return-void

    .line 1914
    :cond_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1916
    iget-wide v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-string v2, "title"

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->getItemString(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1919
    if-nez v0, :cond_1

    .line 1920
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "onCreateContextMenu: Can`t load file."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1924
    :cond_1
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1925
    const/4 v0, 0x1

    const v1, 0x7f0a00a6

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1926
    const/4 v0, 0x2

    const v1, 0x7f0a0025

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/AlertDialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 1727
    packed-switch p1, :pswitch_data_0

    .line 1731
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1729
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->createDeleteDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1727
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->onCreateDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 778
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 781
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCursor:Landroid/database/Cursor;

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mLowBattDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mLowBattDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mLowBattDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mOptionPopupDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mOptionPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mOptionPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 790
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 793
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->dismiss()V

    .line 797
    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->registerBroadcastReceiverSDCard(Z)V

    .line 798
    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->registerBroadcastReceiverLowBattery(Z)V

    .line 800
    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->registerBroadcastReceiverVolume(Z)V

    .line 804
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 805
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 991
    const-string v0, "RecordedFileListPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isOnCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isOnVoIP(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->isGoogleTalkVideoChatRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 997
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00d0

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->showToast(Landroid/content/Context;II)V

    .line 1000
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getCurrentPlayingId()J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1001
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->stopPlay()V

    .line 1029
    :cond_1
    :goto_0
    return-void

    .line 1005
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mGotoMainByBackkey:Z

    if-nez v0, :cond_1

    .line 1010
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hideVolumePanel()V

    .line 1011
    iput-wide p4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    .line 1012
    iput p3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->curPos:I

    .line 1014
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-eqz v0, :cond_1

    .line 1015
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getCurrentPlayingId()J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1016
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->pausePlay()V

    goto :goto_0

    .line 1017
    :cond_3
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getCurrentPlayingId()J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-nez v0, :cond_4

    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1018
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->resumePlay()V

    goto :goto_0

    .line 1020
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedPositionBottom:I

    .line 1021
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->playItem()V

    .line 1022
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setFilenameAndDuration()V

    .line 1023
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    .line 1024
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->removeGroup(I)V

    .line 1025
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c

    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1340
    sparse-switch p1, :sswitch_data_0

    .line 1367
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 1342
    :sswitch_0
    const-string v2, "RecordedFileListPlayerActivity"

    const-string v3, "volume up"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iget v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mActivityState:I

    if-eqz v2, :cond_0

    .line 1347
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->showVolumePanel()V

    .line 1348
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->adjustVolume(I)V

    move v0, v1

    .line 1349
    goto :goto_1

    .line 1351
    :sswitch_1
    const-string v2, "RecordedFileListPlayerActivity"

    const-string v3, "volume down"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mActivityState:I

    if-eqz v2, :cond_0

    .line 1356
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->showVolumePanel()V

    .line 1357
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->adjustVolume(I)V

    move v0, v1

    .line 1358
    goto :goto_1

    .line 1362
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hideVolumePanel()V

    .line 1364
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->onCustomPrepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0

    .line 1340
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2069
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "onLongClick()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2071
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->ProgressHandler:Landroid/os/Handler;

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2072
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2073
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->ProgressHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2074
    return v2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 900
    invoke-virtual {p0, p1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setIntent(Landroid/content/Intent;)V

    .line 901
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 902
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1667
    if-nez p1, :cond_0

    .line 1668
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "onOptionsItemSelected item is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1720
    :goto_0
    return v0

    .line 1673
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-eqz v0, :cond_1

    .line 1675
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getCurrentPlayingId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1688
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/app/fm/listplayer/FMListUtil;->setCurrentSaveId(J)V

    .line 1690
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1720
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1678
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1680
    if-nez v0, :cond_2

    .line 1681
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v2, "onOptionsItemSelected item.getMenuInfo() is null"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1682
    goto :goto_0

    .line 1685
    :cond_2
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 1692
    :sswitch_0
    iget v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mActivityState:I

    if-ne v0, v1, :cond_3

    .line 1693
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->showDialog(I)V

    :goto_3
    move v0, v1

    .line 1699
    goto :goto_0

    .line 1695
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1696
    const-string v2, "ListType"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1697
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 1702
    :sswitch_1
    iget v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mActivityState:I

    if-nez v0, :cond_5

    .line 1703
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1704
    const-string v2, "ListType"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1705
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_4
    move v0, v1

    .line 1711
    goto :goto_0

    .line 1706
    :cond_5
    iget v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mActivityState:I

    if-ne v0, v1, :cond_4

    .line 1707
    iput-boolean v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->optionsItemCheck:Z

    .line 1708
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->createRenameDialog()Lcom/sec/android/app/fm/ui/RenameDialog;

    goto :goto_4

    .line 1713
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->finish()V

    goto :goto_2

    .line 1690
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f07014d -> :sswitch_0
        0x7f07014e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 809
    const-string v1, "RecordedFileListPlayerActivity"

    const-string v2, "onPause()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mLowBattDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 812
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mLowBattDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-eqz v1, :cond_1

    .line 819
    sget-object v1, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->removeOnPlayerStateChangedObserver(Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;)V

    .line 821
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 823
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->isFirst:Z

    .line 824
    return-void

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "RecordedFileListPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring exception while dismissing dialog:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1655
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->onCustomPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mMenu:Landroid/view/Menu;

    invoke-super {p0, v0}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 1658
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 846
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 847
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    sput-boolean v3, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mGotoMainByBackkey:Z

    .line 850
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-nez v0, :cond_0

    .line 851
    const-string v0, "RecordedFileListPlayerActivity"

    const-string v1, "mService is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.fm.listplayer.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 856
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->setOnPlayerStateChangedObserver(Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;)V

    .line 858
    iget v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mActivityState:I

    if-ne v0, v2, :cond_7

    .line 859
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->checkFileExist()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPaused()Z

    move-result v0

    if-nez v0, :cond_5

    .line 861
    :cond_1
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->release()V

    .line 862
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->changeMode(I)V

    .line 884
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setFilenameAndDuration()V

    .line 885
    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setProgress(Z)V

    .line 886
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setVolume()V

    .line 888
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 889
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getCurrentPlayingId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mCurrentSelectedId:J

    .line 891
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    if-eqz v0, :cond_4

    .line 893
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->notifyDataSetChanged()V

    .line 894
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->checkDisplayListPlayer_controller()V

    .line 896
    :cond_4
    return-void

    .line 864
    :cond_5
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 865
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setPauseButton()V

    .line 870
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 867
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setPlayButton()V

    goto :goto_1

    .line 872
    :cond_7
    iget v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mActivityState:I

    if-nez v0, :cond_2

    .line 873
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 874
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->initProgress()V

    .line 875
    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->changeMode(I)V

    .line 876
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 877
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setPauseButton()V

    .line 881
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mListAdapter:Lcom/sec/android/app/fm/data/RecordedFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 879
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->setPlayButton()V

    goto :goto_2
.end method

.method protected onStop()V
    .locals 6

    .prologue
    .line 828
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 829
    const-string v4, "RecordedFileListPlayerActivity"

    const-string v5, "onStop()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 832
    .local v3, pm:Landroid/os/PowerManager;
    const-string v4, "keyguard"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 834
    .local v2, km:Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 835
    .local v1, bScreenOn:Z
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 837
    .local v0, bLockScreen:Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 838
    sget-object v4, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 839
    sget-object v4, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mService:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->pausePlay()V

    .line 842
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2035
    iget-boolean v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mConsumeTouchEvent:Z

    if-ne v2, v1, :cond_2

    .line 2036
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2055
    :cond_0
    :goto_0
    return v0

    .line 2038
    :pswitch_0
    iput-boolean v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mTouchMovedWhileConsuming:Z

    goto :goto_0

    .line 2041
    :pswitch_1
    iput-boolean v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mConsumeTouchEvent:Z

    .line 2042
    iget-boolean v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mTouchMovedWhileConsuming:Z

    if-ne v2, v1, :cond_1

    .line 2043
    iput-boolean v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mTouchMovedWhileConsuming:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2046
    goto :goto_0

    .line 2050
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumebar:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mVolumebar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2051
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hideVolumePanel()V

    .line 2052
    iput-boolean v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mConsumeTouchEvent:Z

    move v0, v1

    .line 2053
    goto :goto_0

    .line 2036
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
