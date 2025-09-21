.class Lq2/n$w;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Ln2/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq2/n;->a(Lcom/google/gson/reflect/a;Ln2/w;)Ln2/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/reflect/a;

.field final synthetic b:Ln2/w;


# direct methods
.method constructor <init>(Lcom/google/gson/reflect/a;Ln2/w;)V
    .locals 0

    iput-object p1, p0, Lq2/n$w;->a:Lcom/google/gson/reflect/a;

    iput-object p2, p0, Lq2/n$w;->b:Ln2/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln2/e;Lcom/google/gson/reflect/a;)Ln2/w;
    .locals 0
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

    iget-object p1, p0, Lq2/n$w;->a:Lcom/google/gson/reflect/a;

    invoke-virtual {p2, p1}, Lcom/google/gson/reflect/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lq2/n$w;->b:Ln2/w;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
