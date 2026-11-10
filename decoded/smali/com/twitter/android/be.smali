.class final Lcom/twitter/android/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# instance fields
.field private synthetic a:Lcom/twitter/android/PostActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/PostActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/be;->a:Lcom/twitter/android/PostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/PostActivity;Lcom/twitter/android/dm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/be;-><init>(Lcom/twitter/android/PostActivity;)V

    return-void
.end method


# virtual methods
.method public final findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    move v0, v1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 3

    const/16 v2, 0x20

    move v0, p2

    :goto_0
    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p2, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :goto_2
    return v0

    :cond_2
    move v0, p2

    goto :goto_2
.end method

.method public final terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    const/4 v2, 0x0

    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v1, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    move v6, v2

    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    iget-object v1, p0, Lcom/twitter/android/be;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v1, v2}, Lcom/twitter/android/PostActivity;->b(Z)V

    move-object v1, v5

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/be;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v1, v2}, Lcom/twitter/android/PostActivity;->b(Z)V

    move-object v1, p1

    goto :goto_0
.end method
