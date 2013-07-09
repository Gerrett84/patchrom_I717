.class public Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
.super Ljava/lang/Object;
.source "WakeUpCmdRecognizer.java"


# static fields
.field public static final AL_Enroll:I = 0x65

.field public static final CHECK_Enroll_END:I = 0x67

.field public static final CHECK_Enroll_START:I = 0x66

.field static final ENROLL_CNT:I = 0x4

.field static final ERROR_CONFLICT_COMMAND:I = -0x4

.field static final ERROR_MIC_BUSY:I = -0x5

.field public static final Enroll_ConflictCommand:I = 0x68

.field static final NUM_MODELS:I = 0x6

.field public static final Recording_Fail:I = 0x69

.field public static final customVoiceTalkEnablePath:Ljava/lang/String; = "/data/data/com.vlingo.midas/kwd_1.bin"

.field private static isEnrollReady:Z = false

.field public static mExist:[I = null

.field public static final typeDefine:Ljava/lang/String; = "/data/data/com.vlingo.midas/typeDefine.bin"


# instance fields
.field public CommandNumber:S

.field public final ROOT:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field public WType:I

.field private absBeam:F

.field private acousticModelPathname:Ljava/lang/String;

.field private aoffset:F

.field private background_enroll:Ljava/lang/Thread;

.field private beam:F

.field conflictCommandType:[S

.field private final deAcousticModelPathname:Ljava/lang/String;

.field private final deSearchGrammarPathname:Ljava/lang/String;

.field private debugSessionPathname:Ljava/lang/String;

.field private delay:F

.field private doLoggingParam:I

.field private final esAcousticModelPathname:Ljava/lang/String;

.field private final esSearchGrammarPathname:Ljava/lang/String;

.field private final frAcousticModelPathname:Ljava/lang/String;

.field private final frSearchGrammarPathname:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field protected isAudioFocus:Z

.field private isCustomVoiceTalkEnable:Z

.field private isRecording:Z

.field private isRunning_all:Z

.field private isRunning_enroll:Z

.field private isSamsungWakeUpLibExist:Z

.field private isSensoryInitialize:Z

.field private isSensoryWakeUpLibExist:Z

.field private final itAcousticModelPathname:Ljava/lang/String;

.field private final itSearchGrammarPathname:Ljava/lang/String;

.field private final koAcousticModelPathname:Ljava/lang/String;

.field private final koSearchGrammarPathname:Ljava/lang/String;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mContext:Landroid/content/Context;

.field public mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

.field private mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

.field public mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

.field public mVElib:Lcom/samsung/voiceshell/VoiceEngine;

.field private final m_UBMpath:Ljava/lang/String;

.field public final m_lastEnroll_0:Ljava/lang/String;

.field public final m_lastEnroll_1:Ljava/lang/String;

.field public final m_lastEnroll_2:Ljava/lang/String;

.field public final m_lastEnroll_3:Ljava/lang/String;

.field public final m_lastEnroll_4:Ljava/lang/String;

.field public final m_lastEnroll_5:Ljava/lang/String;

.field private final sVoiceLanguageFilePath:Ljava/lang/String;

.field private searchGrammarPathname:Ljava/lang/String;

.field private final sensorySoFilePath:Ljava/lang/String;

.field private final ukAcousticModelPathname:Ljava/lang/String;

.field private final ukSearchGrammarPathname:Ljava/lang/String;

.field private final usAcousticModelPathname:Ljava/lang/String;

.field private final usSearchGrammarPathname:Ljava/lang/String;

.field private final voiceEngineSoFilePath:Ljava/lang/String;

.field private weHaveNoModel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 61
    const/4 v0, 0x6

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_UBMpath:Ljava/lang/String;

    .line 25
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_0.pcm"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_0:Ljava/lang/String;

    .line 26
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_1.pcm"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_1:Ljava/lang/String;

    .line 27
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_2.pcm"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_2:Ljava/lang/String;

    .line 28
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_3.pcm"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_3:Ljava/lang/String;

    .line 29
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_4.pcm"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_4:Ljava/lang/String;

    .line 30
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_5.pcm"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_5:Ljava/lang/String;

    .line 32
    const-string v0, "/data/data/com.vlingo.midas/"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    .line 36
    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 37
    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    .line 39
    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    .line 40
    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 42
    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    .line 44
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 45
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 56
    iput-short v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    .line 58
    iput v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    .line 64
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    .line 65
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    .line 67
    const-string v0, "WakeUpCmdRecognizer"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    .line 70
    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    .line 71
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    .line 75
    const-string v0, "/system/wakeupdata/sensory/nn_en_uk_mfcc_16k_15_big_250_v2_0.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 76
    const-string v0, "/system/wakeupdata/sensory/en_gb_hg_tuned1_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 78
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->beam:F

    .line 79
    const/high16 v0, 0x4220

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->absBeam:F

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->aoffset:F

    .line 81
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->delay:F

    .line 82
    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->debugSessionPathname:Ljava/lang/String;

    .line 83
    iput v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->doLoggingParam:I

    .line 85
    const-string v0, "/system/lib/libSamsungVoiceEngine.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->voiceEngineSoFilePath:Ljava/lang/String;

    .line 86
    const-string v0, "/system/lib/libWakeUpSensory.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensorySoFilePath:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    .line 88
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    .line 89
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 91
    const-string v0, "/system/wakeupdata/sensory/nn_ko_mfcc_16k_15_big_250_v2_1.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->koAcousticModelPathname:Ljava/lang/String;

    .line 92
    const-string v0, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->usAcousticModelPathname:Ljava/lang/String;

    .line 93
    const-string v0, "/system/wakeupdata/sensory/nn_en_uk_mfcc_16k_15_big_250_v2_0.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ukAcousticModelPathname:Ljava/lang/String;

    .line 94
    const-string v0, "/system/wakeupdata/sensory/nn_es_mfcc_16k_15_big_250_v1_1.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->esAcousticModelPathname:Ljava/lang/String;

    .line 95
    const-string v0, "/system/wakeupdata/sensory/nn_fr_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->frAcousticModelPathname:Ljava/lang/String;

    .line 96
    const-string v0, "/system/wakeupdata/sensory/nn_de_mfcc_16k_15_big_250_v3_0.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->deAcousticModelPathname:Ljava/lang/String;

    .line 97
    const-string v0, "/system/wakeupdata/sensory/nn_it_mfcc_16k_15_big_250_v3_2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->itAcousticModelPathname:Ljava/lang/String;

    .line 99
    const-string v0, "/system/wakeupdata/sensory/ko_hi_galaxy_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->koSearchGrammarPathname:Ljava/lang/String;

    .line 100
    const-string v0, "/system/wakeupdata/sensory/en_us_hg_tuned3_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->usSearchGrammarPathname:Ljava/lang/String;

    .line 101
    const-string v0, "/system/wakeupdata/sensory/en_gb_hg_tuned1_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ukSearchGrammarPathname:Ljava/lang/String;

    .line 102
    const-string v0, "/system/wakeupdata/sensory/es_galaxy_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->esSearchGrammarPathname:Ljava/lang/String;

    .line 103
    const-string v0, "/system/wakeupdata/sensory/fr_galaxy_tuned8_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->frSearchGrammarPathname:Ljava/lang/String;

    .line 104
    const-string v0, "/system/wakeupdata/sensory/de_galaxy_tuned_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->deSearchGrammarPathname:Ljava/lang/String;

    .line 105
    const-string v0, "/system/wakeupdata/sensory/it_galaxy_tuned_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->itSearchGrammarPathname:Ljava/lang/String;

    .line 107
    const-string v0, "/data/data/com.vlingo.midas/files/language.bin"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    .line 108
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    .line 134
    new-instance v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$1;

    invoke-direct {v0, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$1;-><init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    .line 795
    new-instance v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$3;

    invoke-direct {v0, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$3;-><init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 112
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "WakeUpCmdRecognizer Create"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setLanguage()V

    .line 114
    iput-object p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 115
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungVoiceLib()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    .line 116
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryLib()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    .line 117
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acousticModelPathname : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchGrammarPathname : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSamsungWakeUpLibExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSensoryWakeUpLibExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method private InitializeVerify()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 618
    const/4 v1, 0x0

    .line 619
    .local v1, iResult:I
    const/4 v0, 0x0

    .line 621
    .local v0, NumSets:I
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v3, "/data/data/com.vlingo.midas/"

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    sget-object v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/voiceshell/VoiceEngine;->checkFileExistence(Ljava/lang/String;I[I)I

    move-result v0

    .line 623
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of complete sets: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    if-nez v0, :cond_0

    .line 627
    const/16 v2, -0xa

    .line 648
    :goto_0
    return v2

    .line 630
    :cond_0
    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-nez v2, :cond_1

    .line 632
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SECURE LOCK-SCREEN with WType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_1
    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v2, v6, :cond_2

    .line 636
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NORMAL LOCK-SCREEN with WType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_2
    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 640
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VOICE-TALK with Wtype: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_3
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v2}, Lcom/samsung/voiceshell/VoiceEngine;->terminateVerify()I

    .line 644
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v3, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    const-string v4, "/data/data/com.vlingo.midas/"

    iget v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/voiceshell/VoiceEngine;->initializeVerify(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 646
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v2, v6}, Lcom/samsung/voiceshell/VoiceEngine;->setMode(I)V

    move v2, v1

    .line 648
    goto :goto_0
.end method

.method private StartVerify()I
    .locals 4

    .prologue
    .line 652
    const/4 v0, 0x0

    .line 654
    .local v0, iResult:I
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/VoiceEngine;->setMode(I)V

    .line 655
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v2, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/VoiceEngine;->setAdaptationModelPath(Ljava/lang/String;)V

    .line 657
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    if-nez v1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/VoiceEngine;->startVerify()I

    move-result v0

    .line 661
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VerifyResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->startRecord()Z

    .line 666
    return v0
.end method

.method private TerminateVerify()I
    .locals 2

    .prologue
    .line 670
    const/4 v0, 0x0

    .line 672
    .local v0, iResult:I
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->closeRecord()V

    .line 676
    :cond_0
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v1, :cond_1

    .line 678
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/VoiceEngine;->terminateVerify()I

    move-result v0

    .line 681
    :cond_1
    return v0
.end method

.method static synthetic access$000(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/VoiceEngineResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 738
    if-nez p1, :cond_1

    .line 750
    :cond_0
    :goto_0
    return v1

    .line 742
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 744
    .local v0, mFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 750
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSamsungVoiceLib()Z
    .locals 3

    .prologue
    .line 756
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libSamsungVoiceEngine.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 757
    .local v0, mFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Error : Could not find libSamsungVoiceEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/4 v1, 0x0

    .line 764
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSensoryLib()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 770
    new-instance v0, Ljava/io/File;

    const-string v4, "/system/lib/libWakeUpSensory.so"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 771
    .local v0, mFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 772
    .local v1, sensoryAcousticModelFile:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    .local v2, sensorySearchGrammarFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 776
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find libsensory.so"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :goto_0
    return v3

    .line 779
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 781
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find sensoryAcousticModelFile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 784
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 786
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find sensorySearchGrammarFile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 791
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "filePath"

    .prologue
    const/4 v7, 0x0

    .line 916
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 917
    .local v3, mFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 918
    .local v4, mFileInputStream:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 920
    .local v0, data:[B
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 923
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    .end local v4           #mFileInputStream:Ljava/io/FileInputStream;
    .local v5, mFileInputStream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 925
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 926
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 928
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 947
    .end local v5           #mFileInputStream:Ljava/io/FileInputStream;
    .restart local v4       #mFileInputStream:Ljava/io/FileInputStream;
    :goto_0
    return-object v6

    .line 930
    :catch_0
    move-exception v1

    .line 932
    .local v1, e:Ljava/io/IOException;
    :goto_1
    if-eqz v4, :cond_0

    .line 935
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 941
    :cond_0
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 943
    goto :goto_0

    .line 936
    :catch_1
    move-exception v2

    .line 938
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #e1:Ljava/io/IOException;
    :cond_1
    move-object v6, v7

    .line 947
    goto :goto_0

    .line 930
    .end local v4           #mFileInputStream:Ljava/io/FileInputStream;
    .restart local v5       #mFileInputStream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5           #mFileInputStream:Ljava/io/FileInputStream;
    .restart local v4       #mFileInputStream:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private waitForBackgroundEnroll()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 500
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 501
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 503
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "waitForBackgroundEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 511
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected InitializeEnroll()I
    .locals 3

    .prologue
    .line 562
    const/4 v0, 0x0

    .line 564
    .local v0, iResult:I
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/VoiceEngine;->setMode(I)V

    .line 565
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v2, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/VoiceEngine;->initializeEnroll(Ljava/lang/String;)I

    move-result v0

    .line 568
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 570
    return v0
.end method

.method protected ProcessEnroll()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 575
    const/4 v0, -0x3

    .line 577
    .local v0, iResult:I
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->startRecord()Z

    move-result v1

    if-nez v1, :cond_0

    .line 581
    const/4 v0, -0x5

    .line 585
    :cond_0
    sget-boolean v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x5

    if-eq v0, v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    aput-short v5, v1, v5

    .line 589
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v2, "/data/data/com.vlingo.midas/"

    iget-short v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/voiceshell/VoiceEngine;->processEnroll(Ljava/lang/String;S[S)I

    move-result v0

    .line 591
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    aget-short v1, v1, v5

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    aget-short v1, v1, v5

    iget-short v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    if-eq v1, v2, :cond_1

    .line 593
    const/4 v0, -0x4

    .line 597
    :cond_1
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v1, :cond_2

    .line 599
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->closeRecord()V

    .line 602
    :cond_2
    return v0
.end method

.method public SendHandlerMessage(III)V
    .locals 3
    .parameter "job"
    .parameter "count"
    .parameter "check"

    .prologue
    .line 153
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 154
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "job"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    const-string v2, "Enroll_Count"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    const-string v2, "EnrollCheck_Count"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 159
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    return-void
.end method

.method protected TerminateEnroll()I
    .locals 2

    .prologue
    .line 607
    const/4 v0, 0x0

    .line 608
    .local v0, iResult:I
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/VoiceEngine;->terminateEnroll()I

    move-result v0

    .line 612
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 614
    return v0
.end method

.method public choiceMultipleWakeUpIntent(I)Landroid/content/Intent;
    .locals 9
    .parameter "resultCommand"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 686
    const/4 v2, 0x0

    .line 688
    .local v2, intent:Landroid/content/Intent;
    const/4 v3, 0x4

    new-array v1, v3, [I

    .line 690
    .local v1, assignCommandArray:[I
    invoke-virtual {p0, v1, v5}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->functionAssignment([II)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 692
    aput v4, v1, v5

    .line 693
    aput v4, v1, v6

    .line 694
    aput v4, v1, v7

    .line 695
    aput v4, v1, v8

    .line 698
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 727
    :goto_0
    :pswitch_0
    return-object v2

    .line 703
    :pswitch_1
    const-string v0, "custom.wakeup.screen"

    .line 704
    .local v0, EXTRA_CUSTOM_WAKEUP:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.vlingo.midas"

    const-string v5, "com.vlingo.midas.gui.ConversationActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 707
    const v3, 0x10208000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 709
    const-string v3, "custom.wakeup.screen"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 712
    .end local v0           #EXTRA_CUSTOM_WAKEUP:Ljava/lang/String;
    :pswitch_2
    aget v3, v1, v5

    invoke-static {v3}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(I)Landroid/content/Intent;

    move-result-object v2

    .line 713
    goto :goto_0

    .line 715
    :pswitch_3
    aget v3, v1, v6

    invoke-static {v3}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(I)Landroid/content/Intent;

    move-result-object v2

    .line 716
    goto :goto_0

    .line 718
    :pswitch_4
    aget v3, v1, v7

    invoke-static {v3}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(I)Landroid/content/Intent;

    move-result-object v2

    .line 719
    goto :goto_0

    .line 721
    :pswitch_5
    aget v3, v1, v8

    invoke-static {v3}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(I)Landroid/content/Intent;

    move-result-object v2

    .line 722
    goto :goto_0

    .line 698
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 518
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iput-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 521
    iput-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 523
    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    .line 524
    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    .line 526
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopEnroll()I

    .line 527
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 529
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundEnroll start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->waitForBackgroundEnroll()V

    .line 535
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundEnroll end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 538
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mVElib = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    if-eqz v0, :cond_1

    .line 543
    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    .line 544
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mSensoryJNI = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->destroy()V

    .line 549
    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    .line 550
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mDummyRecorder = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v0, :cond_3

    .line 556
    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 557
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mResultListener = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_3
    return-void
.end method

.method public functionAssignment([II)I
    .locals 3
    .parameter "AssignArray"
    .parameter "RW"

    .prologue
    .line 732
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v2, "/data/data/com.vlingo.midas/typeDefine.bin"

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/voiceshell/VoiceEngine;->functionAssignment(Ljava/lang/String;[II)I

    move-result v0

    .line 734
    .local v0, result:I
    return v0
.end method

.method public getEnableWakeUp()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    return v0
.end method

.method public init()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    .line 164
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-eqz v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    .line 181
    :cond_2
    invoke-static {}, Lcom/samsung/voiceshell/VoiceEngineWrapper;->getInstance()Lcom/samsung/voiceshell/VoiceEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 182
    invoke-static {}, Lcom/vlingo/client/phrasespotter/SensoryEngineWrapper;->getInstance()Lcom/vlingo/client/phrasespotter/SensoryJNI;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    .line 184
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v0, v3}, Lcom/samsung/voiceshell/VoiceEngine;->setIsRunningVoiceEngine(Z)V

    .line 186
    new-instance v0, Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    invoke-direct {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;-><init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    .line 188
    iput-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 190
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;

    invoke-direct {v1, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;-><init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    .line 284
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 286
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "setContext"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    .line 127
    return-void
.end method

.method public setLanguage()V
    .locals 6

    .prologue
    .line 817
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 818
    .local v2, stringLanguage:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 819
    .local v1, stringCountry:Ljava/lang/String;
    const-string v3, "/data/data/com.vlingo.midas/files/language.bin"

    invoke-direct {p0, v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, sVoiceLanguage:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLanguage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Country : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sVoiceLanguage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    if-eqz v0, :cond_8

    .line 827
    const-string v3, "ko-KR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 829
    const-string v3, "/system/wakeupdata/sensory/nn_ko_mfcc_16k_15_big_250_v2_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 830
    const-string v3, "/system/wakeupdata/sensory/ko_hi_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    const-string v3, "en-GB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 834
    const-string v3, "/system/wakeupdata/sensory/nn_en_uk_mfcc_16k_15_big_250_v2_0.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 835
    const-string v3, "/system/wakeupdata/sensory/en_gb_hg_tuned1_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_0

    .line 837
    :cond_2
    const-string v3, "en-US"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 839
    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 840
    const-string v3, "/system/wakeupdata/sensory/en_us_hg_tuned3_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_0

    .line 842
    :cond_3
    const-string v3, "es-ES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 844
    const-string v3, "/system/wakeupdata/sensory/nn_es_mfcc_16k_15_big_250_v1_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 845
    const-string v3, "/system/wakeupdata/sensory/es_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_0

    .line 847
    :cond_4
    const-string v3, "v-es-LA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 849
    const-string v3, "/system/wakeupdata/sensory/nn_es_mfcc_16k_15_big_250_v1_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 850
    const-string v3, "/system/wakeupdata/sensory/es_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_0

    .line 852
    :cond_5
    const-string v3, "fr-FR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 854
    const-string v3, "/system/wakeupdata/sensory/nn_fr_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 855
    const-string v3, "/system/wakeupdata/sensory/fr_galaxy_tuned8_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_0

    .line 857
    :cond_6
    const-string v3, "de-DE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 859
    const-string v3, "/system/wakeupdata/sensory/nn_de_mfcc_16k_15_big_250_v3_0.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 860
    const-string v3, "/system/wakeupdata/sensory/de_galaxy_tuned_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_0

    .line 862
    :cond_7
    const-string v3, "it-IT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 864
    const-string v3, "/system/wakeupdata/sensory/nn_it_mfcc_16k_15_big_250_v3_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 865
    const-string v3, "/system/wakeupdata/sensory/it_galaxy_tuned_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_0

    .line 870
    :cond_8
    if-eqz v2, :cond_0

    .line 872
    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 874
    const-string v3, "/system/wakeupdata/sensory/nn_ko_mfcc_16k_15_big_250_v2_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 875
    const-string v3, "/system/wakeupdata/sensory/ko_hi_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 877
    :cond_9
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 879
    const-string v3, "GB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 881
    const-string v3, "/system/wakeupdata/sensory/nn_en_uk_mfcc_16k_15_big_250_v2_0.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 882
    const-string v3, "/system/wakeupdata/sensory/en_gb_hg_tuned1_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 886
    :cond_a
    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 887
    const-string v3, "/system/wakeupdata/sensory/en_us_hg_tuned3_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 890
    :cond_b
    const-string v3, "es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 892
    const-string v3, "/system/wakeupdata/sensory/nn_es_mfcc_16k_15_big_250_v1_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 893
    const-string v3, "/system/wakeupdata/sensory/es_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 895
    :cond_c
    sget-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 897
    const-string v3, "/system/wakeupdata/sensory/nn_fr_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 898
    const-string v3, "/system/wakeupdata/sensory/fr_galaxy_tuned8_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 900
    :cond_d
    sget-object v3, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 902
    const-string v3, "/system/wakeupdata/sensory/nn_de_mfcc_16k_15_big_250_v3_0.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 903
    const-string v3, "/system/wakeupdata/sensory/de_galaxy_tuned_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 905
    :cond_e
    sget-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 907
    const-string v3, "/system/wakeupdata/sensory/nn_it_mfcc_16k_15_big_250_v3_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 908
    const-string v3, "/system/wakeupdata/sensory/it_galaxy_tuned_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public startEnroll(S)I
    .locals 1
    .parameter "cmNumber"

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->startEnroll(SS)I

    move-result v0

    return v0
.end method

.method public startEnroll(SS)I
    .locals 2
    .parameter "cmNumber"
    .parameter "wakeUpType"

    .prologue
    const/4 v0, -0x1

    .line 297
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 302
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-eqz v1, :cond_0

    .line 307
    iput p2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    .line 308
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1, v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWakeUpType(I)V

    .line 310
    iput-short p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 313
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startVerify(I)I
    .locals 14
    .parameter "wakeType"

    .prologue
    const/4 v0, -0x1

    const/16 v6, -0xa

    const/16 v1, -0xb

    const/4 v13, 0x1

    const/4 v5, 0x0

    .line 336
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "startVerify"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v11, 0x0

    .line 340
    .local v11, iResult:I
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 345
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-eqz v2, :cond_0

    .line 362
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 364
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    if-nez v0, :cond_2

    .line 367
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    .line 375
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 377
    iput-boolean v13, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    .line 379
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    if-eqz v0, :cond_2

    .line 381
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    .line 382
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "waiting for recording start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_1
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "waiting for recording end"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_2
    iput p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    .line 395
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v0, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWakeUpType(I)V

    .line 397
    new-instance v12, Ljava/io/File;

    const-string v0, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v12, mFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 401
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v0, :cond_3

    .line 403
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    invoke-interface {v0, v1, v5}, Lcom/samsung/voiceshell/VoiceEngineResultListener;->OnVerifyResult(IS)V

    :cond_3
    move v0, v1

    .line 405
    goto :goto_0

    .line 385
    .end local v12           #mFile:Ljava/io/File;
    :catch_0
    move-exception v10

    .line 387
    .local v10, e:Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 408
    .end local v10           #e:Ljava/lang/InterruptedException;
    .restart local v12       #mFile:Ljava/io/File;
    :cond_4
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->InitializeVerify()I

    move-result v11

    .line 410
    if-ne v11, v6, :cond_a

    .line 412
    iget v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 414
    :cond_5
    iput-boolean v13, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 415
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWeHaveNoModel(Z)V

    .line 416
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v0, :cond_6

    .line 418
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    invoke-interface {v0, v6, v5}, Lcom/samsung/voiceshell/VoiceEngineResultListener;->OnVerifyResult(IS)V

    :cond_6
    move v0, v11

    .line 420
    goto :goto_0

    .line 424
    :cond_7
    iput-boolean v13, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 425
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWeHaveNoModel(Z)V

    .line 434
    :goto_2
    const-string v0, "/data/data/com.vlingo.midas/kwd_1.bin"

    invoke-direct {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->checkFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    .line 435
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCustomVoiceTalkEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setCustomVoiceTalkFlag(Z)V

    .line 438
    iget v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v0, v13, :cond_9

    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    if-nez v0, :cond_9

    .line 440
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    if-nez v0, :cond_8

    .line 442
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    sget v3, Lcom/vlingo/client/phrasespotter/SensoryJNI;->GRAMMAR_FORMALITY_DEFAULT:I

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->beam:F

    iget v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->absBeam:F

    iget v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->aoffset:F

    iget v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->delay:F

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->debugSessionPathname:Ljava/lang/String;

    iget v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->doLoggingParam:I

    invoke-virtual/range {v0 .. v9}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->Initialize(Ljava/lang/String;Ljava/lang/String;IFFFFLjava/lang/String;I)Z

    .line 452
    iput-boolean v13, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    .line 455
    :cond_8
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    invoke-virtual {v0}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->MakeReady()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 457
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "SensoryEngine Ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->StartVerify()I

    move-result v11

    move v0, v11

    .line 467
    goto/16 :goto_0

    .line 430
    :cond_a
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 431
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWeHaveNoModel(Z)V

    goto :goto_2

    .line 461
    :cond_b
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "SensoryEngine Not Ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public stopEnroll()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 318
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v0

    .line 323
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-eqz v2, :cond_0

    .line 328
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 329
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TerminateEnroll()I

    move v0, v1

    .line 330
    goto :goto_0
.end method

.method public stopVerify()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 472
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "stopVerify"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_1

    .line 495
    :cond_0
    :goto_0
    return v0

    .line 479
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-eqz v2, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TerminateVerify()I

    .line 486
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 488
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 491
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    :cond_2
    move v0, v1

    .line 495
    goto :goto_0
.end method
