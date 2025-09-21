.class public final synthetic Lm3/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lm3/f;


# direct methods
.method public synthetic constructor <init>(Lm3/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/c;->a:Lm3/f;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lm3/c;->a:Lm3/f;

    invoke-static {p0, p1}, Lm3/f;->d(Lm3/f;Ljava/lang/Object;)V

    return-void
.end method
