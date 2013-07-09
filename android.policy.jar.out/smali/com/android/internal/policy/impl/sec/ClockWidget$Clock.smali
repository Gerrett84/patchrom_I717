.class public Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;
.super Landroid/widget/FrameLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Clock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$FormatChangeObserver;,
        Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$TimeChangedReceiver;
    }
.end annotation


# instance fields
.field private homeDateMessage:Ljava/lang/CharSequence;

.field private homeTimeMessage:Ljava/lang/CharSequence;

.field private localDateMessage:Ljava/lang/CharSequence;

.field private localTimeMessage:Ljava/lang/CharSequence;

.field private mAM:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mDate_Month:Landroid/widget/TextView;

.field private mDualClock:Landroid/widget/LinearLayout;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHomeAMPM:Landroid/widget/TextView;

.field private mHomeCalendar:Ljava/util/Calendar;

.field private mHomeDate_Month:Landroid/widget/TextView;

.field private mHomeHour01:Landroid/widget/ImageView;

.field private mHomeHour02:Landroid/widget/ImageView;

.field private mHomeLocale:Landroid/widget/TextView;

.field private mHomeMin01:Landroid/widget/ImageView;

.field private mHomeMin02:Landroid/widget/ImageView;

.field private mHour01:Landroid/widget/ImageView;

.field private mHour02:Landroid/widget/ImageView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsNetworkRoaming:Z

.field private mMin01:Landroid/widget/ImageView;

.field private mMin02:Landroid/widget/ImageView;

.field private mPermanentClock:Z

.field private mPreviousMarginOfDualClock:I

.field private mRoamingAMPM:Landroid/widget/TextView;

.field private mRoamingCalendar:Ljava/util/Calendar;

.field private mRoamingDate_Month:Landroid/widget/TextView;

.field private mRoamingHour01:Landroid/widget/ImageView;

.field private mRoamingHour02:Landroid/widget/ImageView;

.field private mRoamingLocale:Landroid/widget/TextView;

.field private mRoamingMin01:Landroid/widget/ImageView;

.field private mRoamingMin02:Landroid/widget/ImageView;

.field private mSingleClock:Landroid/widget/LinearLayout;

.field private mTimeZoneAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 872
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 873
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 876
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 765
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHandler:Landroid/os/Handler;

    .line 808
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    .line 877
    sget-object v1, Lcom/android/internal/R$styleable;->ClockWidget:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 878
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mPermanentClock:Z

    .line 879
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->setFocusable(Z)V

    .line 880
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 764
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->setMarquee(Z)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 764
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 764
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 764
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private convertTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 10
    .parameter "hourTime"
    .parameter "minTime"

    .prologue
    const/16 v6, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1085
    new-array v4, v6, [I

    fill-array-data v4, :array_0

    .line 1097
    .local v4, unlock_clock_easyux_drawables:[I
    new-array v5, v6, [I

    fill-array-data v5, :array_1

    .line 1112
    .local v5, unlock_clock_normal_drawables:[I
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1000()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1113
    move-object v3, v4

    .line 1118
    .local v3, unlock_clock_drawables:[I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    new-array v0, v6, [I

    .line 1119
    .local v0, choiceHourNumber:[I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    new-array v1, v6, [I

    .line 1120
    .local v1, choiceMinNumber:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1121
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2

    .line 1120
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1115
    .end local v0           #choiceHourNumber:[I
    .end local v1           #choiceMinNumber:[I
    .end local v2           #i:I
    .end local v3           #unlock_clock_drawables:[I
    :cond_0
    move-object v3, v5

    .restart local v3       #unlock_clock_drawables:[I
    goto :goto_0

    .line 1123
    .restart local v0       #choiceHourNumber:[I
    .restart local v1       #choiceMinNumber:[I
    .restart local v2       #i:I
    :cond_1
    const/4 v2, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 1124
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v2

    .line 1123
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1127
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 1128
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHour01:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1129
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHour02:Landroid/widget/ImageView;

    aget v7, v0, v8

    aget v7, v3, v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1136
    :goto_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mMin01:Landroid/widget/ImageView;

    aget v7, v1, v8

    aget v7, v3, v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1137
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mMin02:Landroid/widget/ImageView;

    aget v7, v1, v9

    aget v7, v3, v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1138
    return-void

    .line 1131
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHour01:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1132
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHour01:Landroid/widget/ImageView;

    aget v7, v0, v8

    aget v7, v3, v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1133
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHour02:Landroid/widget/ImageView;

    aget v7, v0, v9

    aget v7, v3, v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1085
    :array_0
    .array-data 0x4
        0x32t 0x4t 0x8t 0x1t
        0x33t 0x4t 0x8t 0x1t
        0x35t 0x4t 0x8t 0x1t
        0x36t 0x4t 0x8t 0x1t
        0x37t 0x4t 0x8t 0x1t
        0x38t 0x4t 0x8t 0x1t
        0x39t 0x4t 0x8t 0x1t
        0x3at 0x4t 0x8t 0x1t
        0x3bt 0x4t 0x8t 0x1t
        0x3ct 0x4t 0x8t 0x1t
    .end array-data

    .line 1097
    :array_1
    .array-data 0x4
        0x5at 0x4t 0x8t 0x1t
        0x5bt 0x4t 0x8t 0x1t
        0x5dt 0x4t 0x8t 0x1t
        0x5et 0x4t 0x8t 0x1t
        0x5ft 0x4t 0x8t 0x1t
        0x60t 0x4t 0x8t 0x1t
        0x61t 0x4t 0x8t 0x1t
        0x62t 0x4t 0x8t 0x1t
        0x63t 0x4t 0x8t 0x1t
        0x64t 0x4t 0x8t 0x1t
    .end array-data
.end method

.method private convertTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 8
    .parameter "hourTime"
    .parameter "minTime"
    .parameter "mHour01"
    .parameter "mHour02"
    .parameter "mMin01"
    .parameter "mMin02"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1314
    const/16 v5, 0xa

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .line 1320
    .local v4, unlock_clock_drawables:[I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    new-array v0, v5, [I

    .line 1321
    .local v0, choiceHourNumber:[I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    new-array v1, v5, [I

    .line 1322
    .local v1, choiceMinNumber:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 1323
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v2

    .line 1322
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1325
    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1326
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v2

    .line 1325
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1329
    :cond_1
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1331
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 1332
    const/16 v5, 0x8

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1333
    aget v5, v0, v7

    aget v5, v4, v5

    invoke-virtual {p4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1352
    :goto_2
    aget v5, v1, v7

    if-eq v5, v6, :cond_2

    aget v5, v1, v6

    if-ne v5, v6, :cond_7

    .line 1353
    :cond_2
    invoke-virtual {p5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1354
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1358
    :goto_3
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1359
    aget v5, v1, v7

    aget v5, v4, v5

    invoke-virtual {p5, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1360
    aget v5, v1, v6

    aget v5, v4, v5

    invoke-virtual {p6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1361
    return-void

    .line 1335
    :cond_3
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1336
    aget v5, v0, v7

    if-eq v5, v6, :cond_4

    aget v5, v0, v6

    if-ne v5, v6, :cond_5

    .line 1337
    :cond_4
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1341
    :goto_4
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1343
    aget v5, v0, v7

    if-ne v5, v6, :cond_6

    .line 1344
    const v5, 0x1080428

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1348
    :goto_5
    aget v5, v0, v6

    aget v5, v4, v5

    invoke-virtual {p4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1339
    :cond_5
    iget v5, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mPreviousMarginOfDualClock:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_4

    .line 1346
    :cond_6
    aget v5, v0, v7

    aget v5, v4, v5

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 1356
    :cond_7
    iget v5, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mPreviousMarginOfDualClock:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    .line 1314
    nop

    :array_0
    .array-data 0x4
        0x26t 0x4t 0x8t 0x1t
        0x27t 0x4t 0x8t 0x1t
        0x29t 0x4t 0x8t 0x1t
        0x2at 0x4t 0x8t 0x1t
        0x2bt 0x4t 0x8t 0x1t
        0x2ct 0x4t 0x8t 0x1t
        0x2dt 0x4t 0x8t 0x1t
        0x2et 0x4t 0x8t 0x1t
        0x2ft 0x4t 0x8t 0x1t
        0x30t 0x4t 0x8t 0x1t
    .end array-data
.end method

.method private refreshDualClock()V
    .locals 12

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "homecity_timezone"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1174
    .local v7, autoHomeTimeZoneId:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 1175
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    .line 1176
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSktModel()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Asia/Seoul"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1177
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeLocale:Landroid/widget/TextView;

    const v3, 0x104068e

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1187
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1189
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingLocale:Landroid/widget/TextView;

    const v3, 0x104068d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1191
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSktModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingLocale:Landroid/widget/TextView;

    const v3, 0x104068f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1195
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v10, "kk"

    .line 1196
    .local v10, hourFormat:Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v10, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1197
    .local v1, hourTime:Ljava/lang/CharSequence;
    const-string v0, "mm"

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1198
    .local v2, minTime:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeHour01:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeHour02:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeMin01:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeMin02:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->convertTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 1200
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v10, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1201
    const-string v0, "mm"

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1202
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingHour01:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingHour02:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingMin01:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingMin02:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->convertTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 1205
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingAMPM:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1206
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_7

    .line 1207
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingAMPM:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v4, 0x104009a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    :goto_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeAMPM:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_8

    const/16 v0, 0x8

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1213
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_9

    .line 1214
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeAMPM:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v4, 0x104009a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    :goto_5
    const-string v9, ""

    .line 1221
    .local v9, dateFormat:Ljava/lang/String;
    const-string v8, ""

    .line 1222
    .local v8, dateContentDescriptionFormat:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 1223
    .local v11, value:Ljava/lang/String;
    const-string v0, "yyyy-MM-dd"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MM-dd-yyyy"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1224
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v3, 0x10400d9

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1228
    :cond_2
    :goto_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingDate_Month:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v9, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1229
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeDate_Month:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v9, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1232
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v3, 0x10400d4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1233
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v8, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->localDateMessage:Ljava/lang/CharSequence;

    .line 1234
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v8, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->homeDateMessage:Ljava/lang/CharSequence;

    .line 1236
    return-void

    .line 1180
    .end local v1           #hourTime:Ljava/lang/CharSequence;
    .end local v2           #minTime:Ljava/lang/CharSequence;
    .end local v8           #dateContentDescriptionFormat:Ljava/lang/String;
    .end local v9           #dateFormat:Ljava/lang/String;
    .end local v10           #hourFormat:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeLocale:Landroid/widget/TextView;

    const v3, 0x104068c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1183
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1184
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeLocale:Landroid/widget/TextView;

    const v3, 0x104068c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1195
    :cond_5
    const-string v10, "h"

    goto/16 :goto_1

    .line 1205
    .restart local v1       #hourTime:Ljava/lang/CharSequence;
    .restart local v2       #minTime:Ljava/lang/CharSequence;
    .restart local v10       #hourFormat:Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1209
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingAMPM:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v4, 0x104009b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1212
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 1216
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeAMPM:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v4, 0x104009b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1225
    .restart local v8       #dateContentDescriptionFormat:Ljava/lang/String;
    .restart local v9       #dateFormat:Ljava/lang/String;
    .restart local v11       #value:Ljava/lang/String;
    :cond_a
    const-string v0, "dd-MM-yyyy"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1226
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v3, 0x10400d8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6
.end method

.method private refreshSingleClock()V
    .locals 10

    .prologue
    const v9, 0x10400d4

    .line 1051
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1053
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v2, "kk"

    .line 1054
    .local v2, hourFormat:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1055
    .local v3, hourTime:Ljava/lang/CharSequence;
    const-string v6, "mm"

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1056
    .local v4, minTime:Ljava/lang/CharSequence;
    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->convertTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1059
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mAM:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    const/16 v6, 0x8

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1060
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_4

    .line 1061
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mAM:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v8, 0x104009a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    :goto_2
    const-string v1, ""

    .line 1068
    .local v1, dateFormat:Ljava/lang/String;
    const-string v0, ""

    .line 1069
    .local v0, dateContentDescriptionFormat:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1070
    .local v5, value:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaMidFeature()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1071
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1078
    :cond_1
    :goto_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mDate_Month:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1081
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mDate_Month:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1082
    return-void

    .line 1053
    .end local v0           #dateContentDescriptionFormat:Ljava/lang/String;
    .end local v1           #dateFormat:Ljava/lang/String;
    .end local v2           #hourFormat:Ljava/lang/String;
    .end local v3           #hourTime:Ljava/lang/CharSequence;
    .end local v4           #minTime:Ljava/lang/CharSequence;
    .end local v5           #value:Ljava/lang/String;
    :cond_2
    const-string v2, "h"

    goto :goto_0

    .line 1059
    .restart local v2       #hourFormat:Ljava/lang/String;
    .restart local v3       #hourTime:Ljava/lang/CharSequence;
    .restart local v4       #minTime:Ljava/lang/CharSequence;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1063
    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mAM:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v8, 0x104009b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1072
    .restart local v0       #dateContentDescriptionFormat:Ljava/lang/String;
    .restart local v1       #dateFormat:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    :cond_5
    const-string v6, "yyyy-MM-dd"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "MM-dd-yyyy"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1074
    :cond_6
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v7, 0x10400d9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1075
    :cond_7
    const-string v6, "dd-MM-yyyy"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1076
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v7, 0x10400d8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private setMarquee(Z)V
    .locals 3
    .parameter "on"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1299
    if-eqz p1, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1301
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeDate_Month:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1302
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1303
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingDate_Month:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1310
    :goto_0
    return-void

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1306
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeDate_Month:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1307
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1308
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingDate_Month:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method


# virtual methods
.method public chooseClockType()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1366
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_clock"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    move v0, v1

    .line 1368
    .local v0, isClockOn:Z
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mPermanentClock:Z

    if-nez v4, :cond_1

    .line 1369
    const-string v3, "ClockWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isClockOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1371
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1402
    :goto_1
    return-void

    .end local v0           #isClockOn:Z
    :cond_0
    move v0, v3

    .line 1366
    goto :goto_0

    .line 1376
    .restart local v0       #isClockOn:Z
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dualclock_menu_settings"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 1377
    .local v1, isDualClock:Z
    :goto_2
    if-nez v1, :cond_3

    .line 1378
    const-string v4, "ClockWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDualClock : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1380
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .end local v1           #isDualClock:Z
    :cond_2
    move v1, v3

    .line 1376
    goto :goto_2

    .line 1386
    .restart local v1       #isDualClock:Z
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1388
    .local v2, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mIsNetworkRoaming:Z

    .line 1390
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isIgnoreNationalRoaming()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->isNationalRoaming()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1391
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mIsNetworkRoaming:Z

    .line 1394
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mIsNetworkRoaming:Z

    if-eqz v4, :cond_5

    .line 1396
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1397
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 1399
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1400
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public getDualTTSMessage()Ljava/lang/String;
    .locals 13

    .prologue
    .line 1250
    const-string v0, ""

    .line 1252
    .local v0, TTSMessage:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1253
    .local v5, localTimeText:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1254
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "HH"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1255
    .local v3, hourText:Ljava/lang/String;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "mm"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 1256
    .local v7, minuteText:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v9, 0x1040677

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1268
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v2, "kk"

    .line 1269
    .local v2, hourFormat:Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v2, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1270
    .local v4, hourTime:Ljava/lang/CharSequence;
    const-string v8, "mm"

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1272
    .local v6, minTime:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 1273
    .local v1, homeTimeText:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1274
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1275
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1276
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v9, 0x1040677

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1288
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->localDateMessage:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->localTimeMessage:Ljava/lang/CharSequence;

    .line 1289
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->homeDateMessage:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->homeTimeMessage:Ljava/lang/CharSequence;

    .line 1291
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->localTimeMessage:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->homeTimeMessage:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1293
    const-string v8, "ClockWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TTS Message = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    return-object v0

    .line 1259
    .end local v1           #homeTimeText:Ljava/lang/String;
    .end local v2           #hourFormat:Ljava/lang/String;
    .end local v3           #hourText:Ljava/lang/String;
    .end local v4           #hourTime:Ljava/lang/CharSequence;
    .end local v6           #minTime:Ljava/lang/CharSequence;
    .end local v7           #minuteText:Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "hh"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1260
    .restart local v3       #hourText:Ljava/lang/String;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "mm"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 1261
    .restart local v7       #minuteText:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-nez v8, :cond_1

    .line 1262
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v9, 0x1040679

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 1264
    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v9, 0x104067a

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 1268
    :cond_2
    const-string v2, "hh"

    goto/16 :goto_1

    .line 1279
    .restart local v1       #homeTimeText:Ljava/lang/String;
    .restart local v2       #hourFormat:Ljava/lang/String;
    .restart local v4       #hourTime:Ljava/lang/CharSequence;
    .restart local v6       #minTime:Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1280
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1281
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-nez v8, :cond_4

    .line 1282
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v9, 0x1040679

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 1284
    :cond_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v9, 0x104067a

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method

.method public getSingleTTSMessage()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1142
    const-string v0, ""

    .line 1144
    .local v0, TTSMessage:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v7, 0x10400d4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1146
    .local v1, dateFormat:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1148
    .local v2, dateText:Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 1149
    .local v5, timeText:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1150
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "HH"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1151
    .local v3, hourText:Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "mm"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1152
    .local v4, minuteText:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v7, 0x1040677

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1164
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1166
    const-string v6, "ClockWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TTS Message = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    return-object v0

    .line 1155
    .end local v3           #hourText:Ljava/lang/String;
    .end local v4           #minuteText:Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "hh"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1156
    .restart local v3       #hourText:Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "mm"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1157
    .restart local v4       #minuteText:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_1

    .line 1158
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v7, 0x1040679

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1160
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v7, 0x104067a

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getTTSMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1240
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    .line 1245
    :goto_0
    return-object v0

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1243
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->getDualTTSMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1245
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNationalRoaming()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 1405
    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1406
    .local v3, simNumeric:Ljava/lang/String;
    const-string v5, "gsm.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1408
    .local v1, plmnNumeric:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1409
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1410
    .local v2, simMCC:Ljava/lang/String;
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1412
    .local v0, plmnMCC:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1413
    const/4 v4, 0x1

    .line 1419
    .end local v0           #plmnMCC:Ljava/lang/String;
    .end local v2           #simMCC:Ljava/lang/String;
    :cond_0
    return v4
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 946
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 949
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 950
    new-instance v1, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$TimeChangedReceiver;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$TimeChangedReceiver;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 951
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 952
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 953
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 954
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 955
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 959
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    .line 960
    new-instance v1, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$FormatChangeObserver;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$FormatChangeObserver;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 961
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 963
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->chooseClockType()V

    .line 964
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->refreshTime()V

    .line 965
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 969
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 970
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 971
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 974
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 977
    :cond_1
    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 978
    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 980
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 981
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 982
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 988
    :cond_2
    const/4 v0, 0x0

    .line 989
    .local v0, nullOnClickListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    const-string v3, " "

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 990
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    const-string v3, " "

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 992
    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    .line 994
    .end local v0           #nullOnClickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_3
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 998
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 1000
    const v0, 0x10202cd

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    .line 1001
    const v0, 0x10202d6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    .line 1002
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 1003
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 1005
    const v0, 0x10202cf

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHour01:Landroid/widget/ImageView;

    .line 1006
    const v0, 0x10202d0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHour02:Landroid/widget/ImageView;

    .line 1007
    const v0, 0x10202d2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mMin01:Landroid/widget/ImageView;

    .line 1008
    const v0, 0x10202d3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mMin02:Landroid/widget/ImageView;

    .line 1009
    const v0, 0x10202d4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mAM:Landroid/widget/TextView;

    .line 1010
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mAM:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1011
    const v0, 0x10202d5

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mDate_Month:Landroid/widget/TextView;

    .line 1012
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    .line 1014
    const v0, 0x10202e2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeHour01:Landroid/widget/ImageView;

    .line 1015
    const v0, 0x10202e3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeHour02:Landroid/widget/ImageView;

    .line 1016
    const v0, 0x10202e5

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeMin01:Landroid/widget/ImageView;

    .line 1017
    const v0, 0x10202e6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeMin02:Landroid/widget/ImageView;

    .line 1019
    const v0, 0x10202d9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingHour01:Landroid/widget/ImageView;

    .line 1020
    const v0, 0x10202da

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingHour02:Landroid/widget/ImageView;

    .line 1021
    const v0, 0x10202dc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingMin01:Landroid/widget/ImageView;

    .line 1022
    const v0, 0x10202dd

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingMin02:Landroid/widget/ImageView;

    .line 1024
    const v0, 0x10202de

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingAMPM:Landroid/widget/TextView;

    .line 1025
    const v0, 0x10202e7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeAMPM:Landroid/widget/TextView;

    .line 1026
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingAMPM:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1027
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeAMPM:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1028
    const v0, 0x10202df

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingDate_Month:Landroid/widget/TextView;

    .line 1029
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingDate_Month:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1031
    const v0, 0x10202e8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeDate_Month:Landroid/widget/TextView;

    .line 1032
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    .line 1033
    const v0, 0x10202e1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeLocale:Landroid/widget/TextView;

    .line 1034
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeLocale:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeLocale:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1036
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeDate_Month:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1038
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    .line 1039
    const v0, 0x10202d8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingLocale:Landroid/widget/TextView;

    .line 1040
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingLocale:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mRoamingLocale:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1043
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mHomeHour01:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mPreviousMarginOfDualClock:I

    .line 1045
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->chooseClockType()V

    .line 1046
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 883
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "homecity_timezone"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, autoHomeTimezone:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 885
    .local v2, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 887
    .local v3, simstateFromTelephony:I
    if-nez v0, :cond_3

    .line 888
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 889
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    if-ne v3, v5, :cond_0

    .line 890
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    .line 891
    .local v4, tz:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "homecity_timezone"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 894
    .end local v4           #tz:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mPermanentClock:Z

    if-nez v5, :cond_3

    .line 895
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 896
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_2

    .line 898
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-direct {v1, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 899
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x1040690

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 900
    const v5, 0x1040691

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 901
    const v5, 0x108030c

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 902
    const v5, 0x1040013

    new-instance v6, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$1;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$1;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 913
    const v5, 0x1040009

    new-instance v6, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$2;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock$2;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 921
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    .line 922
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 924
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_3

    .line 925
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 929
    :cond_3
    return-void
.end method

.method public refreshTime()V
    .locals 2

    .prologue
    .line 932
    const-string v0, "ClockWidget"

    const-string v1, "refreshTime()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 935
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->refreshSingleClock()V

    .line 936
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 939
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->refreshDualClock()V

    .line 940
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Clock;->getDualTTSMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 942
    :cond_1
    return-void
.end method
