.class public final synthetic Lm3/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lm3/f;


# direct methods
.method public synthetic constructor <init>(Lm3/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/e;->a:Lm3/f;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lm3/e;->a:Lm3/f;

    invoke-static {p0}, Lm3/f;->b(Lm3/f;)Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0
.end method
