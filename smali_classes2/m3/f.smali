.class public Lm3/f;
.super Ljava/lang/Object;
.source "VisionTextActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm3/f$c;,
        Lm3/f$b;,
        Lm3/f$a;
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/String; = "m3.f"

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:I


# instance fields
.field a:Lm3/w;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Landroid/view/ActionMode;

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroid/graphics/Rect;

.field i:Landroid/graphics/Rect;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Landroid/view/textclassifier/TextClassifier;

.field private m:Lm3/f$c;

.field private n:Landroid/os/AsyncTask;

.field private o:Landroid/view/textclassifier/TextClassification;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lm3/w;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lm3/f;->b:I

    .line 3
    iput v0, p0, Lm3/f;->c:I

    .line 4
    iput v0, p0, Lm3/f;->d:I

    .line 5
    iput v0, p0, Lm3/f;->e:I

    .line 6
    iput-boolean v0, p0, Lm3/f;->j:Z

    .line 7
    iput-object p1, p0, Lm3/f;->a:Lm3/w;

    .line 8
    invoke-virtual {p0}, Lm3/f;->z()V

    .line 9
    new-instance p1, Lm3/f$c;

    iget-object v0, p0, Lm3/f;->a:Lm3/w;

    invoke-virtual {v0}, Lm3/w;->i0()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lm3/e;

    invoke-direct {v1, p0}, Lm3/e;-><init>(Lm3/f;)V

    const-string v2, ""

    invoke-direct {p1, v0, v1, v2}, Lm3/f$c;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lm3/f;->m:Lm3/f$c;

    return-void
.end method

.method private A(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 3

    .line 1
    iget-object v0, p0, Lm3/f;->a:Lm3/w;

    invoke-virtual {v0}, Lm3/w;->s0()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Lm3/f;->a:Lm3/w;

    invoke-virtual {v2}, Lm3/w;->s0()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v2, p0, Lm3/f;->a:Lm3/w;

    invoke-virtual {v2}, Lm3/w;->s0()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 4
    :catch_0
    sget-object p0, Lm3/f;->p:Ljava/lang/String;

    const-string/jumbo p1, "startActionMode exception"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 5
    :catch_1
    iget-object p0, p0, Lm3/f;->a:Lm3/w;

    invoke-virtual {p0}, Lm3/w;->s0()Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private C(Landroid/view/textclassifier/TextClassification;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, v0}, Lm3/f;->x(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lm3/f;->o:Landroid/view/textclassifier/TextClassification;

    .line 3
    new-instance p1, Lm3/f$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lm3/f$a;-><init>(Lm3/f;I)V

    const/16 v0, 0x63

    invoke-direct {p0, p1, v0}, Lm3/f;->A(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lm3/f;->f:Landroid/view/ActionMode;

    return-void
.end method

.method public static synthetic a(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lm3/f;->u(Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lm3/f;)Landroid/view/textclassifier/TextClassifier;
    .locals 0

    invoke-direct {p0}, Lm3/f;->s()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lm3/f;Landroid/view/textclassifier/TextClassification;)V
    .locals 0

    invoke-direct {p0, p1}, Lm3/f;->C(Landroid/view/textclassifier/TextClassification;)V

    return-void
.end method

.method public static synthetic d(Lm3/f;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lm3/f;->w(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lm3/f;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lm3/f;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lm3/f;Landroid/content/ClipData;)Z
    .locals 0

    invoke-direct {p0, p1}, Lm3/f;->y(Landroid/content/ClipData;)Z

    move-result p0

    return p0
.end method

.method static synthetic h()I
    .locals 1

    sget v0, Lm3/f;->t:I

    return v0
.end method

.method static synthetic i(Lm3/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lm3/f;->j:Z

    return p1
.end method

.method static synthetic j(Lm3/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lm3/f;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic k(Lm3/f;)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0}, Lm3/f;->v()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lm3/f;)Landroid/view/textclassifier/TextClassification;
    .locals 0

    iget-object p0, p0, Lm3/f;->o:Landroid/view/textclassifier/TextClassification;

    return-object p0
.end method

.method static synthetic m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lm3/f;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;
    .locals 0

    invoke-static {p0}, Lm3/f;->r(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lm3/f;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lm3/f;->s:Ljava/lang/String;

    return-object v0
.end method

.method private q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm3/f;->n:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3
    iput-object v1, p0, Lm3/f;->n:Landroid/os/AsyncTask;

    .line 4
    :cond_0
    iput-object v1, p0, Lm3/f;->o:Landroid/view/textclassifier/TextClassification;

    return-void
.end method

.method private static r(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lm3/a;

    invoke-direct {v0, p0}, Lm3/a;-><init>(Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method private s()Landroid/view/textclassifier/TextClassifier;
    .locals 4

    .line 1
    iget-object v0, p0, Lm3/f;->l:Landroid/view/textclassifier/TextClassifier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lm3/f;->a:Lm3/w;

    .line 3
    invoke-virtual {v0}, Lm3/w;->i0()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Landroid/view/textclassifier/TextClassificationContext$Builder;

    iget-object v2, p0, Lm3/f;->a:Lm3/w;

    .line 5
    invoke-virtual {v2}, Lm3/w;->i0()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "textview"

    invoke-direct {v1, v2, v3}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassificationManager;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    iput-object v0, p0, Lm3/f;->l:Landroid/view/textclassifier/TextClassifier;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lm3/f;->p:Ljava/lang/String;

    const-string v1, "getTextClassificationSession - NO_OP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    iput-object v0, p0, Lm3/f;->l:Landroid/view/textclassifier/TextClassifier;

    .line 10
    :cond_2
    :goto_0
    iget-object p0, p0, Lm3/f;->l:Landroid/view/textclassifier/TextClassifier;

    return-object p0
.end method

.method private t(Landroid/graphics/Rect;)Z
    .locals 6

    .line 1
    sget-object v0, Lm3/f;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "win = Left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lm3/f;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " /Top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lm3/f;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " /Right:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lm3/f;->d:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " /bottom:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lm3/f;->e:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle = Left:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lm3/f;->d:I

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lm3/f;->b:I

    if-lt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lm3/f;->c:I

    if-lt v0, v1, :cond_1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget p0, p0, Lm3/f;->e:I

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic u(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    sget-object p1, Lm3/f;->p:Ljava/lang/String;

    const-string v0, "Error sending PendingIntent"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private v()Landroid/content/Intent;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lm3/f;->j:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm3/f;->k:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lm3/f;->a:Lm3/w;

    invoke-virtual {p0}, Lm3/w;->Y()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "text/plain"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private w(Ljava/lang/Object;)V
    .locals 1

    const-string p1, ""

    .line 1
    invoke-direct {p0, p1}, Lm3/f;->x(Ljava/lang/String;)V

    .line 2
    new-instance p1, Lm3/f$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lm3/f$a;-><init>(Lm3/f;I)V

    const/16 v0, 0x63

    invoke-direct {p0, p1, v0}, Lm3/f;->A(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lm3/f;->f:Landroid/view/ActionMode;

    return-void
.end method

.method private x(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lm3/f;->m:Lm3/f$c;

    new-instance v1, Lm3/e;

    invoke-direct {v1, p0}, Lm3/e;-><init>(Lm3/f;)V

    invoke-virtual {v0, v1, p1}, Lm3/f$c;->d(Ljava/util/function/Supplier;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private y(Landroid/content/ClipData;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lm3/f;->a:Lm3/w;

    invoke-virtual {p0}, Lm3/w;->i0()Landroid/content/Context;

    move-result-object p0

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method B(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm3/f;->f:Landroid/view/ActionMode;

    if-nez v0, :cond_2

    .line 2
    invoke-direct {p0, p1}, Lm3/f;->t(Landroid/graphics/Rect;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3
    invoke-direct {p0, p2}, Lm3/f;->t(Landroid/graphics/Rect;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 4
    sget-object v2, Lm3/f;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startHandle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " / endHandle:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lm3/f;->h:Landroid/graphics/Rect;

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lm3/f;->i:Landroid/graphics/Rect;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lm3/f;->g:Ljava/util/ArrayList;

    const-string p1, ""

    if-nez p5, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    move-object p2, p5

    .line 8
    :goto_0
    sput-object p2, Lm3/f;->r:Ljava/lang/String;

    if-nez p6, :cond_1

    move-object p6, p1

    .line 9
    :cond_1
    sput-object p6, Lm3/f;->s:Ljava/lang/String;

    .line 10
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    sput p1, Lm3/f;->t:I

    .line 11
    invoke-virtual {p0, p4}, Lm3/f;->D(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lm3/f;->m:Lm3/f$c;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lm3/f$c;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lm3/f;->p:Ljava/lang/String;

    const-string/jumbo p1, "startTextClassificationAsync - Same Text"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lm3/f;->q()V

    .line 6
    invoke-direct {p0, p1}, Lm3/f;->x(Ljava/lang/String;)V

    .line 7
    new-instance v7, Lm3/f$b;

    iget-object v0, p0, Lm3/f;->a:Lm3/w;

    .line 8
    invoke-virtual {v0}, Lm3/w;->s0()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lm3/f;->m:Lm3/f$c;

    .line 9
    invoke-virtual {v0}, Lm3/f$c;->c()I

    move-result v3

    iget-object v0, p0, Lm3/f;->m:Lm3/f$c;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lm3/d;

    invoke-direct {v4, v0}, Lm3/d;-><init>(Lm3/f$c;)V

    new-instance v5, Lm3/b;

    invoke-direct {v5, p0}, Lm3/b;-><init>(Lm3/f;)V

    new-instance v6, Lm3/c;

    invoke-direct {v6, p0}, Lm3/c;-><init>(Lm3/f;)V

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lm3/f$b;-><init>(Landroid/view/View;Ljava/lang/String;ILjava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 11
    invoke-virtual {v7, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lm3/f;->n:Landroid/os/AsyncTask;

    return-void

    .line 12
    :cond_2
    :goto_0
    sget-object p0, Lm3/f;->p:Ljava/lang/String;

    const-string/jumbo p1, "startTextClassificationAsync - Null or Empty"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm3/f;->f:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lm3/f;->f:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm3/f;->a:Lm3/w;

    .line 2
    invoke-virtual {v0}, Lm3/w;->i0()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lm3/f;->d:I

    .line 5
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lm3/f;->e:I

    .line 6
    sget-object v0, Lm3/f;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lm3/f;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " /Top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lm3/f;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " /Right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lm3/f;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " /bottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lm3/f;->e:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
