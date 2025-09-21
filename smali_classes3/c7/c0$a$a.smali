.class final Lc7/c0$a$a;
.super Lkotlin/jvm/internal/m;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Lu6/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/c0$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/m;",
        "Lu6/l<",
        "Ln6/g$b;",
        "Lc7/c0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc7/c0$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc7/c0$a$a;

    invoke-direct {v0}, Lc7/c0$a$a;-><init>()V

    sput-object v0, Lc7/c0$a$a;->a:Lc7/c0$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ln6/g$b;)Lc7/c0;
    .locals 0

    instance-of p0, p1, Lc7/c0;

    if-eqz p0, :cond_0

    check-cast p1, Lc7/c0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ln6/g$b;

    invoke-virtual {p0, p1}, Lc7/c0$a$a;->a(Ln6/g$b;)Lc7/c0;

    move-result-object p0

    return-object p0
.end method
