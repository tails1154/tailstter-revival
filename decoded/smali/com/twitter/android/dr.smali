.class final Lcom/twitter/android/dr;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:[Lcom/twitter/android/dn;


# direct methods
.method constructor <init>([Lcom/twitter/android/dn;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/dr;->a:[Lcom/twitter/android/dn;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/dr;->a:[Lcom/twitter/android/dn;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/dr;->a:[Lcom/twitter/android/dn;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/twitter/android/dn;->c:Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/en;

    invoke-direct {v1, v0}, Lcom/twitter/android/en;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    iget-object v2, p0, Lcom/twitter/android/dr;->a:[Lcom/twitter/android/dn;

    aget-object v2, v2, p1

    iget-object v3, v0, Lcom/twitter/android/en;->a:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/twitter/android/dn;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, v2, Lcom/twitter/android/dn;->b:I

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/twitter/android/en;->c:Landroid/widget/ImageView;

    iget v2, v2, Lcom/twitter/android/dn;->b:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/en;

    move-object v1, p2

    goto :goto_0
.end method
