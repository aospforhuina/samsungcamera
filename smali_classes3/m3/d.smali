.class public final synthetic Lm3/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lm3/f$c;


# direct methods
.method public synthetic constructor <init>(Lm3/f$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/d;->a:Lm3/f$c;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lm3/d;->a:Lm3/f$c;

    invoke-virtual {p0}, Lm3/f$c;->a()Landroid/view/textclassifier/TextClassification;

    move-result-object p0

    return-object p0
.end method
