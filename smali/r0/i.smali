.class public abstract Lr0/i;
.super Lr0/a;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lr0/a<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static g:Z

.field private static k:I


# instance fields
.field protected final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lr0/i$a;

.field private c:Landroid/view/View$OnAttachStateChangeListener;

.field private d:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/bumptech/glide/g;->a:I

    sput v0, Lr0/i;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lr0/a;-><init>()V

    .line 2
    invoke-static {p1}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lr0/i;->a:Landroid/view/View;

    .line 3
    new-instance v0, Lr0/i$a;

    invoke-direct {v0, p1}, Lr0/i$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lr0/i;->b:Lr0/i$a;

    return-void
.end method

.method private k()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lr0/i;->a:Landroid/view/View;

    sget v0, Lr0/i;->k:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr0/i;->c:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lr0/i;->f:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lr0/i;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lr0/i;->f:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr0/i;->c:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lr0/i;->f:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lr0/i;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lr0/i;->f:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private n(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lr0/i;->g:Z

    .line 2
    iget-object p0, p0, Lr0/i;->a:Landroid/view/View;

    sget v0, Lr0/i;->k:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lr0/g;)V
    .locals 0

    iget-object p0, p0, Lr0/i;->b:Lr0/i$a;

    invoke-virtual {p0, p1}, Lr0/i$a;->k(Lr0/g;)V

    return-void
.end method

.method public c(Lq0/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lr0/i;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public g(Lr0/g;)V
    .locals 0

    iget-object p0, p0, Lr0/i;->b:Lr0/i$a;

    invoke-virtual {p0, p1}, Lr0/i$a;->d(Lr0/g;)V

    return-void
.end method

.method public h(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lr0/a;->h(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-direct {p0}, Lr0/i;->l()V

    return-void
.end method

.method public i()Lq0/c;
    .locals 1

    .line 1
    invoke-direct {p0}, Lr0/i;->k()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    instance-of v0, p0, Lq0/c;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lq0/c;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public j(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lr0/a;->j(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lr0/i;->b:Lr0/i$a;

    invoke-virtual {p1}, Lr0/i$a;->b()V

    .line 3
    iget-boolean p1, p0, Lr0/i;->d:Z

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0}, Lr0/i;->m()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lr0/i;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
