.class Lp2/c$o;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lp2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp2/c;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lp2/i;
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
.field final synthetic a:Lp2/c;


# direct methods
.method constructor <init>(Lp2/c;)V
    .locals 0

    iput-object p1, p0, Lp2/c$o;->a:Lp2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method
