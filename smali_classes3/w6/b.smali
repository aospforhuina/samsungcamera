.class public final Lw6/b;
.super Lw6/a;
.source "PlatformRandom.kt"


# instance fields
.field private final c:Lw6/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lw6/a;-><init>()V

    .line 2
    new-instance v0, Lw6/b$a;

    invoke-direct {v0}, Lw6/b$a;-><init>()V

    iput-object v0, p0, Lw6/b;->c:Lw6/b$a;

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Random;
    .locals 1

    iget-object p0, p0, Lw6/b;->c:Lw6/b$a;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "implStorage.get()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Random;

    return-object p0
.end method
