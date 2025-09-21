.class public Lk4/y;
.super Ljava/lang/Object;
.source "RecognizerSupporter.java"


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lk4/y;->a:Z

    .line 3
    iput-boolean v0, p0, Lk4/y;->b:Z

    .line 4
    invoke-static {}, Lk4/e;->e()Z

    move-result v0

    iput-boolean v0, p0, Lk4/y;->a:Z

    .line 5
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->isSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lk4/y;->b:Z

    return-void
.end method

.method public static b(Landroid/content/Context;Lk4/n;)Z
    .locals 2

    .line 1
    sget-object v0, Lk4/n;->b:Lk4/n;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    .line 2
    invoke-static {}, Lk4/e;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->isSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 3
    :cond_1
    sget-object v0, Lk4/n;->c:Lk4/n;

    if-ne v0, p1, :cond_2

    .line 4
    invoke-static {}, Lk4/e;->e()Z

    move-result p0

    return p0

    .line 5
    :cond_2
    sget-object v0, Lk4/n;->d:Lk4/n;

    if-ne v0, p1, :cond_3

    .line 6
    invoke-static {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->isSupported(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Undefined OCR Type : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecognizerSupporter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public a(Lk4/n;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lk4/y;->a:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lk4/y;->b:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lk4/h;

    const-string p1, "OCR Recognizer is not supported"

    invoke-direct {p0, p1}, Lk4/h;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 3
    sget-object v0, Lk4/n;->c:Lk4/n;

    if-eq p1, v0, :cond_2

    sget-object v0, Lk4/n;->b:Lk4/n;

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance p0, Lk4/h;

    const-string p1, "OCR Recognizer is not supported MOCR Type"

    invoke-direct {p0, p1}, Lk4/h;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    :goto_1
    iget-boolean p0, p0, Lk4/y;->b:Z

    if-nez p0, :cond_5

    sget-object p0, Lk4/n;->d:Lk4/n;

    if-eq p1, p0, :cond_4

    sget-object p0, Lk4/n;->b:Lk4/n;

    if-eq p1, p0, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    new-instance p0, Lk4/h;

    const-string p1, "OCR Recognizer is not supported SOCR Type"

    invoke-direct {p0, p1}, Lk4/h;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    return-void
.end method
