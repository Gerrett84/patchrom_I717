.class Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;
.super Ljava/lang/Object;
.source "RecordedFileListPlayerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDurationTime:D

.field private mHoverState:I

.field private mHoverWin:Landroid/widget/HoverPopupWindow;

.field private mMarginPoint:I

.field private mSeekBarMax:I

.field private mTime:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 557
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mSeekBarMax:I

    .line 568
    const/16 v0, 0x46

    iput v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mMarginPoint:I

    .line 570
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mDurationTime:D

    .line 572
    iput v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mHoverState:I

    .line 574
    iput-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mTime:Landroid/widget/TextView;

    .line 576
    iput-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mHoverWin:Landroid/widget/HoverPopupWindow;

    return-void
.end method

.method private updateProgressbarPreviewView(I)V
    .locals 7
    .parameter "progress"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 615
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, -0x28

    .line 616
    .local v0, offset_x:I
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 618
    .local v1, orientation:I
    if-ne v1, v4, :cond_1

    .line 619
    const/16 v2, 0x28

    iput v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mMarginPoint:I

    .line 623
    :goto_0
    iget v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mMarginPoint:I

    if-ge p1, v2, :cond_3

    .line 624
    iget v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mHoverState:I

    if-ne v2, v4, :cond_2

    .line 643
    :cond_0
    :goto_1
    return-void

    .line 621
    :cond_1
    const/16 v2, 0x46

    iput v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mMarginPoint:I

    goto :goto_0

    .line 626
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mTime:Landroid/widget/TextView;

    const v3, 0x7f02008d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 627
    iput v4, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mHoverState:I

    .line 642
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mHoverWin:Landroid/widget/HoverPopupWindow;

    const/16 v3, 0x41

    invoke-virtual {v2, v0, v3}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    goto :goto_1

    .line 628
    :cond_3
    iget v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mSeekBarMax:I

    iget v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mMarginPoint:I

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_4

    .line 629
    iget v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mHoverState:I

    if-eq v2, v6, :cond_0

    .line 631
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mTime:Landroid/widget/TextView;

    const v3, 0x7f02008e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 632
    iput v6, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mHoverState:I

    .line 633
    mul-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 635
    :cond_4
    iget v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mHoverState:I

    if-eq v2, v5, :cond_0

    .line 637
    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mTime:Landroid/widget/TextView;

    const v3, 0x7f02008c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 638
    iput v5, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mHoverState:I

    .line 639
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public onHoverChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter "seekBar"
    .parameter "hoverLevel"
    .parameter "fromUser"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mHoverWin:Landroid/widget/HoverPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mTime:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-wide v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mDurationTime:D

    int-to-double v4, p2

    mul-double/2addr v2, v4

    double-to-long v2, v2

    #calls: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hmsConvert(J)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$900(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    invoke-direct {p0, p2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->updateProgressbarPreviewView(I)V

    goto :goto_0
.end method

.method public onStartTrackingHover(Landroid/widget/SeekBar;I)V
    .locals 7
    .parameter "seekBar"
    .parameter "hoverLevel"

    .prologue
    .line 580
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$800()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getPlayerDuration()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mDurationTime:D

    .line 581
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mSeekBarMax:I

    .line 582
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mHoverState:I

    .line 584
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 586
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mTime:Landroid/widget/TextView;

    .line 588
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mHoverWin:Landroid/widget/HoverPopupWindow;

    .line 590
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mHoverWin:Landroid/widget/HoverPopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mTime:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    iget-wide v3, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mDurationTime:D

    int-to-double v5, p2

    mul-double/2addr v3, v5

    double-to-long v3, v3

    #calls: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hmsConvert(J)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$900(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mHoverWin:Landroid/widget/HoverPopupWindow;

    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->mTime:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    .line 596
    invoke-direct {p0, p2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$9;->updateProgressbarPreviewView(I)V

    goto :goto_0
.end method

.method public onStopTrackingHover(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 601
    return-void
.end method
