.class public final Lm0/c;
.super Ljava/lang/Object;
.source "DrawableBytesTranscoder.java"

# interfaces
.implements Lm0/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm0/e<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final a:Lb0/d;

.field private final b:Lm0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm0/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field private final c:Lm0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm0/e<",
            "Ll0/c;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb0/d;Lm0/e;Lm0/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb0/d;",
            "Lm0/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "Lm0/e<",
            "Ll0/c;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm0/c;->a:Lb0/d;

    .line 3
    iput-object p2, p0, Lm0/c;->b:Lm0/e;

    .line 4
    iput-object p3, p0, Lm0/c;->c:Lm0/e;

    return-void
.end method

.method private static b(La0/v;)La0/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/v<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "La0/v<",
            "Ll0/c;",
            ">;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public a(La0/v;Lx/i;)La0/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/v<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lx/i;",
            ")",
            "La0/v<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, La0/v;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lm0/c;->b:Lm0/e;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object p0, p0, Lm0/c;->a:Lb0/d;

    invoke-static {v0, p0}, Lh0/e;->d(Landroid/graphics/Bitmap;Lb0/d;)Lh0/e;

    move-result-object p0

    .line 5
    invoke-interface {p1, p0, p2}, Lm0/e;->a(La0/v;Lx/i;)La0/v;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    instance-of v0, v0, Ll0/c;

    if-eqz v0, :cond_1

    .line 7
    iget-object p0, p0, Lm0/c;->c:Lm0/e;

    invoke-static {p1}, Lm0/c;->b(La0/v;)La0/v;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lm0/e;->a(La0/v;Lx/i;)La0/v;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
