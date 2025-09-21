.class final Le7/q$b;
.super Lkotlin/jvm/internal/m;
.source "Produce.kt"

# interfaces
.implements Lu6/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le7/q;->a(Le7/s;Lu6/a;Ln6/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/m;",
        "Lu6/l<",
        "Ljava/lang/Throwable;",
        "Lk6/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc7/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc7/k<",
            "Lk6/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc7/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc7/k<",
            "-",
            "Lk6/q;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le7/q$b;->a:Lc7/k;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Le7/q$b;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lk6/q;->a:Lk6/q;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    iget-object p0, p0, Le7/q$b;->a:Lc7/k;

    sget-object p1, Lk6/k;->a:Lk6/k$a;

    sget-object p1, Lk6/q;->a:Lk6/q;

    invoke-static {p1}, Lk6/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ln6/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
