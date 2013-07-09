.class public final Lcom/android/internal/telephony/gsm/EccTable;
.super Ljava/lang/Object;
.source "EccTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    }
.end annotation


# static fields
.field static final FILE_ECC_LIST:Ljava/lang/String; = "/data/csc/ecclists.dat"

.field private static final LOCAL_DEBUG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static table:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/EccTable$EccEntry;",
            ">;"
        }
    .end annotation
.end field

.field static updated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/EccTable;->updated:Z

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    .line 313
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, ""

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "450"

    const-string v3, "112,911,119"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "234"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "235"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "272"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "204"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,08,110,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "724"

    const-string v3, "112,911,190"

    const-string v4, "112,911,999,000,08,110,118,119,190"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "33402"

    const-string v3, "112,911,060"

    const-string v4, "112,911,999,000,08,110,118,119,060"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "33403"

    const-string v3, "112,911,066"

    const-string v4, "112,911,999,000,08,110,118,119,066"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "748"

    const-string v3, "112,911,104,109"

    const-string v4, "112,911,999,000,08,110,118,119,104,109"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "732101"

    const-string v3, "112,911"

    const-string v4, "112,911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "732123"

    const-string v3, "112,123"

    const-string v4, "112,123"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "73212"

    const-string v3, "112,123"

    const-string v4, "112,123"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "732103"

    const-string v3, "112,123"

    const-string v4, "112,123"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "732111"

    const-string v3, "112,123"

    const-string v4, "112,123"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "730"

    const-string v3, "112,911,133"

    const-string v4, "112,911,999,000,08,110,118,119,133"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "71606"

    const-string v3, "112,911,105"

    const-string v4, "112,911,999,000,08,110,118,119,105"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "73406"

    const-string v3, "112,911,*1,*171"

    const-string v4, "112,911,999,000,08,110,118,119,*1,*171"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "70403"

    const-string v3, "112,911,122"

    const-string v4, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "70604"

    const-string v3, "112,911,122"

    const-string v4, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "71030"

    const-string v3, "112,911,122"

    const-string v4, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "710300"

    const-string v3, "112,911,122"

    const-string v4, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "71401"

    const-string v3, "112,911,104"

    const-string v4, "112,911,999,000,08,110,118,119,104"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310026"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310160"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310170"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310200"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310210"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310220"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310230"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310240"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310250"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310260"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310270"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310280"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310290"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310310"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310330"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310490"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310580"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310660"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310800"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310026"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "310026"

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "454"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "505"

    const-string v3, "112,911,000"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "530"

    const-string v3, "112,911,000,111"

    const-string v4, "112,911,999,000,08,110,118,119,111"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "460"

    const-string v3, "112,911,999,000,08,110,118,119,120,122"

    const-string v4, "112,911,999,000,08,110,118,119,120,122"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "466"

    const-string v3, "112,911,110,119"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "440"

    const-string v3, "112,911,110,118,119"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "441"

    const-string v3, "112,911,110,118,119"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "424"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "430"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "431"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "42501"

    const-string v3, "112,911,100"

    const-string v4, "112,911,100"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "42502"

    const-string v3, "112,911"

    const-string v4, "112,911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "42503"

    const-string v3, "112,911,100"

    const-string v4, "112,911,100"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "42505"

    const-string v3, "112,911"

    const-string v4, "112,911"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    const-string v2, "620"

    const-string v3, "112,911,999"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    sget-object v0, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 528
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static emergencyNumbersForPLMN(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "plmn"
    .parameter "withSIM"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/EccTable;->entryForPLMN(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    move-result-object v0

    .line 101
    .local v0, entry:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    if-nez v0, :cond_0

    .line 102
    const-string v1, ""

    .line 107
    :goto_0
    return-object v1

    .line 104
    :cond_0
    if-eqz p1, :cond_1

    .line 105
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    goto :goto_0
.end method

.method private static entryForPLMN(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    .locals 5
    .parameter "plmn"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 64
    const/4 v0, 0x0

    .line 68
    .local v0, index:I
    if-eqz p0, :cond_1

    .line 69
    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-direct {v1, p0, v3, v3}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v1, m:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 73
    if-gez v0, :cond_1

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 75
    new-instance v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    .end local v1           #m:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .restart local v1       #m:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 80
    :cond_0
    if-gez v0, :cond_1

    .line 81
    const/4 v0, 0x0

    .line 86
    .end local v1           #m:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    return-object v2
.end method

.method public static printEccTable()V
    .locals 8

    .prologue
    .line 283
    const-string v2, "GSM"

    const-string v3, "================ ECC TABLE ================"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 285
    sget-object v2, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    .line 287
    .local v1, m:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    const-string v2, "GSM"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "index=%d\n    plmn=%s\n    emergencyNumberWithSIM=%s\n    emergencyNumberWithoutSIM=%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->plmn:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    .end local v1           #m:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    :cond_0
    const-string v2, "GSM"

    const-string v3, "==========================================="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void
.end method

.method public static updateEccTable(Ljava/lang/String;)V
    .locals 15
    .parameter "customerSpec"

    .prologue
    .line 178
    const/4 v7, 0x0

    .line 179
    .local v7, reader:Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 180
    .local v9, str:Ljava/lang/String;
    const/4 v6, 0x0

    .line 181
    .local v6, plmn:Ljava/lang/String;
    const/4 v2, 0x0

    .line 182
    .local v2, emergencyNumberWithSIM:Ljava/lang/String;
    const/4 v3, 0x0

    .line 186
    .local v3, emergencyNumberWithoutSIM:Ljava/lang/String;
    :try_start_0
    sget-boolean v10, Lcom/android/internal/telephony/gsm/EccTable;->updated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    if-nez v10, :cond_0

    if-nez p0, :cond_2

    .line 266
    :cond_0
    if-eqz v7, :cond_1

    .line 267
    :try_start_1
    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 274
    :cond_1
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v1

    .line 271
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_2
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "customerSpec: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 194
    .end local v7           #reader:Ljava/io/BufferedReader;
    .local v8, reader:Ljava/io/BufferedReader;
    if-nez v8, :cond_4

    .line 266
    if-eqz v8, :cond_3

    .line 267
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_1
    move-object v7, v8

    .line 272
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 269
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 271
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 198
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_4
    const-string v10, "\n"

    const/4 v11, 0x3

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, conventionalSpec:[Ljava/lang/String;
    array-length v10, v0

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    .line 201
    const/4 v10, 0x0

    aget-object v2, v0, v10

    .line 202
    const/4 v10, 0x1

    aget-object v3, v0, v10

    .line 203
    const-string v10, ""

    invoke-static {v10, v2, v3}, Lcom/android/internal/telephony/gsm/EccTable;->updateEmergencyNumbersForPLMN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/gsm/EccTable;->printEccTable()V

    .line 247
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/internal/telephony/gsm/EccTable;->updated:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 266
    if-eqz v8, :cond_6

    .line 267
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    move-object v7, v8

    .line 272
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 206
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_7
    :goto_2
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 207
    const/4 v2, 0x0

    .line 208
    const/4 v3, 0x0

    .line 211
    move-object v6, v9

    .line 214
    const-string v10, "GSM"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "updateEccTable: plmn=%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 219
    if-eqz v9, :cond_8

    .line 221
    move-object v2, v9

    .line 224
    const-string v10, "GSM"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "updateEccTable: emergencyNumberWithSIM=%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_8
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 230
    if-eqz v9, :cond_9

    .line 232
    move-object v3, v9

    .line 235
    const-string v10, "GSM"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "updateEccTable: emergencyNumberWithoutSIM=%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_9
    invoke-static {v6, v2, v3}, Lcom/android/internal/telephony/gsm/EccTable;->updateEmergencyNumbersForPLMN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_2

    .line 250
    .end local v0           #conventionalSpec:[Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v7, v8

    .line 253
    .end local v8           #reader:Ljava/io/BufferedReader;
    .local v4, fnfe:Ljava/io/FileNotFoundException;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :goto_3
    :try_start_7
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() FileNotFoundException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 266
    if-eqz v7, :cond_1

    .line 267
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 269
    :catch_3
    move-exception v1

    .line 271
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 269
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #fnfe:Ljava/io/FileNotFoundException;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v0       #conventionalSpec:[Ljava/lang/String;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    .line 271
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 273
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 257
    .end local v0           #conventionalSpec:[Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v5

    .line 259
    .local v5, ioe:Ljava/io/IOException;
    :goto_4
    :try_start_9
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 266
    if-eqz v7, :cond_1

    .line 267
    :try_start_a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    .line 269
    :catch_6
    move-exception v1

    .line 271
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateEccTable() Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 264
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 266
    :goto_5
    if-eqz v7, :cond_a

    .line 267
    :try_start_b
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 272
    :cond_a
    :goto_6
    throw v10

    .line 269
    :catch_7
    move-exception v1

    .line 271
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateEccTable() Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 264
    .end local v1           #e:Ljava/lang/Exception;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 257
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v5

    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 250
    :catch_9
    move-exception v4

    goto/16 :goto_3
.end method

.method public static updateEmergencyNumbersForPLMN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "plmn"
    .parameter "emergencyNumberWithSIM"
    .parameter "emergencyNumberWithoutSIM"

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 119
    if-nez p0, :cond_0

    move v4, v5

    .line 172
    :goto_0
    return v4

    .line 122
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-direct {v2, p0, v6, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v2, m:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    .line 126
    .local v3, updateIndex:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 127
    :cond_1
    const/4 v0, 0x0

    .line 129
    .local v0, defaultIndex:I
    if-lez v3, :cond_6

    .line 130
    move v0, v3

    .line 139
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 140
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    iget-object p1, v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    .line 142
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 143
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    iget-object p2, v4, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    .line 148
    .end local v0           #defaultIndex:I
    :cond_4
    const-string v4, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateEmergencyNumbersForPLMN: updateIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", plmn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", withSIM="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", withoutSIM="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-gez v3, :cond_8

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    move v4, v5

    .line 156
    goto/16 :goto_0

    .line 131
    .restart local v0       #defaultIndex:I
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_2

    .line 132
    new-instance v2, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    .end local v2           #m:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v6, v6}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .restart local v2       #m:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 135
    if-gez v0, :cond_2

    .line 136
    const/4 v0, 0x0

    goto :goto_1

    .line 158
    .end local v0           #defaultIndex:I
    :cond_7
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 172
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 162
    :cond_8
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    .line 164
    .local v1, entry:Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 165
    iput-object p1, v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    .line 166
    :cond_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 167
    iput-object p2, v1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    .line 169
    :cond_a
    sget-object v4, Lcom/android/internal/telephony/gsm/EccTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
