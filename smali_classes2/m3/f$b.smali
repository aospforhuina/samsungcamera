.class final Lm3/f$b;
.super Landroid/os/AsyncTask;
.source "VisionTextActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm3/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/view/textclassifier/TextClassification;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/lang/String;

.field private final c:I

.field private final d:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/textclassifier/TextClassification;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/textclassifier/TextClassification;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;ILjava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/view/textclassifier/TextClassification;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/textclassifier/TextClassification;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lm3/f$b;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lm3/f$b;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lm3/f$b;->c:I

    .line 5
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Ljava/util/function/Supplier;

    iput-object p4, p0, Lm3/f$b;->d:Ljava/util/function/Supplier;

    .line 6
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p5, Ljava/util/function/Consumer;

    iput-object p5, p0, Lm3/f$b;->e:Ljava/util/function/Consumer;

    .line 7
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p6, Ljava/util/function/Consumer;

    iput-object p6, p0, Lm3/f$b;->f:Ljava/util/function/Consumer;

    return-void
.end method

.method public static synthetic a(Lm3/f$b;)V
    .locals 0

    invoke-direct {p0}, Lm3/f$b;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    invoke-static {}, Lm3/f;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timeout in TextClassificationAsyncTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3
    iget-object p0, p0, Lm3/f$b;->f:Ljava/util/function/Consumer;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs b([Ljava/lang/Void;)Landroid/view/textclassifier/TextClassification;
    .locals 3

    .line 1
    new-instance p1, Lm3/g;

    invoke-direct {p1, p0}, Lm3/g;-><init>(Lm3/f$b;)V

    .line 2
    iget-object v0, p0, Lm3/f$b;->a:Landroid/view/View;

    iget v1, p0, Lm3/f$b;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    :try_start_0
    iget-object v0, p0, Lm3/f$b;->d:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassification;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {}, Lm3/f;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextClassificationAsyncTask failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object p0, p0, Lm3/f$b;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method protected c(Landroid/view/textclassifier/TextClassification;)V
    .locals 0

    iget-object p0, p0, Lm3/f$b;->e:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lm3/f$b;->b([Ljava/lang/Void;)Landroid/view/textclassifier/TextClassification;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/textclassifier/TextClassification;

    invoke-virtual {p0, p1}, Lm3/f$b;->c(Landroid/view/textclassifier/TextClassification;)V

    return-void
.end method
