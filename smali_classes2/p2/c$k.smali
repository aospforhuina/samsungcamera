.class Lp2/c$k;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lp2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp2/c;->b(Ljava/lang/Class;)Lp2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp2/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lp2/c;


# direct methods
.method constructor <init>(Lp2/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lp2/c$k;->b:Lp2/c;

    iput-object p2, p0, Lp2/c$k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ln2/l;

    iget-object p0, p0, Lp2/c$k;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Ln2/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method
