.class public Landroid/os/DVFSHelper;
.super Ljava/lang/Object;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DVFSHelper$PackageInfo;
    }
.end annotation


# static fields
.field private static final BOOST_ACTION_DVFS_ACQUIRE:Ljava/lang/String; = "com.sec.android.intent.action.DVFS_BOOSTER"

.field private static final BOOST_ACTION_FACTORY_CPU_LOCK:Ljava/lang/String; = "com.sec.android.intent.action.DVFS_FACTORY_CPU_LOCK"

.field private static final BOOST_ACTION_LCD_FRAME_RATE:Ljava/lang/String; = "com.sec.android.intent.action.DVFS_LCD_FRAME_RATE"

.field private static final BOOST_ACTION_RELEASE:Ljava/lang/String; = "com.sec.android.intent.action.DVFS_BOOSTER_RELEASE"

.field private static final BOOST_ACTION_UI_RENDER_RATE:Ljava/lang/String; = "com.sec.android.intent.action.DVFS_UI_RENDER_RATE"

.field private static final BOOST_PERMISSION:Ljava/lang/String; = "com.sec.android.app.twdvfs.DVFS_BOOSTER_PERMISSION"

.field private static final BOOST_TIME_INDEFINITE:I = 0x100

.field public static final BOOST_TYPE_CPU_CORE:I = 0x6

.field public static final BOOST_TYPE_FACTORY_LOCK:I = 0x2

.field public static final BOOST_TYPE_LCD_FRAME_RATE:I = 0x4

.field public static final BOOST_TYPE_MP_DECISION:I = 0x3

.field public static final BOOST_TYPE_NONE:I = 0x0

.field public static final BOOST_TYPE_TOUCH:I = 0x1

.field public static final BOOST_TYPE_UI_RENDER_RATE:I = 0x5

.field public static final BO_BUS_MAX:J = 0x8L

.field public static final BO_CPU_CORE_NUM_MAX:J = 0x10L

.field public static final BO_CPU_MAX:J = 0x2L

.field public static final BO_CUSTOM_VALUE:J = 0x20L

.field public static final BO_GPU_MAX:J = 0x4L

.field private static final LOG_TAG:Ljava/lang/String; = "DVFSHelper"

.field public static final PACKAGES_FOR_BOOST_ALL_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo;

.field public static final PACKAGES_FOR_LCD_FRAME_RATE_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo;

.field private static final isEngBinary:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomValue:I

.field private mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentExtra:Landroid/content/Intent;

.field private mOption:J

.field private mPermissionGranted:Z

.field private mPkgName:Ljava/lang/String;

.field private mRandom:Ljava/util/Random;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 53
    new-array v0, v4, [Landroid/os/DVFSHelper$PackageInfo;

    sput-object v0, Landroid/os/DVFSHelper;->PACKAGES_FOR_LCD_FRAME_RATE_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo;

    .line 57
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    .line 59
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/os/DVFSHelper$PackageInfo;

    new-instance v1, Landroid/os/DVFSHelper$PackageInfo;

    const-string v2, "com.aurorasoftworks.quadrant.ui.standard"

    invoke-direct {v1, v2, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.aurorasoftworks.quadrant.ui.advanced"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.aurorasoftworks.quadrant.ui.professional"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.redlicense.benchmark.sqlite"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.greenecomputing.linpack"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.glbenchmark.glbenchmark25"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.glbenchmark.glbenchmark21"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "ca.primatelabs.geekbench2"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.eembc.coremark"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.flexycore.caffeinemark"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.smartbench.twelve"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/DVFSHelper;->PACKAGES_FOR_BOOST_ALL_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 6
    .parameter "context"
    .parameter "type"
    .parameter "option"

    .prologue
    .line 78
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 4
    .parameter "context"
    .parameter "packageName"
    .parameter "type"
    .parameter "option"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    .line 44
    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 45
    iput v2, p0, Landroid/os/DVFSHelper;->mType:I

    .line 46
    iput v3, p0, Landroid/os/DVFSHelper;->mId:I

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/DVFSHelper;->mOption:J

    .line 48
    iput v2, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    .line 49
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mRandom:Ljava/util/Random;

    .line 86
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-object p1, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 91
    const-string v0, "com.sec.android.app.twdvfs.DVFS_BOOSTER_PERMISSION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    .line 94
    :cond_1
    if-eqz p2, :cond_2

    .line 95
    iput-object p2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 99
    :goto_1
    iput p3, p0, Landroid/os/DVFSHelper;->mType:I

    .line 100
    iput-wide p4, p0, Landroid/os/DVFSHelper;->mOption:J

    .line 101
    invoke-direct {p0}, Landroid/os/DVFSHelper;->getRandomNum()I

    move-result v0

    iput v0, p0, Landroid/os/DVFSHelper;->mId:I

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJI)V
    .locals 4
    .parameter "context"
    .parameter "packageName"
    .parameter "type"
    .parameter "option"
    .parameter "customValue"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    .line 44
    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 45
    iput v2, p0, Landroid/os/DVFSHelper;->mType:I

    .line 46
    iput v3, p0, Landroid/os/DVFSHelper;->mId:I

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/DVFSHelper;->mOption:J

    .line 48
    iput v2, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    .line 49
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mRandom:Ljava/util/Random;

    .line 106
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 110
    :cond_0
    iput-object p1, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 111
    const-string v0, "com.sec.android.app.twdvfs.DVFS_BOOSTER_PERMISSION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    .line 115
    :cond_1
    if-nez p2, :cond_2

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 121
    :goto_1
    iput p3, p0, Landroid/os/DVFSHelper;->mType:I

    .line 122
    iput-wide p4, p0, Landroid/os/DVFSHelper;->mOption:J

    .line 123
    invoke-direct {p0}, Landroid/os/DVFSHelper;->getRandomNum()I

    move-result v0

    iput v0, p0, Landroid/os/DVFSHelper;->mId:I

    .line 124
    iput p6, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    goto :goto_0

    .line 118
    :cond_2
    iput-object p2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    goto :goto_1
.end method

.method private getRandomNum()I
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Landroid/os/DVFSHelper;->mRandom:Ljava/util/Random;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private prepareIntent()Landroid/content/Intent;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    .line 260
    iget v6, p0, Landroid/os/DVFSHelper;->mType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 261
    const-string v6, "DVFSHelper"

    const-string v7, "prepareIntent:: BOOST_TYPE_TOUCH"

    invoke-virtual {p0, v6, v7}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 264
    .local v0, boostIntent:Landroid/content/Intent;
    const-string v6, "com.sec.android.intent.action.DVFS_BOOSTER"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    iget-wide v6, p0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v8, 0x2

    and-long/2addr v6, v8

    cmp-long v6, v6, v10

    if-eqz v6, :cond_0

    .line 267
    const-string v6, "CPU"

    const-string v7, "MAX"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    :cond_0
    iget-wide v6, p0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v8, 0x4

    and-long/2addr v6, v8

    cmp-long v6, v6, v10

    if-eqz v6, :cond_1

    .line 270
    const-string v6, "GPU"

    const-string v7, "MAX"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    :cond_1
    iget-wide v6, p0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v8, 0x8

    and-long/2addr v6, v8

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    .line 273
    const-string v6, "BUS"

    const-string v7, "MAX"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    :cond_2
    const-string v6, "PACKAGE"

    iget-object v7, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v6, "ID"

    iget v7, p0, Landroid/os/DVFSHelper;->mId:I

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    iget-object v6, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-eqz v6, :cond_5

    .line 280
    iget-object v6, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 281
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "CPU"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, cpuOption:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 283
    const-string v6, "CPU"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    :cond_3
    const-string v6, "GPU"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, gpuOption:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 287
    const-string v6, "GPU"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    :cond_4
    const-string v6, "BUS"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, busOption:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 291
    const-string v5, "BUS"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    .end local v0           #boostIntent:Landroid/content/Intent;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #busOption:Ljava/lang/String;
    .end local v3           #cpuOption:Ljava/lang/String;
    .end local v4           #gpuOption:Ljava/lang/String;
    :cond_5
    :goto_0
    return-object v0

    .line 296
    :cond_6
    iget v6, p0, Landroid/os/DVFSHelper;->mType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 297
    const-string v5, "DVFSHelper"

    const-string v6, "prepareIntent:: BOOST_TYPE_FACTORY_LOCK"

    invoke-virtual {p0, v5, v6}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    .restart local v0       #boostIntent:Landroid/content/Intent;
    const-string v5, "com.sec.android.intent.action.DVFS_FACTORY_CPU_LOCK"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 304
    .end local v0           #boostIntent:Landroid/content/Intent;
    :cond_7
    iget v6, p0, Landroid/os/DVFSHelper;->mType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_9

    .line 305
    const-string v5, "DVFSHelper"

    const-string v6, "prepareIntent:: BOOST_TYPE_LCD_FRAME_RATE"

    invoke-virtual {p0, v5, v6}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 308
    .restart local v0       #boostIntent:Landroid/content/Intent;
    const-string v5, "com.sec.android.intent.action.DVFS_LCD_FRAME_RATE"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v5, "PACKAGE"

    iget-object v6, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v5, "ID"

    iget v6, p0, Landroid/os/DVFSHelper;->mId:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    iget v5, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    .line 313
    const-string v5, "RATE"

    const/16 v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v5, "DVFSHelper"

    const-string v6, "prepareIntent:: BOOST_TYPE_LCD_FRAME_RATE : Put MAX Value of 60"

    invoke-virtual {p0, v5, v6}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_8
    const-string v5, "RATE"

    iget v6, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v5, "DVFSHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareIntent:: BOOST_TYPE_LCD_FRAME_RATE : Put Custom Value of : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    .end local v0           #boostIntent:Landroid/content/Intent;
    :cond_9
    iget v6, p0, Landroid/os/DVFSHelper;->mType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    .line 321
    const-string v6, "DVFSHelper"

    const-string v7, "prepareIntent:: BOOST_TYPE_MP_DECISION"

    invoke-virtual {p0, v6, v7}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .line 324
    goto/16 :goto_0

    .line 325
    :cond_a
    iget v6, p0, Landroid/os/DVFSHelper;->mType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_b

    .line 326
    const-string v5, "DVFSHelper"

    const-string v6, "prepareIntent:: BOOST_TYPE_UI_RENDER_RATE / 30fps"

    invoke-virtual {p0, v5, v6}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 329
    .restart local v0       #boostIntent:Landroid/content/Intent;
    const-string v5, "com.sec.android.intent.action.DVFS_UI_RENDER_RATE"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v5, "RATE"

    const-string v6, "30"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 333
    .end local v0           #boostIntent:Landroid/content/Intent;
    :cond_b
    iget v6, p0, Landroid/os/DVFSHelper;->mType:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_d

    .line 334
    const-string v5, "DVFSHelper"

    const-string v6, "prepareIntent:: BOOST_TYPE_CPU_CORE"

    invoke-virtual {p0, v5, v6}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 337
    .restart local v0       #boostIntent:Landroid/content/Intent;
    const-string v5, "com.sec.android.intent.action.DVFS_BOOSTER"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v5, "PACKAGE"

    iget-object v6, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v5, "ID"

    iget v6, p0, Landroid/os/DVFSHelper;->mId:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    iget-wide v5, p0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v7, 0x10

    and-long/2addr v5, v7

    cmp-long v5, v5, v10

    if-eqz v5, :cond_c

    .line 342
    const-string v5, "CPU_CORE_NUM"

    const-string v6, "MAX"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 343
    :cond_c
    iget-wide v5, p0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v7, 0x20

    and-long/2addr v5, v7

    cmp-long v5, v5, v10

    if-eqz v5, :cond_5

    .line 344
    const-string v5, "CPU_CORE_NUM"

    iget v6, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .end local v0           #boostIntent:Landroid/content/Intent;
    :cond_d
    move-object v0, v5

    .line 350
    goto/16 :goto_0
.end method


# virtual methods
.method public acquire()V
    .locals 4

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string v0, "DVFSHelper"

    const-string v1, "acquire::"

    invoke-virtual {p0, v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget v0, p0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 144
    iget v0, p0, Landroid/os/DVFSHelper;->mId:I

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Landroid/os/DVFSHelper;->release()V

    .line 151
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Landroid/os/DVFSHelper;->prepareIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    .line 152
    iget v0, p0, Landroid/os/DVFSHelper;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/os/DVFSHelper;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 155
    :cond_2
    const-string v0, "DVFSHelper"

    const-string v1, "acquire:: putting -1 for LCD frame rate OR CPU Core  request."

    invoke-virtual {p0, v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "DURATION"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    :cond_3
    iget-wide v0, p0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "DURATION"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :cond_4
    iget-object v0, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public acquire(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 176
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string v0, "DVFSHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquire:: timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget v0, p0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 187
    iget v0, p0, Landroid/os/DVFSHelper;->mId:I

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0}, Landroid/os/DVFSHelper;->release()V

    .line 193
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Landroid/os/DVFSHelper;->prepareIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    .line 196
    const/16 v0, 0x100

    if-eq p1, v0, :cond_2

    .line 197
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "DURATION"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    :cond_2
    iget-object v0, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public addExtraOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 249
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 252
    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    return-void
.end method

.method public cancelExtraOptions()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 257
    return-void
.end method

.method public logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 364
    sget-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    if-eqz v0, :cond_0

    .line 365
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 208
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const-string v0, "DVFSHelper"

    const-string v1, "release::"

    invoke-virtual {p0, v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget v0, p0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 219
    iget v0, p0, Landroid/os/DVFSHelper;->mId:I

    if-eqz v0, :cond_0

    .line 224
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    .line 225
    iget v0, p0, Landroid/os/DVFSHelper;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 226
    const-string v0, "DVFSHelper"

    const-string v1, "release:: BOOST_TYPE_UI_RENDER_RATE / 60fps"

    invoke-virtual {p0, v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.DVFS_UI_RENDER_RATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "RATE"

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    :goto_1
    iget-object v0, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 229
    :cond_2
    iget v0, p0, Landroid/os/DVFSHelper;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 230
    const-string v0, "DVFSHelper"

    const-string v1, "release:: BOOST_TYPE_LCD_FRAME_RATE / 60fps"

    invoke-virtual {p0, v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.DVFS_LCD_FRAME_RATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "RATE"

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "PACKAGE"

    iget-object v2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "ID"

    iget v2, p0, Landroid/os/DVFSHelper;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "DURATION"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 237
    :cond_3
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.DVFS_BOOSTER_RELEASE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "PACKAGE"

    iget-object v2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "ID"

    iget v2, p0, Landroid/os/DVFSHelper;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 214
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
