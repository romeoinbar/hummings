<?
$data[] = array('volume' => 67, 'edition' => 2);
$data[] = array('volume' => 86, 'edition' => 1);
$data[] = array('volume' => 85, 'edition' => 6);
$data[] = array('volume' => 98, 'edition' => 2);
$data[] = array('volume' => 86, 'edition' => 6);
$data[] = array('volume' => 67, 'edition' => 7);
// Obtain a list of columns
foreach ($data as $key => $row) {
    $volume[$key]  = $row['volume'];
    $edition[$key] = $row['edition'];
}

// Sort the data with volume descending, edition ascending
// Add $data as the last parameter, to sort by the common key
array_multisort($volume, SORT_DESC, $data);
print_r($data);
?>