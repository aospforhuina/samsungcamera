.class public final Lj3/b;
.super Ljava/lang/Object;
.source "RecognizerImpl.kt"

# interfaces
.implements Lj3/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj3/b$a;
    }
.end annotation


# static fields
.field public static final c:Lj3/b$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lk4/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj3/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj3/b$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lj3/b;->c:Lj3/b$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lk4/o;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj3/b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lj3/b;->b:Lk4/o;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lk4/o;ILkotlin/jvm/internal/g;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lj3/b;-><init>(Landroid/content/Context;Lk4/o;)V

    return-void
.end method

.method private final d()V
    .locals 1

    .line 1
    iget-object p0, p0, Lj3/b;->b:Lk4/o;

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Recognizer is not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final e()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should be called on worker thread"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final f(Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lj3/b;->b:Lk4/o;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lk4/o;->a(Landroid/graphics/Bitmap;)Z

    move-result p0

    .line 2
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "detectTextWithOcrRecognizer detectText = "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/l;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecognizerImpl"

    invoke-static {v0, p1}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private final g(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Ll3/a;
    .locals 6

    .line 1
    new-instance v0, Lk4/j;

    invoke-direct {v0}, Lk4/j;-><init>()V

    .line 2
    iget-object v1, p0, Lj3/b;->b:Lk4/o;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v0}, Lk4/o;->b(Landroid/graphics/Bitmap;Lk4/j;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Ll3/f;->a:Ll3/f;

    iget-object p0, p0, Lj3/b;->a:Landroid/content/Context;

    invoke-virtual {p1, p0, v0, p2}, Ll3/f;->e(Landroid/content/Context;Lk4/j;Landroid/graphics/Rect;)Ll3/a;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Ll3/a;

    invoke-static {}, Ll6/q;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ll3/a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/g;)V

    const-string p1, "RecognizerImpl"

    const-string p2, "extractTextFromRecognizer empty result"

    .line 5
    invoke-static {p1, p2}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private final h(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 2
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 3
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 4
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 5
    invoke-static {p1, p0, v0, v1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "createBitmap(\n          \u2026idRect.height()\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Z
    .locals 2

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectText "

    .line 1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/l;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerImpl"

    invoke-static {v1, v0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lj3/b;->e()V

    .line 3
    invoke-direct {p0}, Lj3/b;->d()V

    .line 4
    invoke-direct {p0, p1}, Lj3/b;->f(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public b(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Ll3/a;
    .locals 2

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "validRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerImpl"

    invoke-static {v1, v0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lj3/b;->e()V

    .line 3
    invoke-direct {p0}, Lj3/b;->d()V

    .line 4
    invoke-direct {p0, p1, p2}, Lj3/b;->h(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lj3/b;->g(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Ll3/a;

    move-result-object p0

    return-object p0
.end method

.method public c(I)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "init  language = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/l;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerImpl"

    invoke-static {v1, v0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lj3/b;->e()V

    .line 3
    iget-object v0, p0, Lj3/b;->b:Lk4/o;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lk4/o;

    .line 5
    iget-object v1, p0, Lj3/b;->a:Landroid/content/Context;

    .line 6
    sget-object v2, Lk4/n;->b:Lk4/n;

    .line 7
    sget-object v3, Ll3/h;->b:Ll3/h$b;

    invoke-virtual {v3, p1}, Ll3/h$b;->a(I)Ll3/h;

    move-result-object p1

    invoke-virtual {p1}, Ll3/h;->b()Lk4/i;

    move-result-object p1

    .line 8
    invoke-direct {v0, v1, v2, p1}, Lk4/o;-><init>(Landroid/content/Context;Lk4/n;Lk4/i;)V

    iput-object v0, p0, Lj3/b;->b:Lk4/o;

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lj3/b;->e()V

    .line 2
    iget-object v0, p0, Lj3/b;->b:Lk4/o;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lk4/o;->close()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lj3/b;->b:Lk4/o;

    :goto_0
    return-void
.end method
