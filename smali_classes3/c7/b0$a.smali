.class final Lc7/b0$a;
.super Lkotlin/jvm/internal/m;
.source "CoroutineContext.kt"

# interfaces
.implements Lu6/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/b0;->a(Ln6/g;Ln6/g;Z)Ln6/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/m;",
        "Lu6/p<",
        "Ln6/g;",
        "Ln6/g$b;",
        "Ln6/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc7/b0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc7/b0$a;

    invoke-direct {v0}, Lc7/b0$a;-><init>()V

    sput-object v0, Lc7/b0$a;->a:Lc7/b0$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ln6/g;Ln6/g$b;)Ln6/g;
    .locals 0

    .line 1
    instance-of p0, p2, Lc7/a0;

    if-eqz p0, :cond_0

    .line 2
    check-cast p2, Lc7/a0;

    invoke-interface {p2}, Lc7/a0;->p()Lc7/a0;

    move-result-object p0

    invoke-interface {p1, p0}, Ln6/g;->plus(Ln6/g;)Ln6/g;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p1, p2}, Ln6/g;->plus(Ln6/g;)Ln6/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ln6/g;

    check-cast p2, Ln6/g$b;

    invoke-virtual {p0, p1, p2}, Lc7/b0$a;->a(Ln6/g;Ln6/g$b;)Ln6/g;

    move-result-object p0

    return-object p0
.end method
