.class public abstract Landroid/view/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowOrientationListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final localLOGV:Z

.field private static sCurrentAppOrientation:I

.field private static sCurrentRotation:I


# instance fields
.field private mContext:Landroid/content/Context;

.field mCurrentRotation:I

.field private mEnabled:Z

.field mLogEnabled:Z

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mbResultFaceDectection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;I)V

    .line 80
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "rate"

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v3, p0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    .line 94
    const-string/jumbo v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 95
    iput p2, p0, Landroid/view/WindowOrientationListener;->mRate:I

    .line 96
    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 97
    iput-object p1, p0, Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 99
    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1}, Landroid/hardware/SensorManager;->getSupportedFunction()I

    move-result v0

    .line 100
    .local v0, nfeature:I
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    and-int/lit8 v1, v0, 0x2

    if-ne v1, v4, :cond_3

    .line 103
    :cond_0
    if-ne p2, v3, :cond_1

    .line 104
    iput v4, p0, Landroid/view/WindowOrientationListener;->mRate:I

    .line 111
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_2

    .line 114
    new-instance v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-direct {v1, p0, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;-><init>(Landroid/view/WindowOrientationListener;I)V

    iput-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    .line 116
    :cond_2
    return-void

    .line 108
    :cond_3
    if-ne p2, v3, :cond_1

    .line 109
    const/4 v1, 0x3

    iput v1, p0, Landroid/view/WindowOrientationListener;->mRate:I

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/view/WindowOrientationListener;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrentRotation()I
    .locals 1

    .prologue
    .line 963
    sget v0, Landroid/view/WindowOrientationListener;->sCurrentRotation:I

    return v0
.end method

.method public static setCurrentAppOrientation(I)V
    .locals 0
    .parameter "appOrientation"

    .prologue
    .line 958
    sput p0, Landroid/view/WindowOrientationListener;->sCurrentAppOrientation:I

    .line 959
    return-void
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 140
    const-string v0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 144
    const-string v0, "WindowOrientationListener"

    const-string v1, "WindowOrientationListener disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 146
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    #calls: Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V
    invoke-static {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->access$000(Landroid/view/WindowOrientationListener$SensorEventListenerImpl;)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    goto :goto_0
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 124
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 125
    const-string v0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    if-nez v0, :cond_0

    .line 129
    const-string v0, "WindowOrientationListener"

    const-string v1, "WindowOrientationListener enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    iget-object v2, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Landroid/view/WindowOrientationListener;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    goto :goto_0
.end method

.method public getProposedRotation()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 170
    iget-boolean v1, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 171
    iget-boolean v1, p0, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 173
    const-string v1, "WindowOrientationListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProposedRotation facedetection :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotation()I

    move-result v0

    goto :goto_0
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public setCurrentRotation(I)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 157
    iput p1, p0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    .line 158
    sput p1, Landroid/view/WindowOrientationListener;->sCurrentRotation:I

    .line 159
    return-void
.end method

.method public setFaceDetectionResult(Z)V
    .locals 0
    .parameter "ResultFaceDectection"

    .prologue
    .line 183
    iput-boolean p1, p0, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 184
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 212
    iput-boolean p1, p0, Landroid/view/WindowOrientationListener;->mLogEnabled:Z

    .line 213
    return-void
.end method
