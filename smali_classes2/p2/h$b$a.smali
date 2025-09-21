.class Lp2/h$b$a;
.super Lp2/h$d;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp2/h$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp2/h<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lp2/h$b;


# direct methods
.method constructor <init>(Lp2/h$b;)V
    .locals 0

    iput-object p1, p0, Lp2/h$b$a;->f:Lp2/h$b;

    iget-object p1, p1, Lp2/h$b;->a:Lp2/h;

    invoke-direct {p0, p1}, Lp2/h$d;-><init>(Lp2/h;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lp2/h$d;->a()Lp2/h$e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lp2/h$b$a;->b()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
