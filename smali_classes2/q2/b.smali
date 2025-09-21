.class public final Lq2/b;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Ln2/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq2/b$a;
    }
.end annotation


# instance fields
.field private final a:Lp2/c;


# direct methods
.method public constructor <init>(Lp2/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq2/b;->a:Lp2/c;

    return-void
.end method


# virtual methods
.method public a(Ln2/e;Lcom/google/gson/reflect/a;)Ln2/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln2/e;",
            "Lcom/google/gson/reflect/a<",
            "TT;>;)",
            "Ln2/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/gson/reflect/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/google/gson/reflect/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 3
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-static {v0, v1}, Lp2/b;->h(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/gson/reflect/a;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Ln2/e;->k(Lcom/google/gson/reflect/a;)Ln2/w;

    move-result-object v1

    .line 6
    iget-object p0, p0, Lq2/b;->a:Lp2/c;

    invoke-virtual {p0, p2}, Lp2/c;->a(Lcom/google/gson/reflect/a;)Lp2/i;

    move-result-object p0

    .line 7
    new-instance p2, Lq2/b$a;

    invoke-direct {p2, p1, v0, v1, p0}, Lq2/b$a;-><init>(Ln2/e;Ljava/lang/reflect/Type;Ln2/w;Lp2/i;)V

    return-object p2
.end method
