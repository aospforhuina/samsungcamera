.class public final synthetic Lm3/b;
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

    iput-object p1, p0, Lm3/b;->a:Lm3/f;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lm3/b;->a:Lm3/f;

    check-cast p1, Landroid/view/textclassifier/TextClassification;

    invoke-static {p0, p1}, Lm3/f;->c(Lm3/f;Landroid/view/textclassifier/TextClassification;)V

    return-void
.end method
