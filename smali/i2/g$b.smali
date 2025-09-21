.class Li2/g$b;
.super Ljava/lang/Object;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Li2/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li2/g;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Li2/g;


# direct methods
.method constructor <init>(Li2/g;F)V
    .locals 0

    iput-object p1, p0, Li2/g$b;->b:Li2/g;

    iput p2, p0, Li2/g$b;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li2/c;)Li2/c;
    .locals 1

    .line 1
    instance-of v0, p1, Li2/i;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Li2/b;

    iget p0, p0, Li2/g$b;->a:F

    invoke-direct {v0, p0, p1}, Li2/b;-><init>(FLi2/c;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
