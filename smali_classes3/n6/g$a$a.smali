.class final Ln6/g$a$a;
.super Lkotlin/jvm/internal/m;
.source "CoroutineContext.kt"

# interfaces
.implements Lu6/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln6/g$a;->a(Ln6/g;Ln6/g;)Ln6/g;
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
.field public static final a:Ln6/g$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln6/g$a$a;

    invoke-direct {v0}, Ln6/g$a$a;-><init>()V

    sput-object v0, Ln6/g$a$a;->a:Ln6/g$a$a;

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
    .locals 2

    const-string p0, "acc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Ln6/g$b;->getKey()Ln6/g$c;

    move-result-object p0

    invoke-interface {p1, p0}, Ln6/g;->minusKey(Ln6/g$c;)Ln6/g;

    move-result-object p0

    .line 2
    sget-object p1, Ln6/h;->a:Ln6/h;

    if-ne p0, p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v0, Ln6/e;->j:Ln6/e$b;

    invoke-interface {p0, v0}, Ln6/g;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object v1

    check-cast v1, Ln6/e;

    if-nez v1, :cond_1

    .line 4
    new-instance p1, Ln6/c;

    invoke-direct {p1, p0, p2}, Ln6/c;-><init>(Ln6/g;Ln6/g$b;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p0, v0}, Ln6/g;->minusKey(Ln6/g$c;)Ln6/g;

    move-result-object p0

    if-ne p0, p1, :cond_2

    .line 6
    new-instance p0, Ln6/c;

    invoke-direct {p0, p2, v1}, Ln6/c;-><init>(Ln6/g;Ln6/g$b;)V

    move-object p2, p0

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Ln6/c;

    new-instance v0, Ln6/c;

    invoke-direct {v0, p0, p2}, Ln6/c;-><init>(Ln6/g;Ln6/g$b;)V

    invoke-direct {p1, v0, v1}, Ln6/c;-><init>(Ln6/g;Ln6/g$b;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ln6/g;

    check-cast p2, Ln6/g$b;

    invoke-virtual {p0, p1, p2}, Ln6/g$a$a;->a(Ln6/g;Ln6/g$b;)Ln6/g;

    move-result-object p0

    return-object p0
.end method
