.class Lp2/c$i;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lp2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp2/c;->a(Lcom/google/gson/reflect/a;)Lp2/i;
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
.field final synthetic a:Ln2/g;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lp2/c;


# direct methods
.method constructor <init>(Lp2/c;Ln2/g;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lp2/c$i;->c:Lp2/c;

    iput-object p2, p0, Lp2/c$i;->a:Ln2/g;

    iput-object p3, p0, Lp2/c$i;->b:Ljava/lang/reflect/Type;

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

    iget-object v0, p0, Lp2/c$i;->a:Ln2/g;

    iget-object p0, p0, Lp2/c$i;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, p0}, Ln2/g;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
