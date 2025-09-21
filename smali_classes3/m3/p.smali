.class public final synthetic Lm3/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lm3/w;


# direct methods
.method public synthetic constructor <init>(Lm3/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/p;->a:Lm3/w;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lm3/p;->a:Lm3/w;

    check-cast p1, Lm3/w$c;

    invoke-static {p0, p1}, Lm3/w;->k(Lm3/w;Lm3/w$c;)V

    return-void
.end method
