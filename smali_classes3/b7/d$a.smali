.class public final Lb7/d$a;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lv6/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb7/d;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ly6/d;",
        ">;",
        "Lv6/a;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ly6/d;

.field private f:I

.field final synthetic g:Lb7/d;


# direct methods
.method constructor <init>(Lb7/d;)V
    .locals 2

    iput-object p1, p0, Lb7/d$a;->g:Lb7/d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lb7/d$a;->a:I

    .line 3
    invoke-static {p1}, Lb7/d;->d(Lb7/d;)I

    move-result v0

    invoke-static {p1}, Lb7/d;->b(Lb7/d;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ly6/e;->e(III)I

    move-result p1

    iput p1, p0, Lb7/d$a;->b:I

    .line 4
    iput p1, p0, Lb7/d$a;->c:I

    return-void
.end method

.method private final b()V
    .locals 6

    .line 1
    iget v0, p0, Lb7/d$a;->c:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2
    iput v1, p0, Lb7/d$a;->a:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb7/d$a;->d:Ly6/d;

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lb7/d$a;->g:Lb7/d;

    invoke-static {v0}, Lb7/d;->c(Lb7/d;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lb7/d$a;->f:I

    add-int/2addr v0, v3

    iput v0, p0, Lb7/d$a;->f:I

    iget-object v4, p0, Lb7/d$a;->g:Lb7/d;

    invoke-static {v4}, Lb7/d;->c(Lb7/d;)I

    move-result v4

    if-ge v0, v4, :cond_2

    :cond_1
    iget v0, p0, Lb7/d$a;->c:I

    iget-object v4, p0, Lb7/d$a;->g:Lb7/d;

    invoke-static {v4}, Lb7/d;->b(Lb7/d;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    .line 5
    :cond_2
    new-instance v0, Ly6/d;

    iget v1, p0, Lb7/d$a;->b:I

    iget-object v4, p0, Lb7/d$a;->g:Lb7/d;

    invoke-static {v4}, Lb7/d;->b(Lb7/d;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lb7/o;->p(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v0, v1, v4}, Ly6/d;-><init>(II)V

    iput-object v0, p0, Lb7/d$a;->d:Ly6/d;

    .line 6
    iput v2, p0, Lb7/d$a;->c:I

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lb7/d$a;->g:Lb7/d;

    invoke-static {v0}, Lb7/d;->a(Lb7/d;)Lu6/p;

    move-result-object v0

    iget-object v4, p0, Lb7/d$a;->g:Lb7/d;

    invoke-static {v4}, Lb7/d;->b(Lb7/d;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lb7/d$a;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lu6/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk6/j;

    if-nez v0, :cond_4

    .line 8
    new-instance v0, Ly6/d;

    iget v1, p0, Lb7/d$a;->b:I

    iget-object v4, p0, Lb7/d$a;->g:Lb7/d;

    invoke-static {v4}, Lb7/d;->b(Lb7/d;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lb7/o;->p(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v0, v1, v4}, Ly6/d;-><init>(II)V

    iput-object v0, p0, Lb7/d$a;->d:Ly6/d;

    .line 9
    iput v2, p0, Lb7/d$a;->c:I

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {v0}, Lk6/j;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lk6/j;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 11
    iget v4, p0, Lb7/d$a;->b:I

    invoke-static {v4, v2}, Ly6/e;->h(II)Ly6/d;

    move-result-object v4

    iput-object v4, p0, Lb7/d$a;->d:Ly6/d;

    add-int/2addr v2, v0

    .line 12
    iput v2, p0, Lb7/d$a;->b:I

    if-nez v0, :cond_5

    move v1, v3

    :cond_5
    add-int/2addr v2, v1

    .line 13
    iput v2, p0, Lb7/d$a;->c:I

    .line 14
    :goto_0
    iput v3, p0, Lb7/d$a;->a:I

    :goto_1
    return-void
.end method


# virtual methods
.method public c()Ly6/d;
    .locals 3

    .line 1
    iget v0, p0, Lb7/d$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lb7/d$a;->b()V

    .line 3
    :cond_0
    iget v0, p0, Lb7/d$a;->a:I

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lb7/d$a;->d:Ly6/d;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lb7/d$a;->d:Ly6/d;

    .line 6
    iput v1, p0, Lb7/d$a;->a:I

    return-object v0

    .line 7
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lb7/d$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lb7/d$a;->b()V

    .line 3
    :cond_0
    iget p0, p0, Lb7/d$a;->a:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lb7/d$a;->c()Ly6/d;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
