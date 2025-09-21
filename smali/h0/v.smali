.class public final Lh0/v;
.super Ljava/lang/Object;
.source "LazyBitmapDrawableResource.java"

# interfaces
.implements La0/v;
.implements La0/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La0/v<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "La0/r;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:La0/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La0/v<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;La0/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "La0/v<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lh0/v;->a:Landroid/content/res/Resources;

    .line 3
    invoke-static {p2}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/v;

    iput-object p1, p0, Lh0/v;->b:La0/v;

    return-void
.end method

.method public static d(Landroid/content/res/Resources;La0/v;)La0/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "La0/v<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "La0/v<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lh0/v;

    invoke-direct {v0, p0, p1}, Lh0/v;-><init>(Landroid/content/res/Resources;La0/v;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget-object p0, p0, Lh0/v;->b:La0/v;

    invoke-interface {p0}, La0/v;->a()I

    move-result p0

    return p0
.end method

.method public b()Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lh0/v;->a:Landroid/content/res/Resources;

    iget-object p0, p0, Lh0/v;->b:La0/v;

    invoke-interface {p0}, La0/v;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public c()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lh0/v;->b()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public initialize()V
    .locals 1

    .line 1
    iget-object p0, p0, Lh0/v;->b:La0/v;

    instance-of v0, p0, La0/r;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, La0/r;

    invoke-interface {p0}, La0/r;->initialize()V

    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 0

    iget-object p0, p0, Lh0/v;->b:La0/v;

    invoke-interface {p0}, La0/v;->recycle()V

    return-void
.end method
