.class public Lh0/b;
.super Ljava/lang/Object;
.source "BitmapDrawableEncoder.java"

# interfaces
.implements Lx/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx/l<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lb0/d;

.field private final b:Lx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb0/d;Lx/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb0/d;",
            "Lx/l<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh0/b;->a:Lb0/d;

    .line 3
    iput-object p2, p0, Lh0/b;->b:Lx/l;

    return-void
.end method


# virtual methods
.method public a(Lx/i;)Lx/c;
    .locals 0

    iget-object p0, p0, Lh0/b;->b:Lx/l;

    invoke-interface {p0, p1}, Lx/l;->a(Lx/i;)Lx/c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/io/File;Lx/i;)Z
    .locals 0

    check-cast p1, La0/v;

    invoke-virtual {p0, p1, p2, p3}, Lh0/b;->c(La0/v;Ljava/io/File;Lx/i;)Z

    move-result p0

    return p0
.end method

.method public c(La0/v;Ljava/io/File;Lx/i;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/v<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;",
            "Ljava/io/File;",
            "Lx/i;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lh0/b;->b:Lx/l;

    new-instance v1, Lh0/e;

    invoke-interface {p1}, La0/v;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, Lh0/b;->a:Lb0/d;

    invoke-direct {v1, p1, p0}, Lh0/e;-><init>(Landroid/graphics/Bitmap;Lb0/d;)V

    invoke-interface {v0, v1, p2, p3}, Lx/d;->b(Ljava/lang/Object;Ljava/io/File;Lx/i;)Z

    move-result p0

    return p0
.end method
