.class public final Lq2/h;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Ln2/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq2/h$a;
    }
.end annotation


# instance fields
.field private final a:Lp2/c;

.field final b:Z


# direct methods
.method public constructor <init>(Lp2/c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq2/h;->a:Lp2/c;

    .line 3
    iput-boolean p2, p0, Lq2/h;->b:Z

    return-void
.end method

.method private b(Ln2/e;Ljava/lang/reflect/Type;)Ln2/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/e;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ln2/w<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, p0, :cond_1

    const-class p0, Ljava/lang/Boolean;

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/google/gson/reflect/a;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/a;

    move-result-object p0

    invoke-virtual {p1, p0}, Ln2/e;->k(Lcom/google/gson/reflect/a;)Ln2/w;

    move-result-object p0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    sget-object p0, Lq2/n;->f:Ln2/w;

    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(Ln2/e;Lcom/google/gson/reflect/a;)Ln2/w;
    .locals 11
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
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-static {v0}, Lp2/b;->k(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lp2/b;->j(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Lq2/h;->b(Ln2/e;Ljava/lang/reflect/Type;)Ln2/w;

    move-result-object v7

    const/4 v2, 0x1

    .line 7
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/gson/reflect/a;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/a;

    move-result-object v3

    invoke-virtual {p1, v3}, Ln2/e;->k(Lcom/google/gson/reflect/a;)Ln2/w;

    move-result-object v9

    .line 8
    iget-object v3, p0, Lq2/h;->a:Lp2/c;

    invoke-virtual {v3, p2}, Lp2/c;->a(Lcom/google/gson/reflect/a;)Lp2/i;

    move-result-object v10

    .line 9
    new-instance p2, Lq2/h$a;

    aget-object v6, v0, v1

    aget-object v8, v0, v2

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lq2/h$a;-><init>(Lq2/h;Ln2/e;Ljava/lang/reflect/Type;Ln2/w;Ljava/lang/reflect/Type;Ln2/w;Lp2/i;)V

    return-object p2
.end method
