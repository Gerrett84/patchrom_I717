.class Landroid/widget/ScrollView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 1896
    iput-object p1, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ScrollView;Landroid/widget/ScrollView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1896
    invoke-direct {p0, p1}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x4

    const v9, 0x3ecccccd

    const/4 v8, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 1898
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1971
    :cond_0
    :goto_0
    return-void

    .line 1900
    :pswitch_0
    const/4 v1, 0x0

    .line 1901
    .local v1, offset:I
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #calls: Landroid/widget/ScrollView;->getScrollRange()I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$100(Landroid/widget/ScrollView;)I

    move-result v3

    .line 1903
    .local v3, range:I
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    #setter for: Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$202(Landroid/widget/ScrollView;I)I

    .line 1904
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$200(Landroid/widget/ScrollView;)I

    move-result v6

    iget-object v7, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionStartTime:I
    invoke-static {v7}, Landroid/widget/ScrollView;->access$400(Landroid/widget/ScrollView;)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x3e8

    #setter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$302(Landroid/widget/ScrollView;I)I

    .line 1906
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$200(Landroid/widget/ScrollView;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollStartTime:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$500(Landroid/widget/ScrollView;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollTimeInterval:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$600(Landroid/widget/ScrollView;)I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1909
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v5

    if-le v5, v8, :cond_1

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v5

    if-ge v5, v10, :cond_1

    .line 1910
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$800(Landroid/widget/ScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    #setter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$702(Landroid/widget/ScrollView;I)I

    .line 1918
    :goto_1
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$900(Landroid/widget/ScrollView;)I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 1919
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$700(Landroid/widget/ScrollView;)I

    move-result v5

    mul-int/lit8 v1, v5, -0x1

    .line 1928
    :goto_2
    if-gez v1, :cond_5

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mScrollY:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1000(Landroid/widget/ScrollView;)I

    move-result v5

    if-lez v5, :cond_5

    .line 1929
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5, v0, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1931
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1200(Landroid/widget/ScrollView;)Landroid/widget/ScrollView$HoverScrollHandler;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$1100(Landroid/widget/ScrollView;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1911
    :cond_1
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v5

    if-lt v5, v10, :cond_2

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_2

    .line 1912
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$800(Landroid/widget/ScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    #setter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$702(Landroid/widget/ScrollView;I)I

    goto :goto_1

    .line 1913
    :cond_2
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_3

    .line 1914
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$800(Landroid/widget/ScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    #setter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$702(Landroid/widget/ScrollView;I)I

    goto :goto_1

    .line 1916
    :cond_3
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$800(Landroid/widget/ScrollView;)I

    move-result v6

    #setter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$702(Landroid/widget/ScrollView;I)I

    goto :goto_1

    .line 1921
    :cond_4
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$700(Landroid/widget/ScrollView;)I

    move-result v5

    mul-int/lit8 v1, v5, 0x1

    goto :goto_2

    .line 1932
    :cond_5
    if-lez v1, :cond_6

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mScrollY:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1300(Landroid/widget/ScrollView;)I

    move-result v5

    if-ge v5, v3, :cond_6

    .line 1933
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5, v0, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1935
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1200(Landroid/widget/ScrollView;)Landroid/widget/ScrollView$HoverScrollHandler;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$1100(Landroid/widget/ScrollView;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1938
    :cond_6
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v2

    .line 1939
    .local v2, overscrollMode:I
    if-eqz v2, :cond_7

    if-ne v2, v4, :cond_8

    if-lez v3, :cond_8

    :cond_7
    move v0, v4

    .line 1942
    .local v0, canOverscroll:Z
    :cond_8
    if-eqz v0, :cond_c

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1400(Landroid/widget/ScrollView;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1943
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$900(Landroid/widget/ScrollView;)I

    move-result v5

    if-ne v5, v8, :cond_d

    .line 1944
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1945
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1600(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1946
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1600(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1955
    :cond_9
    :goto_3
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1600(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_b

    .line 1957
    :cond_a
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->invalidate()V

    .line 1959
    :cond_b
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #setter for: Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5, v4}, Landroid/widget/ScrollView;->access$1402(Landroid/widget/ScrollView;Z)Z

    .line 1962
    :cond_c
    if-nez v0, :cond_0

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1400(Landroid/widget/ScrollView;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1963
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #setter for: Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5, v4}, Landroid/widget/ScrollView;->access$1402(Landroid/widget/ScrollView;Z)Z

    goto/16 :goto_0

    .line 1948
    :cond_d
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$900(Landroid/widget/ScrollView;)I

    move-result v5

    if-ne v5, v4, :cond_9

    .line 1949
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1600(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1950
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1951
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_3

    .line 1898
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
