.class public Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;
.super Ljava/lang/Object;
.source "UnlockTextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech$1;,
        Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech$TtsListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static IsTtsInitiated:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "UnlockTextToSpeech"

.field private static _instance:Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;

.field private static mTts:Landroid/speech/tts/TextToSpeech;


# instance fields
.field private TtsString:Ljava/lang/String;

.field private TtsmissedEvent:Ljava/lang/String;

.field private Ttstime:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mIsCircleLockscreen:Z

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mTtsListener:Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech$TtsListener;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 47
    sput-object v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->IsTtsInitiated:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isCircleLockscreen"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    .line 45
    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech$TtsListener;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->TtsString:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mIsCircleLockscreen:Z

    .line 61
    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 64
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    .line 65
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mIsCircleLockscreen:Z

    .line 67
    new-instance v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech$TtsListener;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech$TtsListener;-><init>(Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech$TtsListener;

    .line 68
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech$TtsListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->doSpeak()V

    .line 71
    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-boolean p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->IsTtsInitiated:Z

    return p0
.end method

.method public static declared-synchronized destroy()V
    .locals 3

    .prologue
    .line 307
    const-class v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "UnlockTextToSpeech"

    const-string v2, "destroy"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget-object v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 312
    sget-object v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 313
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->IsTtsInitiated:Z

    .line 314
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;

    .line 315
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_0
    monitor-exit v1

    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;
    .locals 2
    .parameter "context"

    .prologue
    .line 90
    const-class v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getInstance(Landroid/content/Context;Z)Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Z)Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;
    .locals 2
    .parameter "context"
    .parameter "isCircleLockscreen"

    .prologue
    .line 94
    const-class v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->destroy()V

    .line 97
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;

    .line 98
    sget-object v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTtsLocalString(I)Ljava/lang/String;
    .locals 6
    .parameter "resId"

    .prologue
    .line 337
    sget-object v4, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 338
    sget-object v4, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, currentLang:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, strings:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, langs:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 345
    aget-object v4, v2, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 346
    aget-object v4, v3, v1

    .line 350
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #langs:[Ljava/lang/String;
    .end local v3           #strings:[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 344
    .restart local v0       #currentLang:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #langs:[Ljava/lang/String;
    .restart local v3       #strings:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #langs:[Ljava/lang/String;
    .end local v3           #strings:[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private maybeUpdateTtsLanguage(Ljava/lang/String;)V
    .locals 7
    .parameter "currentEngine"

    .prologue
    .line 320
    if-eqz p1, :cond_0

    sget-object v4, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_0

    .line 321
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v4, p1}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, localeString:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 323
    invoke-static {v2}, Landroid/speech/tts/TtsEngines;->parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, locale:[Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .local v3, newLocale:Ljava/util/Locale;
    sget-object v4, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 327
    .local v0, engineLocale:Ljava/util/Locale;
    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 329
    const-string v4, "UnlockTextToSpeech"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading language ahead of sample check : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-object v4, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 334
    .end local v0           #engineLocale:Ljava/util/Locale;
    .end local v1           #locale:[Ljava/lang/String;
    .end local v2           #localeString:Ljava/lang/String;
    .end local v3           #newLocale:Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public static declared-synchronized stopTts()V
    .locals 2

    .prologue
    .line 300
    const-class v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_0
    monitor-exit v1

    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public doSpeak()V
    .locals 32

    .prologue
    .line 103
    const-string v28, "UnlockTextToSpeech"

    const-string v29, "Getting into speak TTS"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v28, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v28, :cond_5

    sget-boolean v28, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->IsTtsInitiated:Z

    if-eqz v28, :cond_5

    .line 106
    sget-object v28, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual/range {v28 .. v28}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v12

    .line 108
    .local v12, currentEngine:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 109
    sget-object v28, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual/range {v28 .. v28}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v12

    .line 111
    :cond_0
    new-instance v28, Landroid/speech/tts/TtsEngines;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 112
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->maybeUpdateTtsLanguage(Ljava/lang/String;)V

    .line 113
    sget-object v28, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual/range {v28 .. v28}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v13

    .line 115
    .local v13, currentLocale:Ljava/util/Locale;
    if-nez v13, :cond_2

    .line 117
    const-string v28, "UnlockTextToSpeech"

    const-string v29, "mTts.getLanguage() returns null"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v28, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v18

    .line 120
    .local v18, languageResult:I
    const/16 v28, -0x2

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    const/16 v28, -0x1

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 121
    :cond_1
    sget-object v28, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v29, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v28 .. v29}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 123
    const-string v28, "UnlockTextToSpeech"

    const-string v29, "TTS cannot use system language, using Locale.US instead"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v18           #languageResult:I
    :cond_2
    const-string v28, "UnlockTextToSpeech"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "TTS locale:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual/range {v30 .. v30}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v28, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual/range {v28 .. v28}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v28

    if-nez v28, :cond_5

    .line 131
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v24, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v28, "streamType"

    const/16 v29, 0x9

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v28, "utteranceId"

    const-string v29, "Unlock screen tts ended"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 138
    .local v10, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 140
    const/16 v28, 0xb

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 141
    .local v15, hourInt:I
    const/16 v28, 0xc

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v23

    .line 142
    .local v23, minInt:I
    const/16 v28, 0x9

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 145
    .local v9, am_pm:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v20

    .line 148
    .local v20, mAM_PM_Check01:Z
    if-nez v20, :cond_8

    .line 149
    const/16 v28, 0xc

    move/from16 v0, v28

    if-le v15, v0, :cond_6

    .line 150
    add-int/lit8 v15, v15, -0xc

    .line 154
    :cond_3
    :goto_0
    if-nez v9, :cond_7

    .line 155
    const v28, 0x1070042

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    .line 165
    :goto_1
    const-string v28, "UnlockTextToSpeech"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "TTS Time:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_2
    const-string v4, "aw_daemon_service_key_app_service_status"

    .line 173
    .local v4, KEY_APP_SERVICE_STATUS:Ljava/lang/String;
    const-string v5, "aw_daemon_service_key_loc_code"

    .line 174
    .local v5, KEY_CITY_ID:Ljava/lang/String;
    const/4 v6, 0x1

    .line 177
    .local v6, LOCK_SCREEN_SERVICE_CODE:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "aw_daemon_service_key_app_service_status"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 178
    .local v21, mAppServiceStatus:I
    and-int/lit8 v28, v21, 0x1

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    const/16 v17, 0x1

    .line 181
    .local v17, isServiceEnable:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "aw_daemon_service_key_loc_code"

    invoke-static/range {v28 .. v29}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 183
    .local v11, cityId:Ljava/lang/String;
    const-string v28, "UnlockTextToSpeech"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "isServiceEnable = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " cityId = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v8, ""

    .line 186
    .local v8, Ttsweather:Ljava/lang/String;
    const-string v7, ""

    .line 189
    .local v7, TtsDegree:Ljava/lang/String;
    if-eqz v17, :cond_c

    if-eqz v11, :cond_c

    :try_start_1
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_c

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "aw_daemon_service_key_temp_scale"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    const/16 v16, 0x1

    .line 192
    .local v16, isCelsius:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "aw_daemon_service_key_current_temp"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v28

    move/from16 v0, v28

    float-to-int v14, v0

    .line 193
    .local v14, currentTemp:I
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ". "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "aw_daemon_service_key_weather_text"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ". "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 195
    if-eqz v16, :cond_b

    .line 196
    const v28, 0x1070045

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const v31, 0x1070047

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 205
    .end local v14           #currentTemp:I
    .end local v16           #isCelsius:Z
    :goto_5
    const-string v28, "UnlockTextToSpeech"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "TTS temperature= "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", weather="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    :goto_6
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 214
    if-eqz v17, :cond_f

    if-eqz v11, :cond_f

    :try_start_2
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_f

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "aw_daemon_service_key_temp_scale"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    const/16 v16, 0x1

    .line 217
    .restart local v16       #isCelsius:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "aw_daemon_service_key_high_temp"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v28

    move/from16 v0, v28

    float-to-int v14, v0

    .line 218
    .restart local v14       #currentTemp:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "aw_daemon_service_key_low_temp"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v19, v0

    .line 219
    .local v19, lowTemp:I
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ". "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "aw_daemon_service_key_weather_text"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ". "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 221
    if-eqz v16, :cond_e

    .line 222
    const v28, 0x1070046

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    const v31, 0x1070047

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 231
    .end local v14           #currentTemp:I
    .end local v16           #isCelsius:Z
    .end local v19           #lowTemp:I
    :goto_8
    const-string v28, "UnlockTextToSpeech"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "TTS temperature= "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", weather="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 240
    :cond_4
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "notification"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/NotificationManager;

    .line 242
    .local v22, mNM:Landroid/app/NotificationManager;
    if-nez v22, :cond_10

    .line 297
    .end local v4           #KEY_APP_SERVICE_STATUS:Ljava/lang/String;
    .end local v5           #KEY_CITY_ID:Ljava/lang/String;
    .end local v6           #LOCK_SCREEN_SERVICE_CODE:I
    .end local v7           #TtsDegree:Ljava/lang/String;
    .end local v8           #Ttsweather:Ljava/lang/String;
    .end local v9           #am_pm:I
    .end local v10           #cal:Ljava/util/Calendar;
    .end local v11           #cityId:Ljava/lang/String;
    .end local v12           #currentEngine:Ljava/lang/String;
    .end local v13           #currentLocale:Ljava/util/Locale;
    .end local v15           #hourInt:I
    .end local v17           #isServiceEnable:Z
    .end local v20           #mAM_PM_Check01:Z
    .end local v21           #mAppServiceStatus:I
    .end local v22           #mNM:Landroid/app/NotificationManager;
    .end local v23           #minInt:I
    .end local v24           #myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :goto_a
    return-void

    .line 151
    .restart local v9       #am_pm:I
    .restart local v10       #cal:Ljava/util/Calendar;
    .restart local v12       #currentEngine:Ljava/lang/String;
    .restart local v13       #currentLocale:Ljava/util/Locale;
    .restart local v15       #hourInt:I
    .restart local v20       #mAM_PM_Check01:Z
    .restart local v23       #minInt:I
    .restart local v24       #myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    if-nez v15, :cond_3

    .line 152
    const/16 v15, 0xc

    goto/16 :goto_0

    .line 157
    :cond_7
    const v28, 0x1070043

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 166
    :catch_0
    move-exception v27

    .line 167
    .local v27, nullPonterException:Ljava/lang/NullPointerException;
    const-string v28, "UnlockTextToSpeech"

    const-string v29, "NullPointerException has been occured in getTtsLocalString()"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual/range {v27 .. v27}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    .line 159
    .end local v27           #nullPonterException:Ljava/lang/NullPointerException;
    :cond_8
    const v28, 0x1070044

    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    .line 161
    const-string v28, "UnlockTextToSpeech"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[24-hour format] TTS Time:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 178
    .restart local v4       #KEY_APP_SERVICE_STATUS:Ljava/lang/String;
    .restart local v5       #KEY_CITY_ID:Ljava/lang/String;
    .restart local v6       #LOCK_SCREEN_SERVICE_CODE:I
    .restart local v21       #mAppServiceStatus:I
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 190
    .restart local v7       #TtsDegree:Ljava/lang/String;
    .restart local v8       #Ttsweather:Ljava/lang/String;
    .restart local v11       #cityId:Ljava/lang/String;
    .restart local v17       #isServiceEnable:Z
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 199
    .restart local v14       #currentTemp:I
    .restart local v16       #isCelsius:Z
    :cond_b
    const v28, 0x1070045

    :try_start_5
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const v31, 0x1070048

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5

    .line 202
    .end local v14           #currentTemp:I
    .end local v16           #isCelsius:Z
    :cond_c
    const-string v7, ". "
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_5

    .line 206
    :catch_1
    move-exception v27

    .line 207
    .restart local v27       #nullPonterException:Ljava/lang/NullPointerException;
    const-string v28, "UnlockTextToSpeech"

    const-string v29, "NullPointerException has been occured in getTtsLocalString()"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual/range {v27 .. v27}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_6

    .line 215
    .end local v27           #nullPonterException:Ljava/lang/NullPointerException;
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 225
    .restart local v14       #currentTemp:I
    .restart local v16       #isCelsius:Z
    .restart local v19       #lowTemp:I
    :cond_e
    const v28, 0x1070046

    :try_start_6
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    const v31, 0x1070048

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_8

    .line 228
    .end local v14           #currentTemp:I
    .end local v16           #isCelsius:Z
    .end local v19           #lowTemp:I
    :cond_f
    const-string v7, ". "
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_8

    .line 232
    :catch_2
    move-exception v27

    .line 233
    .restart local v27       #nullPonterException:Ljava/lang/NullPointerException;
    const-string v28, "UnlockTextToSpeech"

    const-string v29, "NullPointerException has been occured in getTtsLocalString()"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual/range {v27 .. v27}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_9

    .line 245
    .end local v27           #nullPonterException:Ljava/lang/NullPointerException;
    .restart local v22       #mNM:Landroid/app/NotificationManager;
    :cond_10
    const/16 v25, 0x0

    .line 246
    .local v25, nCallCount:I
    const/16 v26, 0x0

    .line 248
    .local v26, nMsgCount:I
    const-string v28, "com.android.phone"

    const/16 v29, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 249
    const-string v28, "com.android.mms"

    const/16 v29, 0x7b

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    .line 251
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_11

    .line 252
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x7b

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    .line 255
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    move-object/from16 v28, v0

    if-eqz v28, :cond_12

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/app/NotificationInfo;->missedCount:I

    move/from16 v25, v0

    .line 257
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    move-object/from16 v28, v0

    if-eqz v28, :cond_13

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/app/NotificationInfo;->missedCount:I

    move/from16 v26, v0

    .line 261
    :cond_13
    if-lez v25, :cond_16

    if-lez v26, :cond_16

    .line 262
    const v28, 0x1070049

    :try_start_7
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3

    .line 281
    :goto_b
    if-gtz v25, :cond_14

    if-lez v26, :cond_15

    .line 283
    :cond_14
    const-string v28, "UnlockTextToSpeech"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mIsCircleLockscreen:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1c

    .line 286
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v28

    if-eqz v28, :cond_1b

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isMissedEventEnableOnTablet()Z

    move-result v28

    if-nez v28, :cond_1b

    .line 287
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->TtsString:Ljava/lang/String;

    .line 293
    :goto_c
    sget-object v28, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->TtsString:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 294
    sget-object v28, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech$TtsListener;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_a

    .line 264
    :cond_16
    const/16 v28, 0x1

    move/from16 v0, v25

    move/from16 v1, v28

    if-le v0, v1, :cond_17

    .line 265
    const v28, 0x107004a

    :try_start_8
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_b

    .line 276
    :catch_3
    move-exception v27

    .line 277
    .restart local v27       #nullPonterException:Ljava/lang/NullPointerException;
    const-string v28, "UnlockTextToSpeech"

    const-string v29, "NullPointerException has been occured in getTtsLocalString()"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual/range {v27 .. v27}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_b

    .line 267
    .end local v27           #nullPonterException:Ljava/lang/NullPointerException;
    :cond_17
    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-le v0, v1, :cond_18

    .line 268
    const v28, 0x107004b

    :try_start_9
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    goto/16 :goto_b

    .line 270
    :cond_18
    const/16 v28, 0x1

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_19

    .line 271
    const v28, 0x107004c

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    goto/16 :goto_b

    .line 272
    :cond_19
    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_1a

    .line 273
    const v28, 0x107004d

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    goto/16 :goto_b

    .line 275
    :cond_1a
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_b

    .line 289
    :cond_1b
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->TtsString:Ljava/lang/String;

    goto/16 :goto_c

    .line 291
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/UnlockTextToSpeech;->TtsString:Ljava/lang/String;

    goto/16 :goto_c
.end method
