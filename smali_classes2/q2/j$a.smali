.class Lq2/j$a;
.super Ljava/lang/Object;
.source "ObjectTypeAdapter.java"

# interfaces
.implements Ln2/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq2/j;->f(Ln2/v;)Ln2/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ln2/v;


# direct methods
.method constructor <init>(Ln2/v;)V
    .locals 0

    iput-object p1, p0, Lq2/j$a;->a:Ln2/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln2/e;Lcom/google/gson/reflect/a;)Ln2/w;
    .locals 2
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
    invoke-virtual {p2}, Lcom/google/gson/reflect/a;->getRawType()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p2, Lq2/j;

    iget-object p0, p0, Lq2/j$a;->a:Ln2/v;

    invoke-direct {p2, p1, p0, v1}, Lq2/j;-><init>(Ln2/e;Ln2/v;Lq2/j$a;)V

    return-object p2

    :cond_0
    return-object v1
.end method
