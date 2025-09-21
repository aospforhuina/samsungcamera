.class Lp2/h$c$a;
.super Lp2/h$d;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp2/h$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp2/h<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lp2/h$c;


# direct methods
.method constructor <init>(Lp2/h$c;)V
    .locals 0

    iput-object p1, p0, Lp2/h$c$a;->f:Lp2/h$c;

    iget-object p1, p1, Lp2/h$c;->a:Lp2/h;

    invoke-direct {p0, p1}, Lp2/h$d;-><init>(Lp2/h;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lp2/h$d;->a()Lp2/h$e;

    move-result-object p0

    iget-object p0, p0, Lp2/h$e;->g:Ljava/lang/Object;

    return-object p0
.end method
