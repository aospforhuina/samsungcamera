.class Li2/g$a;
.super Ljava/lang/Object;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Li2/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li2/g;-><init>(Li2/g$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li2/g;


# direct methods
.method constructor <init>(Li2/g;)V
    .locals 0

    iput-object p1, p0, Li2/g$a;->a:Li2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li2/m;Landroid/graphics/Matrix;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Li2/g$a;->a:Li2/g;

    invoke-static {v0}, Li2/g;->b(Li2/g;)Ljava/util/BitSet;

    move-result-object v0

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p1}, Li2/m;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 2
    iget-object p0, p0, Li2/g$a;->a:Li2/g;

    invoke-static {p0}, Li2/g;->d(Li2/g;)[Li2/m$g;

    move-result-object p0

    invoke-virtual {p1, p2}, Li2/m;->f(Landroid/graphics/Matrix;)Li2/m$g;

    move-result-object p1

    aput-object p1, p0, p3

    return-void
.end method

.method public b(Li2/m;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Li2/g$a;->a:Li2/g;

    invoke-static {v0}, Li2/g;->b(Li2/g;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Li2/m;->e()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 2
    iget-object p0, p0, Li2/g$a;->a:Li2/g;

    invoke-static {p0}, Li2/g;->c(Li2/g;)[Li2/m$g;

    move-result-object p0

    invoke-virtual {p1, p2}, Li2/m;->f(Landroid/graphics/Matrix;)Li2/m$g;

    move-result-object p1

    aput-object p1, p0, p3

    return-void
.end method
