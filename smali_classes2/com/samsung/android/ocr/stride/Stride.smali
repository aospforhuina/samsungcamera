.class public Lcom/samsung/android/ocr/stride/Stride;
.super Lcom/samsung/android/ocr/MOCR;
.source "Stride.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ocr/stride/Stride$IconResult;
    }
.end annotation


# static fields
.field private static final NO_LANG:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Stride"

.field private static volatile stride:Lcom/samsung/android/ocr/stride/Stride;


# instance fields
.field private lang:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/ocr/MOCR;-><init>()V

    return-void
.end method

.method private static synchronized native Close()V
.end method

.method private static synchronized native Detect(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
.end method

.method private static synchronized native DetectBlock(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;[Landroid/graphics/Point;)I
.end method

.method public static synchronized native DetectIcon(Lcom/samsung/android/ocr/MOCRImage;)[Lcom/samsung/android/ocr/stride/Stride$IconResult;
.end method

.method private static synchronized native DetectScript(Lcom/samsung/android/ocr/MOCRImage;)I
.end method

.method private static synchronized native DetectScriptAll(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
.end method

.method private static synchronized native DetectText(Lcom/samsung/android/ocr/MOCRImage;)Z
.end method

.method private static synchronized native FreeDetectBlock()I
.end method

.method private static synchronized native GetVersion()Ljava/lang/String;
.end method

.method private static synchronized native Init(Ljava/lang/String;)I
.end method

.method private static synchronized native Init(Ljava/lang/String;I)I
.end method

.method public static synchronized native Orientation(Lcom/samsung/android/ocr/MOCRImage;)I
.end method

.method private static synchronized native Recognize(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
.end method

.method private static synchronized native RecognizeBlock(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;Lcom/samsung/android/ocr/MOCRResult$Page;)I
.end method

.method private Recognize_Java(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 16

    .line 1
    invoke-static/range {p1 .. p2}, Lcom/samsung/android/ocr/stride/Stride;->Recognize(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result v1

    .line 2
    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRSuccess:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {v0}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 3
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->validateEmailLine(Lcom/samsung/android/ocr/MOCRResult$Page;)V

    .line 4
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;->validateURLLine(Lcom/samsung/android/ocr/MOCRResult$Page;)V

    .line 5
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/ocr/stride/postocr/entity/PhoneNumberCorrection;->validatePhoneLine(Lcom/samsung/android/ocr/MOCRResult$Page;)V

    .line 6
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->process(Lcom/samsung/android/ocr/MOCRResult$Page;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 7
    sget-object v0, Lcom/samsung/android/ocr/stride/Stride;->TAG:Ljava/lang/String;

    const-string v3, "Error in PostProcessCorrection due to bounds"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :cond_0
    :goto_0
    move-object/from16 v2, p0

    .line 9
    iget v0, v2, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    invoke-static {v0}, Lcom/samsung/android/ocr/MOCRLang;->isArabic(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v2, p2

    .line 10
    iget-object v0, v2, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    array-length v2, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    .line 11
    iget-object v5, v5, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 12
    iget-object v9, v8, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    array-length v10, v9

    const/4 v11, 0x1

    move v13, v11

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v10, :cond_2

    aget-object v14, v9, v12

    .line 13
    iget-object v15, v14, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-static {v15}, Lcom/samsung/android/ocr/stride/lang/UnicodeLangDetector;->isArabic(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 14
    new-instance v13, Ljava/lang/StringBuilder;

    iget-object v15, v14, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "\\r"

    const-string v3, ""

    invoke-virtual {v13, v15, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v14, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    const/4 v13, 0x0

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    if-nez v13, :cond_3

    const/4 v3, 0x0

    .line 17
    :goto_4
    iget-object v9, v8, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    array-length v10, v9

    div-int/lit8 v10, v10, 0x2

    if-ge v3, v10, :cond_3

    .line 18
    aget-object v10, v9, v3

    .line 19
    array-length v12, v9

    sub-int/2addr v12, v11

    sub-int/2addr v12, v3

    aget-object v12, v9, v12

    aput-object v12, v9, v3

    .line 20
    array-length v12, v9

    sub-int/2addr v12, v11

    sub-int/2addr v12, v3

    aput-object v10, v9, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method public static synchronized native SetFileNameForDebug(Ljava/lang/String;)V
.end method

.method private static synchronized native SetOptions(Lcom/samsung/android/ocr/MOCROptions;)V
.end method

.method private getDeviceLang()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/ocr/MOCRLang;->getLangFromLocale(Ljava/util/Locale;)I

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/samsung/android/ocr/stride/Stride;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/ocr/stride/Stride;->stride:Lcom/samsung/android/ocr/stride/Stride;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/samsung/android/ocr/stride/Stride;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/samsung/android/ocr/stride/Stride;->stride:Lcom/samsung/android/ocr/stride/Stride;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/samsung/android/ocr/stride/Stride;

    invoke-direct {v1}, Lcom/samsung/android/ocr/stride/Stride;-><init>()V

    sput-object v1, Lcom/samsung/android/ocr/stride/Stride;->stride:Lcom/samsung/android/ocr/stride/Stride;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/ocr/stride/Stride;->stride:Lcom/samsung/android/ocr/stride/Stride;

    return-object v0
.end method


# virtual methods
.method protected cvtToLang(I)I
    .locals 0

    return p1
.end method

.method protected deinit()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/ocr/stride/Stride;->Close()V

    return-void
.end method

.method public detect([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 0

    invoke-virtual {p4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->getValue()I

    move-result p0

    invoke-static {p1, p3, p2, p0}, Lcom/samsung/android/ocr/MOCRImage;->fromByteArray([BIII)Lcom/samsung/android/ocr/MOCRImage;

    move-result-object p0

    invoke-static {p0, p5}, Lcom/samsung/android/ocr/stride/Stride;->Detect(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p0

    return p0
.end method

.method public detectBlock([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Landroid/graphics/Point;[Landroid/graphics/Point;)I
    .locals 0

    .line 1
    invoke-virtual {p4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->getValue()I

    move-result p0

    invoke-static {p1, p3, p2, p0}, Lcom/samsung/android/ocr/MOCRImage;->fromByteArray([BIII)Lcom/samsung/android/ocr/MOCRImage;

    move-result-object p0

    invoke-static {p0, p5, p6}, Lcom/samsung/android/ocr/stride/Stride;->DetectBlock(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;[Landroid/graphics/Point;)I

    move-result p0

    return p0
.end method

.method public detectBlock([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;[Landroid/graphics/Point;)I
    .locals 2

    .line 2
    new-instance p0, Landroid/graphics/Point;

    div-int/lit8 v0, p2, 0x2

    div-int/lit8 v1, p3, 0x2

    invoke-direct {p0, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 3
    invoke-virtual {p4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->getValue()I

    move-result p4

    invoke-static {p1, p3, p2, p4}, Lcom/samsung/android/ocr/MOCRImage;->fromByteArray([BIII)Lcom/samsung/android/ocr/MOCRImage;

    move-result-object p1

    invoke-static {p1, p0, p5}, Lcom/samsung/android/ocr/stride/Stride;->DetectBlock(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;[Landroid/graphics/Point;)I

    move-result p0

    return p0
.end method

.method public detectBlock_ARGB(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;[Landroid/graphics/Point;)I
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/ocr/stride/Stride;->DetectBlock(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;[Landroid/graphics/Point;)I

    move-result p0

    return p0
.end method

.method public detectBlock_ARGB(Lcom/samsung/android/ocr/MOCRImage;[Landroid/graphics/Point;)I
    .locals 2

    if-nez p1, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result p0

    return p0

    .line 4
    :cond_0
    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRImage;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRImage;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 5
    invoke-static {p1, p0, p2}, Lcom/samsung/android/ocr/stride/Stride;->DetectBlock(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;[Landroid/graphics/Point;)I

    move-result p0

    return p0
.end method

.method public detectScript(Lcom/samsung/android/ocr/MOCRImage;)I
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/ocr/stride/Stride;->DetectScript(Lcom/samsung/android/ocr/MOCRImage;)I

    move-result p0

    return p0
.end method

.method public detectScriptAll(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/ocr/stride/Stride;->DetectScriptAll(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p0

    return p0
.end method

.method public detectText([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;)Z
    .locals 0

    invoke-virtual {p4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->getValue()I

    move-result p0

    invoke-static {p1, p3, p2, p0}, Lcom/samsung/android/ocr/MOCRImage;->fromByteArray([BIII)Lcom/samsung/android/ocr/MOCRImage;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/ocr/stride/Stride;->DetectText(Lcom/samsung/android/ocr/MOCRImage;)Z

    move-result p0

    return p0
.end method

.method public detectText_ARGB(Lcom/samsung/android/ocr/MOCRImage;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/ocr/stride/Stride;->DetectText(Lcom/samsung/android/ocr/MOCRImage;)Z

    move-result p0

    return p0
.end method

.method public detect_ARGB(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/ocr/stride/Stride;->Detect(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p0

    return p0
.end method

.method public freeDetectBlock()I
    .locals 0

    invoke-static {}, Lcom/samsung/android/ocr/stride/Stride;->FreeDetectBlock()I

    move-result p0

    return p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/samsung/android/ocr/stride/Stride;->GetVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected init()I
    .locals 1

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    const/4 p0, 0x0

    .line 10
    invoke-static {p0}, Lcom/samsung/android/ocr/stride/Stride;->Init(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected init(I)I
    .locals 2

    .line 1
    iput p1, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/ocr/stride/Stride;->getDeviceLang()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    .line 3
    sget-object p1, Lcom/samsung/android/ocr/stride/Stride;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto Device Lang - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 4
    iget p0, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    invoke-static {p1, p0}, Lcom/samsung/android/ocr/stride/Stride;->Init(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected init(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    .line 12
    invoke-static {p1}, Lcom/samsung/android/ocr/stride/Stride;->Init(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected init(Ljava/lang/String;I)I
    .locals 2

    .line 5
    iput p2, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/ocr/stride/Stride;->getDeviceLang()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    .line 7
    sget-object p2, Lcom/samsung/android/ocr/stride/Stride;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto Device Lang - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    iget p0, p0, Lcom/samsung/android/ocr/stride/Stride;->lang:I

    invoke-static {p1, p0}, Lcom/samsung/android/ocr/stride/Stride;->Init(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected recognizeBlock([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Landroid/graphics/Point;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 0

    .line 1
    invoke-virtual {p4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->getValue()I

    move-result p0

    invoke-static {p1, p3, p2, p0}, Lcom/samsung/android/ocr/MOCRImage;->fromByteArray([BIII)Lcom/samsung/android/ocr/MOCRImage;

    move-result-object p0

    invoke-static {p0, p5, p6}, Lcom/samsung/android/ocr/stride/Stride;->RecognizeBlock(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p0

    return p0
.end method

.method protected recognizeBlock([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 2

    .line 2
    new-instance p0, Landroid/graphics/Point;

    div-int/lit8 v0, p2, 0x2

    div-int/lit8 v1, p3, 0x2

    invoke-direct {p0, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 3
    invoke-virtual {p4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->getValue()I

    move-result p4

    invoke-static {p1, p3, p2, p4}, Lcom/samsung/android/ocr/MOCRImage;->fromByteArray([BIII)Lcom/samsung/android/ocr/MOCRImage;

    move-result-object p1

    invoke-static {p1, p0, p5}, Lcom/samsung/android/ocr/stride/Stride;->RecognizeBlock(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p0

    return p0
.end method

.method protected recognizeBlock_ARGB(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/ocr/stride/Stride;->RecognizeBlock(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p0

    return p0
.end method

.method protected recognizeBlock_ARGB(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 2

    if-nez p1, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result p0

    return p0

    .line 4
    :cond_0
    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRImage;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/samsung/android/ocr/MOCRImage;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 5
    invoke-static {p1, p0, p2}, Lcom/samsung/android/ocr/stride/Stride;->RecognizeBlock(Lcom/samsung/android/ocr/MOCRImage;Landroid/graphics/Point;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p0

    return p0
.end method

.method protected run([BIILcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 0

    invoke-virtual {p4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRPxlFmt;->getValue()I

    move-result p4

    invoke-static {p1, p3, p2, p4}, Lcom/samsung/android/ocr/MOCRImage;->fromByteArray([BIII)Lcom/samsung/android/ocr/MOCRImage;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/samsung/android/ocr/stride/Stride;->Recognize_Java(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p0

    return p0
.end method

.method protected run_ARGB(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ocr/stride/Stride;->Recognize_Java(Lcom/samsung/android/ocr/MOCRImage;Lcom/samsung/android/ocr/MOCRResult$Page;)I

    move-result p0

    return p0
.end method

.method public set_options(Lcom/samsung/android/ocr/MOCROptions;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/ocr/stride/Stride;->SetOptions(Lcom/samsung/android/ocr/MOCROptions;)V

    return-void
.end method
