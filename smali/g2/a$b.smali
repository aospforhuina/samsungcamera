.class final Lg2/a$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "RippleDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:Li2/g;

.field b:Z


# direct methods
.method public constructor <init>(Lg2/a$b;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 5
    iget-object v0, p1, Lg2/a$b;->a:Li2/g;

    invoke-virtual {v0}, Li2/g;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Li2/g;

    iput-object v0, p0, Lg2/a$b;->a:Li2/g;

    .line 6
    iget-boolean p1, p1, Lg2/a$b;->b:Z

    iput-boolean p1, p0, Lg2/a$b;->b:Z

    return-void
.end method

.method public constructor <init>(Li2/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    iput-object p1, p0, Lg2/a$b;->a:Li2/g;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lg2/a$b;->b:Z

    return-void
.end method


# virtual methods
.method public a()Lg2/a;
    .locals 2

    new-instance v0, Lg2/a;

    new-instance v1, Lg2/a$b;

    invoke-direct {v1, p0}, Lg2/a$b;-><init>(Lg2/a$b;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lg2/a;-><init>(Lg2/a$b;Lg2/a$a;)V

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Lg2/a$b;->a()Lg2/a;

    move-result-object p0

    return-object p0
.end method
