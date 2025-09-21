.class public Lh0/a;
.super Ljava/lang/Object;
.source "BitmapDrawableDecoder.java"

# interfaces
.implements Lx/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx/k<",
        "TDataType;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lx/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx/k<",
            "TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lx/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lx/k<",
            "TDataType;",
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

    iput-object p1, p0, Lh0/a;->b:Landroid/content/res/Resources;

    .line 3
    invoke-static {p2}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx/k;

    iput-object p1, p0, Lh0/a;->a:Lx/k;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILx/i;)La0/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;II",
            "Lx/i;",
            ")",
            "La0/v<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh0/a;->a:Lx/k;

    invoke-interface {v0, p1, p2, p3, p4}, Lx/k;->a(Ljava/lang/Object;IILx/i;)La0/v;

    move-result-object p1

    .line 2
    iget-object p0, p0, Lh0/a;->b:Landroid/content/res/Resources;

    invoke-static {p0, p1}, Lh0/v;->d(Landroid/content/res/Resources;La0/v;)La0/v;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Object;Lx/i;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;",
            "Lx/i;",
            ")Z"
        }
    .end annotation

    iget-object p0, p0, Lh0/a;->a:Lx/k;

    invoke-interface {p0, p1, p2}, Lx/k;->b(Ljava/lang/Object;Lx/i;)Z

    move-result p0

    return p0
.end method
