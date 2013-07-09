.class public final Lcom/android/internal/telephony/uicc/UsimServiceTable;
.super Lcom/android/internal/telephony/uicc/IccServiceTable;
.source "UsimServiceTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;,
        Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;
    }
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "table"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccServiceTable;-><init>([B)V

    .line 190
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const-string v0, "UsimServiceTable"

    return-object v0
.end method

.method protected getValues()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->values()[Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z
    .locals 1
    .parameter "service"

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->ordinal()I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/internal/telephony/uicc/IccServiceTable;->isAvailable(I)Z

    move-result v0

    return v0
.end method

.method public isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z
    .locals 1
    .parameter "service"

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->ordinal()I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/internal/telephony/uicc/IccServiceTable;->isSSTActive(I)Z

    move-result v0

    return v0
.end method

.method public isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z
    .locals 1
    .parameter "service"

    .prologue
    .line 197
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->ordinal()I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/internal/telephony/uicc/IccServiceTable;->isSSTAvailable(I)Z

    move-result v0

    return v0
.end method
