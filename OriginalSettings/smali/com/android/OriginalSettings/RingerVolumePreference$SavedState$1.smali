.class final Lcom/android/OriginalSettings/RingerVolumePreference$SavedState$1;
.super Ljava/lang/Object;
.source "RingerVolumePreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 530
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 532
    new-instance v0, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;

    invoke-direct {v0, p1}, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 536
    new-array v0, p1, [Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState$1;->newArray(I)[Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;

    move-result-object v0

    return-object v0
.end method
