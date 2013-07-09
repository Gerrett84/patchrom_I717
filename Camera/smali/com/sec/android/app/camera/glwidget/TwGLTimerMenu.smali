.class public Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLTimerMenu.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final SCREEN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_WIDTH:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLTimerMenu"

.field private static final TEXT_POS_LEFT:I

.field private static final TEXT_POS_TOP:I

.field private static final TEXT_SIZE:I

.field private static final TIMER_HEIGHT:I

.field private static final TIMER_SOUND:I

.field private static final TIMER_WIDTH:I

.field private static final TIMER_WIDTH_DELTA:I


# instance fields
.field private mBackground:Lcom/sec/android/glview/TwGLViewGroup;

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mTimerValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const v0, 0x7f070268

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_WIDTH:I

    .line 23
    const v0, 0x7f070269

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_HEIGHT:I

    .line 24
    const v0, 0x7f0700b7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_WIDTH_DELTA:I

    .line 25
    const v0, 0x7f070099

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->SCREEN_WIDTH:I

    .line 26
    const v0, 0x7f07009a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->SCREEN_HEIGHT:I

    .line 27
    const v0, 0x7f07026a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TEXT_SIZE:I

    .line 28
    const v0, 0x7f07026b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TEXT_POS_LEFT:I

    .line 29
    const v0, 0x7f07026c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TEXT_POS_TOP:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 11
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 38
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 40
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v8, v0, 0x2

    .line 41
    .local v8, left:I
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v9, v0, 0x2

    .line 46
    .local v9, top:I
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v2, v8

    int-to-float v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mBackground:Lcom/sec/android/glview/TwGLViewGroup;

    .line 47
    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mBackground:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const v7, 0x7f02020e

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    invoke-virtual {v10, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 48
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TEXT_POS_LEFT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TEXT_POS_TOP:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_WIDTH:I

    add-int/lit8 v4, v4, -0x19

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_HEIGHT:I

    add-int/lit8 v5, v5, -0x19

    int-to-float v5, v5

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TEXT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mText:Lcom/sec/android/glview/TwGLText;

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mText:Lcom/sec/android/glview/TwGLText;

    const/16 v1, 0xdc

    const/16 v2, 0xdc

    const/16 v3, 0xdc

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mBackground:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mBackground:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mBackground:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mBackground:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mBackground:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 99
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerValue:I

    if-lez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->cancelShutterTimer()V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenu()V

    .line 102
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->setTouchHandled(Z)V

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenu()V

    .line 107
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->setTouchHandled(Z)V

    .line 108
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mText:Lcom/sec/android/glview/TwGLText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 116
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    .line 127
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 131
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    .line 142
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 113
    return-void
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenu()V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->setTouchHandled(Z)V

    .line 91
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 92
    return-void
.end method

.method public updateTime(I)V
    .locals 8
    .parameter "value"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    const-string v0, "TwGLTimerMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerValue:I

    .line 62
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerValue:I

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-ne v0, v6, :cond_3

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerValue:I

    if-ge v0, v7, :cond_3

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    goto :goto_0

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    goto :goto_0

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    if-eq v0, v5, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    if-ne v0, v6, :cond_6

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerValue:I

    if-ge v0, v7, :cond_6

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    goto :goto_0

    .line 81
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    goto :goto_0
.end method
