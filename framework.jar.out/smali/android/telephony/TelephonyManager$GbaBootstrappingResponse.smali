.class public Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GbaBootstrappingResponse"
.end annotation


# instance fields
.field public auts:[B

.field public res:[B

.field final synthetic this$0:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter "bundle"

    .prologue
    .line 1587
    iput-object p1, p0, Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;->this$0:Landroid/telephony/TelephonyManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1588
    const-string/jumbo v0, "res"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;->res:[B

    .line 1589
    const-string v0, "auts"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;->auts:[B

    .line 1590
    return-void
.end method
