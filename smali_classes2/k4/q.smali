.class public Lk4/q;
.super Ljava/lang/Object;
.source "RecognizerInternal.java"

# interfaces
.implements Lk4/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk4/q$c;
    }
.end annotation


# instance fields
.field protected a:Lk4/y;

.field protected b:Lk4/u;

.field protected c:Lk4/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lk4/n;Lk4/i;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk4/q;->a:Lk4/y;

    .line 3
    iput-object v0, p0, Lk4/q;->b:Lk4/u;

    .line 4
    iput-object v0, p0, Lk4/q;->c:Lk4/b;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "RecognizerInternal"

    const-string v3, "OCR Recognizer(Internal) is initialized with version: 3.1.221111"

    .line 6
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v3, Lk4/t;

    invoke-direct {v3, p1, p2, p3}, Lk4/t;-><init>(Landroid/content/Context;Lk4/n;Lk4/i;)V

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- Language : "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lk4/t;->c:Lk4/i;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- OCR Type : "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lk4/t;->b:Lk4/n;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance p3, Lk4/y;

    invoke-direct {p3, p1}, Lk4/y;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lk4/q;->a:Lk4/y;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "- MOCR Support: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lk4/q;->a:Lk4/y;

    iget-boolean p3, p3, Lk4/y;->a:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "- SOCR Support: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lk4/q;->a:Lk4/y;

    iget-boolean p3, p3, Lk4/y;->b:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object p1, p0, Lk4/q;->a:Lk4/y;

    invoke-virtual {p1, p2}, Lk4/y;->a(Lk4/n;)V

    .line 14
    invoke-virtual {p0, v3}, Lk4/q;->e(Lk4/t;)V

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 16
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, p2, p1

    const-string p0, "OCR Initialization(Recognizer Creation) Time: %d ms"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    iget-object p0, p0, Lk4/q;->b:Lk4/u;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lk4/u;->a()V

    return-void

    .line 3
    :cond_0
    new-instance p0, Lk4/g;

    const-string v0, "Recognizer is closed or has not been created"

    invoke-direct {p0, v0}, Lk4/g;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Landroid/content/Context;Lk4/n;)Z
    .locals 0

    invoke-static {p0, p1}, Lk4/y;->b(Landroid/content/Context;Lk4/n;)Z

    move-result p0

    return p0
.end method

.method private h(Landroid/graphics/Bitmap;Lk4/j;)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Lk4/q;->c()V

    .line 2
    invoke-static {p1, p2}, Lk4/p;->d(Landroid/graphics/Bitmap;Lk4/j;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "[process] Input Image Size: (%d, %d)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "RecognizerInternal"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5
    iget-object v0, p0, Lk4/q;->c:Lk4/b;

    if-eqz v0, :cond_1

    const-string p0, "Recognizer is already in processing"

    .line 6
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 7
    :cond_1
    iget-object v0, p0, Lk4/q;->b:Lk4/u;

    invoke-virtual {p2}, Lk4/j;->f()Lk4/j$f;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lk4/u;->j(Landroid/graphics/Bitmap;Lk4/j$f;)Lk4/b;

    move-result-object p1

    iput-object p1, p0, Lk4/q;->c:Lk4/b;

    if-nez p1, :cond_2

    const-string p0, "There is no recognizer created."

    .line 8
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 9
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    new-array p2, v3, [Ljava/lang/Object;

    sub-long/2addr p0, v4

    .line 10
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "OCR Common processing Time: %d ms"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lk4/q;->c:Lk4/b;

    const-string p0, "RecognizerInternal"

    const-string v0, "Processing of Recognizer completed"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Z
    .locals 2

    new-instance v0, Lk4/q$a;

    invoke-direct {v0, p0}, Lk4/q$a;-><init>(Lk4/q;)V

    new-instance v1, Lk4/j;

    invoke-direct {v1}, Lk4/j;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lk4/q;->g(Landroid/graphics/Bitmap;Lk4/q$c;Lk4/j;)Z

    move-result p0

    return p0
.end method

.method public b(Landroid/graphics/Bitmap;Lk4/j;)Z
    .locals 1

    new-instance v0, Lk4/q$b;

    invoke-direct {v0, p0}, Lk4/q$b;-><init>(Lk4/q;)V

    invoke-virtual {p0, p1, v0, p2}, Lk4/q;->g(Landroid/graphics/Bitmap;Lk4/q$c;Lk4/j;)Z

    move-result p0

    return p0
.end method

.method public close()V
    .locals 2

    const-string v0, "RecognizerInternal"

    const-string v1, "RecognizerInternal close()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lk4/q;->d()V

    return-void
.end method

.method protected d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk4/q;->b:Lk4/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lk4/u;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lk4/q;->b:Lk4/u;

    return-void
.end method

.method protected e(Lk4/t;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk4/q;->d()V

    .line 2
    new-instance v0, Lk4/u;

    iget-object v1, p0, Lk4/q;->a:Lk4/y;

    invoke-direct {v0, p1, v1}, Lk4/u;-><init>(Lk4/t;Lk4/y;)V

    iput-object v0, p0, Lk4/q;->b:Lk4/u;

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lk4/q;->close()V

    return-void
.end method

.method protected g(Landroid/graphics/Bitmap;Lk4/q$c;Lk4/j;)Z
    .locals 6

    .line 1
    invoke-direct {p0, p1, p3}, Lk4/q;->h(Landroid/graphics/Bitmap;Lk4/j;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    iget-object v0, p0, Lk4/q;->c:Lk4/b;

    invoke-interface {p2, v0, p1, p3}, Lk4/q$c;->a(Lk4/b;Landroid/graphics/Bitmap;Lk4/j;)Z

    move-result p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OCR Processing result of processor.process(...): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "RecognizerInternal"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    sub-long/2addr v4, v2

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "OCR processing Time: %d ms"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-direct {p0}, Lk4/q;->i()V

    return p1
.end method
