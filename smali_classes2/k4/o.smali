.class public Lk4/o;
.super Ljava/lang/Object;
.source "Recognizer.java"

# interfaces
.implements Lk4/c;


# instance fields
.field protected a:Lk4/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lk4/n;Lk4/i;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk4/o;->a:Lk4/c;

    .line 3
    sget-object v0, Lk4/o$a;->a:[I

    invoke-static {p1}, Lk4/o;->g(Landroid/content/Context;)Lk4/a0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "Recognizer"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string p0, "Undefined Recognizer Version"

    .line 4
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "OCR Recognizer is initialized as RecognizerProxy with version: 3.1.221111"

    .line 5
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Lk4/x;

    invoke-direct {v0, p1, p2, p3}, Lk4/x;-><init>(Landroid/content/Context;Lk4/n;Lk4/i;)V

    iput-object v0, p0, Lk4/o;->a:Lk4/c;

    goto :goto_0

    :cond_1
    const-string v0, "OCR Recognizer is initialized as RecognizerInternal with version: 3.1.221111"

    .line 7
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v0, Lk4/q;

    invoke-direct {v0, p1, p2, p3}, Lk4/q;-><init>(Landroid/content/Context;Lk4/n;Lk4/i;)V

    iput-object v0, p0, Lk4/o;->a:Lk4/c;

    goto :goto_0

    :cond_2
    const-string v0, "OCR Recognizer is initialized as RecognizerInternal_OneUI411 with version: 3.1.221111"

    .line 9
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v0, Lk4/r;

    invoke-direct {v0, p1, p2, p3}, Lk4/r;-><init>(Landroid/content/Context;Lk4/n;Lk4/i;)V

    iput-object v0, p0, Lk4/o;->a:Lk4/c;

    goto :goto_0

    :cond_3
    const-string v0, "OCR Recognizer is initialized as RecognizerInternal_OneUI41 with version: 3.1.221111"

    .line 11
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v0, Lk4/s;

    invoke-direct {v0, p1, p2, p3}, Lk4/s;-><init>(Landroid/content/Context;Lk4/n;Lk4/i;)V

    iput-object v0, p0, Lk4/o;->a:Lk4/c;

    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lk4/o;->a:Lk4/c;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    new-array v1, p0, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "[%s] Instance has not been created yet."

    .line 2
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Recognizer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    return v0
.end method

.method public static d(Landroid/content/Context;I)I
    .locals 1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    .line 1
    invoke-static {}, Lk4/z;->b()I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lk4/z;->c(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lk4/z;->d(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static f(Landroid/content/Context;Lk4/n;)Z
    .locals 6

    const-string v0, "Recognizer"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_STRIDE_OCR_VERSION"

    .line 2
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_STRIDE_OCR_VERSION=[%s]"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v2

    .line 3
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "V1"

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "V2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "None"

    .line 5
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "Recognizer.isSupported() Return false with feature version[None]"

    .line 6
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string v4, "Recognizer.isSupported() Undefined version [%s], checking libs in device"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v2

    .line 7
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    const-string v4, "Recognizer.isSupported() Return true with feature version[%s]"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v2

    .line 8
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v3

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recognizer.isSupported() [NoSuchMethodError] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v3

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recognizer.isSupported() [NoClassDefFoundError] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v3, "Recognizer.isSupported() There is no floatingFeature for OCR_VERSION"

    .line 11
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    sget-object v3, Lk4/o$a;->a:[I

    invoke-static {p0}, Lk4/o;->g(Landroid/content/Context;)Lk4/a0;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v1, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 p0, 0x4

    if-eq v3, p0, :cond_3

    const-string p0, "Recognizer.isSupported() Undefined Recosgnizer Version"

    .line 13
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 14
    :cond_3
    invoke-static {p1}, Lk4/x;->i(Lk4/n;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "Recognizer.isSupported() RecognizerProxy.isSupported() is failed"

    .line 15
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 16
    :cond_4
    invoke-static {p0, p1}, Lk4/q;->f(Landroid/content/Context;Lk4/n;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "Recognizer.isSupported() RecognizerInternal.isSupported() is failed"

    .line 17
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    const-string p0, "Recognizer.isSupported() Return true without feature"

    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static g(Landroid/content/Context;)Lk4/a0;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->isSupported(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "Recognizer"

    if-nez v0, :cond_0

    const-string p0, "SOCR is not supported!"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object p0, Lk4/a0;->f:Lk4/a0;

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Lk4/o;->e(Landroid/content/Context;)I

    move-result v0

    .line 5
    invoke-static {p0, v0}, Lk4/o;->d(Landroid/content/Context;I)I

    move-result p0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Version: OCRDataProvider(%d), Device(%d)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, p0, :cond_1

    const-string p0, "Version for RECOGNIZER_FOR_DATA_PROVIDER_SERVICE is selected"

    .line 7
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object p0, Lk4/a0;->d:Lk4/a0;

    return-object p0

    :cond_1
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_2

    const-string p0, "Version for RECOGNIZER_FOR_FW_LATEST is selected"

    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-object p0, Lk4/a0;->c:Lk4/a0;

    return-object p0

    :cond_2
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_3

    const-string p0, "Version for RECOGNIZER_FOR_FW_ONEUI411 is selected"

    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    sget-object p0, Lk4/a0;->b:Lk4/a0;

    return-object p0

    :cond_3
    const-string p0, "Version for RECOGNIZER_FOR_FW_ONEUI41 is selected"

    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    sget-object p0, Lk4/a0;->a:Lk4/a0;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Z
    .locals 1

    const-string v0, "detectText"

    .line 1
    invoke-direct {p0, v0}, Lk4/o;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lk4/o;->a:Lk4/c;

    invoke-interface {p0, p1}, Lk4/c;->a(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public b(Landroid/graphics/Bitmap;Lk4/j;)Z
    .locals 1

    const-string v0, "recognize"

    .line 1
    invoke-direct {p0, v0}, Lk4/o;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lk4/o;->a:Lk4/c;

    invoke-interface {p0, p1, p2}, Lk4/c;->b(Landroid/graphics/Bitmap;Lk4/j;)Z

    move-result p0

    return p0
.end method

.method public close()V
    .locals 2

    const-string v0, "Recognizer"

    const-string v1, "Recognizer close()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "close"

    .line 2
    invoke-direct {p0, v0}, Lk4/o;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lk4/o;->a:Lk4/c;

    invoke-interface {p0}, Lk4/c;->close()V

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lk4/o;->close()V

    return-void
.end method
