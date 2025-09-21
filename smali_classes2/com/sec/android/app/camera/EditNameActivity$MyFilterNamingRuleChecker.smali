.class Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;
.super Ljava/lang/Object;
.source "EditNameActivity.java"

# interfaces
.implements Landroid/text/InputFilter;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/EditNameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyFilterNamingRuleChecker"
.end annotation


# static fields
.field private static final BAD_CHARACTERS_FOR_FILENAME:[Ljava/lang/CharSequence;


# instance fields
.field private final MAX_TEXT_LENGTH:I

.field private mBadCharacterTried:Z

.field private mBeforeText:Ljava/lang/String;

.field private final mEditText:Landroid/widget/EditText;

.field private mIsMaxTextLength:Z

.field private final mRenameButton:Landroid/widget/Button;

.field private final mTextInputError:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "|"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\""

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->BAD_CHARACTERS_FOR_FILENAME:[Ljava/lang/CharSequence;

    return-void
.end method

.method constructor <init>(ILandroid/widget/TextView;Landroid/widget/Button;Landroid/widget/EditText;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mBadCharacterTried:Z

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->MAX_TEXT_LENGTH:I

    .line 4
    iput-object p2, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mTextInputError:Landroid/widget/TextView;

    .line 5
    iput-object p3, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mRenameButton:Landroid/widget/Button;

    .line 6
    iput-object p4, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mEditText:Landroid/widget/EditText;

    return-void
.end method

.method private declared-synchronized getResources()Landroid/content/res/Resources;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mTextInputError:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isBadCharacterContainedIn(Ljava/lang/CharSequence;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->BAD_CHARACTERS_FOR_FILENAME:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/camera/g2;

    invoke-direct {v1, p1}, Lcom/sec/android/app/camera/g2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mBadCharacterTried:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mBadCharacterTried:Z

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mTextInputError:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120403

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mRenameButton:Landroid/widget/Button;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 7
    iget-object v3, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mRenameButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mRenameButton:Landroid/widget/Button;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 9
    iget-object v3, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mRenameButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mTextInputError:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120404

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x9

    if-le v0, v3, :cond_3

    .line 12
    iput-boolean v2, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mIsMaxTextLength:Z

    .line 13
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mBeforeText:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 15
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mTextInputError:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100001

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mTextInputError:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/TextUtil;->getStringWidth(Ljava/lang/String;F)F

    move-result p1

    .line 18
    invoke-direct {p0}, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-double v1, p1

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 21
    iget-object p1, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p2, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mIsMaxTextLength:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mIsMaxTextLength:Z

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mBeforeText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->isBadCharacterContainedIn(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->mBadCharacterTried:Z

    .line 4
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 5
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/sec/android/app/camera/EditNameActivity$MyFilterNamingRuleChecker;->MAX_TEXT_LENGTH:I

    add-int/2addr v0, v1

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    sub-int v2, p6, p5

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-gtz v0, :cond_2

    if-ne p3, p2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_2
    sub-int/2addr p3, p2

    if-lt v0, p3, :cond_3

    .line 7
    monitor-exit p0

    return-object v1

    :cond_3
    add-int/2addr v0, p2

    add-int/lit8 p3, v0, -0x1

    .line 8
    :try_start_2
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    .line 9
    invoke-static {p3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_4

    const/16 p4, 0x262a

    if-eq p3, p4, :cond_4

    const/16 p4, 0x271d

    if-ne p3, p4, :cond_5

    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-ne v0, p2, :cond_5

    const-string p1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    monitor-exit p0

    return-object p1

    .line 11
    :cond_5
    :try_start_3
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
