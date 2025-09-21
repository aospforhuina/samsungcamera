.class final Le7/a$b;
.super Le7/a$a;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Le7/a$a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final g:Lu6/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/l<",
            "TE;",
            "Lk6/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc7/k;ILu6/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc7/k<",
            "Ljava/lang/Object;",
            ">;I",
            "Lu6/l<",
            "-TE;",
            "Lk6/q;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Le7/a$a;-><init>(Lc7/k;I)V

    .line 2
    iput-object p3, p0, Le7/a$b;->g:Lu6/l;

    return-void
.end method


# virtual methods
.method public w(Ljava/lang/Object;)Lu6/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lu6/l<",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le7/a$b;->g:Lu6/l;

    iget-object p0, p0, Le7/a$a;->d:Lc7/k;

    invoke-interface {p0}, Ln6/d;->getContext()Ln6/g;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lkotlinx/coroutines/internal/v;->a(Lu6/l;Ljava/lang/Object;Ln6/g;)Lu6/l;

    move-result-object p0

    return-object p0
.end method
