.class Le7/a$a;
.super Le7/t;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Le7/t<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final d:Lc7/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc7/k<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:I


# direct methods
.method public constructor <init>(Lc7/k;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc7/k<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le7/t;-><init>()V

    .line 2
    iput-object p1, p0, Le7/a$a;->d:Lc7/k;

    .line 3
    iput p2, p0, Le7/a$a;->f:I

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object p0, p0, Le7/a$a;->d:Lc7/k;

    sget-object p1, Lc7/m;->a:Lkotlinx/coroutines/internal/a0;

    invoke-interface {p0, p1}, Lc7/k;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/internal/o$b;",
            ")",
            "Lkotlinx/coroutines/internal/a0;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le7/a$a;->d:Lc7/k;

    invoke-virtual {p0, p1}, Le7/a$a;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Le7/t;->w(Ljava/lang/Object;)Lu6/l;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p2, v0, p1, p0}, Lc7/k;->l(Ljava/lang/Object;Ljava/lang/Object;Lu6/l;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p0, Lc7/m;->a:Lkotlinx/coroutines/internal/a0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiveElement@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lc7/k0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[receiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Le7/a$a;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x(Le7/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le7/l<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Le7/a$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Le7/a$a;->d:Lc7/k;

    .line 2
    sget-object v0, Le7/i;->b:Le7/i$b;

    iget-object p1, p1, Le7/l;->d:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Le7/i$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Le7/i;->b(Ljava/lang/Object;)Le7/i;

    move-result-object p1

    .line 3
    sget-object v0, Lk6/k;->a:Lk6/k$a;

    invoke-static {p1}, Lk6/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ln6/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Le7/a$a;->d:Lc7/k;

    sget-object v0, Lk6/k;->a:Lk6/k$a;

    invoke-virtual {p1}, Le7/l;->C()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lk6/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lk6/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ln6/d;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget p0, p0, Le7/a$a;->f:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Le7/i;->b:Le7/i$b;

    invoke-virtual {p0, p1}, Le7/i$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Le7/i;->b(Ljava/lang/Object;)Le7/i;

    move-result-object p1

    :cond_0
    return-object p1
.end method
