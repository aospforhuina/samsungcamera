.class public Lh0/e;
.super Ljava/lang/Object;
.source "BitmapResource.java"

# interfaces
.implements La0/v;
.implements La0/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La0/v<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "La0/r;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Lb0/d;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lb0/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    .line 2
    invoke-static {p1, v0}, Lu0/j;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lh0/e;->a:Landroid/graphics/Bitmap;

    const-string p1, "BitmapPool must not be null"

    .line 3
    invoke-static {p2, p1}, Lu0/j;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb0/d;

    iput-object p1, p0, Lh0/e;->b:Lb0/d;

    return-void
.end method

.method public static d(Landroid/graphics/Bitmap;Lb0/d;)Lh0/e;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lh0/e;

    invoke-direct {v0, p0, p1}, Lh0/e;-><init>(Landroid/graphics/Bitmap;Lb0/d;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget-object p0, p0, Lh0/e;->a:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lu0/k;->g(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lh0/e;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public c()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lh0/e;->b()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public initialize()V
    .locals 0

    iget-object p0, p0, Lh0/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lh0/e;->b:Lb0/d;

    iget-object p0, p0, Lh0/e;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, p0}, Lb0/d;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method
