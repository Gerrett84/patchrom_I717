.class public Landroid/hardware/scontext/SContext;
.super Ljava/lang/Object;
.source "SContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_APPROACH:I = 0x1

.field public static final TYPE_AUTO_ROTATION:I = 0x6

.field public static final TYPE_MOTION:I = 0x4

.field public static final TYPE_MOVEMENT:I = 0x5

.field public static final TYPE_PEDOMETER:I = 0x2

.field public static final TYPE_STEP_COUNT_ALERT:I = 0x3


# instance fields
.field private mDeviceType:I

.field private mHeight:F

.field private mStepCount:I

.field private mType:I

.field private mWeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Landroid/hardware/scontext/SContext$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 50
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mStepCount:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mDeviceType:I

    .line 106
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceType()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Landroid/hardware/scontext/SContext;->mDeviceType:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Landroid/hardware/scontext/SContext;->mHeight:F

    return v0
.end method

.method public getStepCount()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Landroid/hardware/scontext/SContext;->mStepCount:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    return v0
.end method

.method public getWeight()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Landroid/hardware/scontext/SContext;->mWeight:F

    return v0
.end method

.method public setDeviceType(I)V
    .locals 0
    .parameter "devicetype"

    .prologue
    .line 83
    iput p1, p0, Landroid/hardware/scontext/SContext;->mDeviceType:I

    .line 84
    return-void
.end method

.method public setStepCount(I)V
    .locals 0
    .parameter "stepcount"

    .prologue
    .line 61
    iput p1, p0, Landroid/hardware/scontext/SContext;->mStepCount:I

    .line 62
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 53
    iput p1, p0, Landroid/hardware/scontext/SContext;->mType:I

    .line 54
    return-void
.end method

.method public setUserBodyInfo(FF)V
    .locals 0
    .parameter "height"
    .parameter "weight"

    .prologue
    .line 70
    iput p1, p0, Landroid/hardware/scontext/SContext;->mHeight:F

    .line 71
    iput p2, p0, Landroid/hardware/scontext/SContext;->mWeight:F

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 97
    iget v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/hardware/scontext/SContext;->mStepCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Landroid/hardware/scontext/SContext;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return-void
.end method
